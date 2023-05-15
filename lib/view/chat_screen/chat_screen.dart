import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('widget.username'),
        // backgroundColor: ColorConstrants.text,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     // Handle navigation manually
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //             builder: (context) => RecentChat(
        //                   currentid: value.userdata!.id,
        //                 )));
        //     // Navigator.pop(context);
        //   },
        // ),
      ),
      body: Column(
        children: [
          // Container(
          //   margin: const EdgeInsets.all(5),
          //   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          //   decoration: const BoxDecoration(
          //       borderRadius: BorderRadius.only(
          //     bottomLeft: Radius.circular(8),
          //     bottomRight: Radius.circular(8),
          //     topLeft: Radius.circular(8),
          //     topRight: Radius.circular(8),
          //   )),
          //   child: const Text(
          //     '',
          //     style: TextStyle(
          //       fontSize: 15,
          //     ),
          //   ),
          // ),

          // value2.isLoading == true
          //     ? const Expanded(
          //         child: Center(child: CircularProgressIndicator()))
          //     : value2.chatlist.isEmpty
          //         ?
          // const Expanded(
          //     child: Center(
          //       child: Text("No Conversation happend Till Now"),
          //     ),
          //   )
          // :
          Expanded(
            child: ListView.builder(
              // controller: _scrollController,
              // shrinkWrap: true,
              // physics: const ScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    // value2.chatlist[index].sender !=
                    //         value.userdata?.id
                    index % 2 == 0
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                                Flexible(
                                  child: Container(
                                    margin: const EdgeInsets.all(5),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 0),
                                    decoration: const BoxDecoration(
                                        color: Color(0xff2b9224),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        )),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.more_horiz,
                                                color: AppColors.kWhite,
                                              )),
                                        ),
                                        Text(
                                          'Hai Homo what happend ',
                                          style: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.done_sharp,
                                              color: Colors.white,
                                              size: 12,
                                            ),
                                            AppSize.kWidth5,
                                            Text(
                                              '5.22 Pm ',
                                              style: const TextStyle(
                                                  fontSize: 8,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 80,
                                ),
                              ])
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SizedBox(
                                width: 80,
                              ),
                              Flexible(
                                child: Container(
                                  margin: const EdgeInsets.all(5),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 10),
                                  decoration: const BoxDecoration(
                                      color: Color(0xff3f51b5),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                        topLeft: Radius.circular(15),
                                      )),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.more_horiz,
                                              color: AppColors.kWhite,
                                            )),
                                      ),
                                      Text(
                                        'Hai Homo ',
                                        style: const TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.done_all_sharp,
                                            color: Colors.blue,
                                            size: 12,
                                          ),
                                          AppSize.kWidth5,
                                          Text(
                                            '5.22 Pm ',
                                            style: const TextStyle(
                                                fontSize: 8,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                  ],
                );
              },
            ),
          ),

          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    // controller: value2.messageController,
                    decoration: InputDecoration(
                      // prefixIcon: IconButton(
                      //   onPressed: () {
                      //     log(widget.id);
                      //   },
                      //   icon: const Icon(Icons.emoji_emotions_outlined),
                      // ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      hintText: 'Type your message',
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 245, 209, 206),
                          ),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
              // const SizedBox(width: 10),
              // isloading == false
              //     ? IconButton(
              //         onPressed: () async {
              //           // startConversation()async
              //           if (value2.messageController.text.isEmpty) {
              //             ScaffoldMessenger.of(context)
              //                 .showSnackBar(const SnackBar(
              //               content:
              //                   Text("Write Something to send The Message!"),
              //               duration: Duration(seconds: 1),
              //               backgroundColor: ColorConstrants.text,
              //             ));
              //             return;
              //           } else {
              //             setState(() {
              //               isloading = true;
              //             });
              //             log(value.userdata!.id.toString());
              //             Dio dio = Dio();
              //             var send = await dio.post(
              //                 ApiBaseUrl().baseUrl +
              //                     ApiEndpoints.conversation,
              //                 data: {
              //                   "sender": value.userdata!.id,
              //                   "reciever": widget.id,
              //                   "text": value2.messageController.text
              //                 });
              //             setState(() {
              //               value2.chatlist.add(ChatListModel(
              //                 messageId: send.data['messageId'],
              //                 sender: value.userdata!.id,
              //                 text: value2.messageController.text,
              //                 createdAt: DateTime.now(),
              //               ));
              //               isloading = true;
              //               // _scrollController
              //               //     .jumpTo(_scrollController.position.maxScrollExtent);
              //               value2.messageController.clear();
              //             });

              //             log(send.data.toString());
              //             _scrollDown();
              //           }
              //           setState(() {
              //             isloading = false;
              //           });
              //         },
              //         icon: const Icon(Icons.send_rounded),
              //       )
              //     : Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: CircularProgressIndicator(),
              //       )
            ],
          ),
        ],
      ),
    );
  }
}
