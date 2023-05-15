import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homo_sapiens/controller/theme_controller.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/view/home_screen/bottom_navbar.dart';
import 'package:homo_sapiens/view/home_screen/home_screen.dart';
import 'package:homo_sapiens/view/login_screen/login_screen.dart';
import 'package:homo_sapiens/view/signup_screen/signup_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final brightness = MediaQuery.of(context).platformBrightness;

    // Provider.of<ThemeModeProvider>(context).dark == true
    //     ? SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //         systemNavigationBarColor: Colors.red,
    //         statusBarColor: Colors.white,
    //         statusBarBrightness: Brightness.dark,
    //         systemNavigationBarIconBrightness: Brightness.dark,
    //       ))
    //     : SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //         systemNavigationBarColor: Colors.yellow,
    //         statusBarColor: Colors.white,
    //         statusBarBrightness: Brightness.light,
    //         systemNavigationBarIconBrightness: Brightness.light,
    //       ));
    // final isDarkMode =
    //     MediaQuery.of(context).platformBrightness == Brightness.dark;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      // themeMode: ThemeMode.system,
      theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      home: BotomNavigationBar(),
    );
  }
}

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      // scaffoldBackgroundColor: Colors.white,
      cardColor: AppColors.kLightGrey,
      colorScheme: const ColorScheme.light(),
      // useMaterial3: true,
      primarySwatch: Colors.amber,
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(AppColors.kBlack.withOpacity(0.6)),
          foregroundColor: const MaterialStatePropertyAll(AppColors.kWhite),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStatePropertyAll(AppColors.kBlack.withOpacity(0.6)),
          foregroundColor: const MaterialStatePropertyAll(AppColors.kWhite),
        ),
      ),
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white, foregroundColor: Colors.black),
      typography: Typography(black: Typography.blackCupertino));

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.kBaseColor,
    primarySwatch: Colors.amber,
    cardColor: AppColors.kLightGrey,
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(AppColors.kWhite.withOpacity(0.6)),
        foregroundColor: const MaterialStatePropertyAll(AppColors.kBlack),
      ),
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Color(0xff28293d)),
        foregroundColor: MaterialStatePropertyAll(AppColors.kWhite),
      ),
    ),
    // useMaterial3: true,
    fontFamily: 'Ysabeau',
    colorScheme: const ColorScheme.dark(),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
    ),
  );
}

class ChatPage extends StatefulWidget {
  final String username;
  final String room;

  ChatPage({required this.username, required this.room});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late IO.Socket socket;
  TextEditingController messageController = TextEditingController();
  List<String> messages = [];

  @override
  void initState() {
    super.initState();

    // Connect to Socket.io server
    socket = IO.io('http://localhost:8900', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    // Join chat room
    socket.onConnect((_) {
      socket.emit('addUser', widget.username);
      socket.emit('joinRoom', widget.room);
    });

    // Receive messages from server
    socket.on('getMessage', (data) {
      setState(() {
        messages.add(data['sender'] + ": " + data['text']);
      });
    });

    socket.connect();
  }

  @override
  void dispose() {
    socket.disconnect();
    super.dispose();
  }

  void sendMessage() {
    String messageText = messageController.text.trim();
    if (messageText.isNotEmpty) {
      socket.emit('sendMessage', {
        'sender': widget.username,
        'room': widget.room,
        'text': messageText,
      });
      setState(() {
        messages.add(widget.username + ": " + messageText);
      });
      messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.room),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 70,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: const InputDecoration(
                      hintText: 'Type your message',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: sendMessage,
                  child: const Text('Send'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
