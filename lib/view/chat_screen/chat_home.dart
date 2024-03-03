import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/chat_screen/chat_screen.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

class ChathomeScreen extends StatelessWidget {
  const ChathomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Stack(
              children: [
                const Text(
                  'E = TexTism',
                  style: TextStyle(fontSize: 25),
                ),
                Positioned(
                  right: 2,
                  bottom: 16,
                  child: TextWidget(
                    name: "∞",
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings_outlined),
              ),
            ],
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: TabBar(
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorPadding: EdgeInsets.all(1),
                  padding: EdgeInsets.only(right: 15),
                  isScrollable: true,
                  tabs: [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Tab(
                        child: Text('Messages'),
                      ),
                    ),
                    // Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Tab(
                        child: Text("Who's Online"),
                      ),
                    ),
                    // Spacer(),
                    Tab(
                      child: Text('My HomoSapiens'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: const TabBarView(
            children: [RecentChatlist(), OnlineFriendlist(), MyHomoChatlist()],
          )),
    );
  }
}

class RecentChatlist extends StatelessWidget {
  const RecentChatlist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppSize.kHeight10,
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              padding: const EdgeInsets.all(2),
              itemBuilder: (ctx, i) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    onTap: () => Navigator.push(
                        ctx,
                        MaterialPageRoute(
                            builder: (ctx) => const ChatScreen())),
                    // tileColor: const Color.fromARGB(255, 105, 102, 94)
                    //     .withOpacity(0.2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: NetworkImage(
                              'https://images.filmibeat.com/images/1/14484327/14484327-320_download(1).jpg',
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: const Text(
                      'Aadhmi',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('6 new Messages'),
                    // trailing: const Icon(
                    //   Icons.circle,
                    //   size: 11,
                    //   color: AppColors.kGreen,
                    // ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyHomoChatlist extends StatelessWidget {
  const MyHomoChatlist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.groups_2_outlined),
            title: Text('Create New Group'),
            subtitle: Divider(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, i) {
                return ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: NetworkImage(
                            'https://images.filmibeat.com/images/1/14484327/14484327-320_download(1).jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  title: const Text(
                    'Aadhmi',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('6 new Messages'),
                  trailing: IconButton(
                    // color: AppColors.kGreen,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      // size: 11,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OnlineFriendlist extends StatelessWidget {
  const OnlineFriendlist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppSize.kHeight10,
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, i) {
                return ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: NetworkImage(
                            'https://images.filmibeat.com/images/1/14484327/14484327-320_download(1).jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  title: const Text(
                    'Aadhmi',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text('6 new Messages'),
                  trailing: const Icon(
                    Icons.circle,
                    color: AppColors.kGreen,
                    size: 11,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
