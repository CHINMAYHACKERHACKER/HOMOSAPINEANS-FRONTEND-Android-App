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
            children: [
              Icon(
                Icons.call_outlined,
                size: 20,
              ),
              TextWidget(
                name: 'call',
                fontSize: 10,
              ),
            ],
          ),
          AppSize.kWidth10,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.video_call,
                size: 20,
              ),
              TextWidget(
                name: 'Video Call',
                fontSize: 10,
              ),
            ],
          ),
          AppSize.kWidth10,
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatSettings()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.settings_outlined,
                  size: 20,
                ),
                TextWidget(
                  name: 'Settings',
                  fontSize: 10,
                ),
              ],
            ),
          ),
          AppSize.kWidth10,
        ],
      ),
      body: Column(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://staticimg.spicyonion.com/images/profile/person/unni-mukundan/7Pn9GASysyTG6ZnPhsuRq4ESArC.jpg',
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                final isSender = index % 2 == 0;
                return Container(
                  padding:
                      EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                  child: Align(
                    alignment:
                        (isSender ? Alignment.topLeft : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight:
                                isSender ? Radius.circular(15) : Radius.zero,
                            topRight: Radius.circular(15),
                            bottomLeft:
                                isSender ? Radius.zero : Radius.circular(15),
                          ),
                          color: (isSender
                              ? const Color(0xff2b9224)
                              : const Color(0xff3f51b5))),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 5,
                      ),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.end,
                        children: [
                          SizedBox(
                            child: Text(
                              'a Now,dfdfkmdkfm dfdkfndknfkd dkfndknfkdf fkdnfkdnfkndf dknfdknfdk dknfkdnfkd dfndkfnkdnfkn',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
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
                                  children: [
                                    const Icon(
                                      Icons.done_all_sharp,
                                      color: Colors.blue,
                                      size: 12,
                                    ),
                                    AppSize.kWidth5,
                                    const Text(
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
                            height: 170,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
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
                                  children: [
                                    CustomIconwidget(
                                      text: 'Attachment',
                                      Iconses: Icon(Icons.attachment_rounded),
                                    ),
                                    CustomIconwidget(
                                      text: 'Camera',
                                      Iconses: Icon(Icons.camera_alt_outlined),
                                    ),
                                    CustomIconwidget(
                                      text: 'Video',
                                      Iconses: Icon(Icons.videocam_outlined),
                                    ),
                                    CustomIconwidget(
                                      text: 'Gallery',
                                      Iconses: Icon(Icons.image_outlined),
                                    ),
                                    CustomIconwidget(
                                      text: 'Audio',
                                      Iconses: Icon(Icons.audiotrack_rounded),
                                    ),
                                    CustomIconwidget(
                                      text: 'Contact',
                                      Iconses:
                                          Icon(Icons.contact_page_outlined),
                                    ),
                                    CustomIconwidget(
                                      text: 'Location',
                                      Iconses: Icon(Icons.location_on_outlined),
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
                  icon: Icon(Icons.add_circle_outline_rounded)),
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
                                                Text('Schedule time'),
                                                ListTile(
                                                  leading: Text('Date'),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .calendar_today_sharp)),
                                                ),
                                                ListTile(
                                                  leading: Text('Time'),
                                                  trailing: IconButton(
                                                      onPressed: () {},
                                                      icon: Icon(Icons
                                                          .access_time_filled_sharp)),
                                                ),
                                                ElevatedButton(
                                                    onPressed: () {},
                                                    child: Text('Ok'))
                                              ])));
                                });
                          },
                          child: Icon(Icons.send_rounded)),
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
              IconButton(onPressed: () {}, icon: Icon(Icons.mic_none_rounded)),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomIconwidget extends StatelessWidget {
  final String text;

  final Icon Iconses;
  const CustomIconwidget({
    super.key,
    required this.text,
    required this.Iconses,
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
                color: Colors.white, onPressed: () {}, icon: Iconses),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
