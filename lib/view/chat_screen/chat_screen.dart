import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/chat_screen/chat_settings.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Text('Adhmi'),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.call_outlined,
                size: 20,
              ),
              TextWidget(
                name: 'call',
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          AppSize.kWidth20,     
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.video_call,
                size: 20,
              ),
              TextWidget(
                name: 'Video Call',
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
            ],
          ),
          AppSize.kWidth20,
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChatSettings()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.settings_outlined,
                  size: 20,
                ),
                TextWidget(
                  name: 'Settings',
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          AppSize.kWidth20,
        ],
      ),
      body: Column(
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(
              'https://staticimg.spicyonion.com/images/profile/person/unni-mukundan/7Pn9GASysyTG6ZnPhsuRq4ESArC.jpg',
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                final isSender = index % 2 == 0;
                return Container(
                  padding: const EdgeInsets.only(
                      left: 14, right: 14, top: 10, bottom: 10),
                  child: Align(
                    alignment:
                        (isSender ? Alignment.topLeft : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(15),
                            bottomRight: isSender
                                ? const Radius.circular(15)
                                : Radius.zero,
                            topRight: const Radius.circular(15),
                            bottomLeft: isSender
                                ? Radius.zero
                                : const Radius.circular(15),
                          ),
                          color: (isSender
                              ? Color.fromARGB(255, 55, 64, 68)
                              : Color.fromARGB(255, 210, 89, 221))),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 5,
                      ),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.end,
                        children: [
                          (isSender
                              ? const SizedBox(
                                  child: Text(
                                    'Hai',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                )
                              : const SizedBox(
                                  child: Text(
                                    'Hello',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                )),
                          AppSize.kWidth10,
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Icon(
                                  Icons.more_horiz,
                                  color: AppColors.kWhite,
                                ),
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.end,
                                  children: const [
                                    Icon(
                                      Icons.done_all_sharp,
                                      color: Color.fromARGB(255, 14, 199, 54),
                                      size: 12,
                                    ),
                                    AppSize.kWidth5,
                                    Text(
                                      '5.22 Pm',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ])
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9))),
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 220,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(Icons.close)),
                                ),
                                // Row(
                                //   mainAxisAlignment:
                                //       MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     AppSize.kWidth30,
                                //     IconButton(
                                //       onPressed: () => Navigator.pop(context),
                                //       icon: const Icon(Icons.close),
                                //     ),
                                //     AppSize.kWidth20,
                                //   ],
                                // ),
                                Wrap(
                                  children: const [
                                    CustomIconwidget(
                                      text: 'Attachment',
                                      iconses: Icon(Icons.attachment_rounded),
                                    ),
                                    CustomIconwidget(
                                      text: 'Camera',
                                      iconses: Icon(Icons.camera_alt_outlined),
                                    ),
                                    CustomIconwidget(
                                      text: 'Video',
                                      iconses: Icon(Icons.videocam_outlined),
                                    ),
                                    CustomIconwidget(
                                      text: 'Gallery',
                                      iconses: Icon(Icons.image_outlined),
                                    ),
                                    CustomIconwidget(
                                      text: 'Audio',
                                      iconses: Icon(Icons.audiotrack_rounded),
                                    ),
                                    CustomIconwidget(
                                      text: 'Contact',
                                      iconses:
                                          Icon(Icons.contact_page_outlined),
                                    ),
                                    CustomIconwidget(
                                      text: 'Location',
                                      iconses: Icon(Icons.location_on_outlined),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.add_circle_outline_rounded)),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      fillColor: AppColors.kGrey,
                      filled: true,
                      hintText: 'Write a message..',
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12)),
                      suffixIcon: InkWell(
                          onTap: () {},
                          onLongPress: () {
                            showModalBottomSheet<void>(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9))),
                                context: context,
                                builder: (BuildContext context) {
                                  return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                          height: 190,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                const Text('Schedule time'),
                                                ListTile(
                                                  leading: const Text('Date'),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(Icons
                                                          .calendar_today_sharp)),
                                                ),
                                                ListTile(
                                                  leading: const Text('Time'),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(Icons
                                                          .access_time_filled_sharp)),
                                                ),
                                                ElevatedButton(
                                                    onPressed: () {},
                                                    child: const Text('Ok'))
                                              ])));
                                });
                          },
                          child: const Icon(Icons.send_rounded)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 245, 209, 206),
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.mic_none_rounded)),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomIconwidget extends StatelessWidget {
  final String text;

  final Icon iconses;
  const CustomIconwidget({
    super.key,
    required this.text,
    required this.iconses,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.black.withOpacity(0.4),
            child: IconButton(
                color: Colors.white, onPressed: () {}, icon: iconses),
          ),
          Text(
            text,
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
