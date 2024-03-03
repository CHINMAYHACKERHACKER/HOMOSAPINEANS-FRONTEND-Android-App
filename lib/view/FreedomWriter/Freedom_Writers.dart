import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homo_sapiens/view/FreedomWriter/writer.dart';
import 'package:readmore/readmore.dart';

import '../../widgets/custom_appbar.dart';
import 'AddCoverPage.dart';

// ignore: depend_on_referenced_packages
class FreedomWritersScreen extends StatefulWidget {
  const FreedomWritersScreen({super.key});

  @override
  State<FreedomWritersScreen> createState() => _FreedomWritersState();
}

class _FreedomWritersState extends State<FreedomWritersScreen> {
  List profilePick = [
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300'
  ];
  List ProfileName = ['Jack Danial', 'Jack Danial', 'Jack Danial'];
  List Postion = ['graphic Designer', 'graphic Designer', 'graphic Designer'];
  List content = [
    'Sharpness in the mind',
    'Sharpness in the mind',
    'Sharpness in the mind'
  ];
  List Creted = [
    'jan 9, 2023, 500 Views',
    'jan 9, 2023, 500 Views',
    'jan 9, 2023, 500 Views'
  ];

  List lovers = ['499', '499', '499'];
  List amazing = ['787', '787', '787'];
  List outstanding = ['786678', '786678', '786678'];
  List dislike = ['786', '786', '786'];
  List comments = ['76', '76', '76'];
  List dis = [
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: 220,
          // leading: Builder(
          //   builder: (context) => IconButton(
          //     icon: SvgPicture.asset(
          //       'assets/images/Group 383.svg',
          //       height: 27,
          //     ),
          //     onPressed: () => Scaffold.of(context).openDrawer(),
          //   ),
          // ),
          actions: const [
            CustomAppbar(),
          ],
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Builder(
                builder: (context) => IconButton(
                    icon: SvgPicture.asset(
                      'assets/images/Group 493.svg',
                      height: 27,
                    ),
                    onPressed: () {}
                    // => Scaffold.of(context).openDrawer(),
                    ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: const [
                  Text(
                    'E = Freedom Writers',
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Positioned(
                    right: 2,
                    bottom: 16,
                    child:  Text(
                      "∞",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              // const Spacer(),
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: profilePick.length,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FreedonWritersDeatiled(
                                      profilePick: profilePick[i],
                                      ProfileName: ProfileName[i],
                                      Creted: Creted[i],
                                      Postion: Postion[i],
                                      amazing: amazing[i],
                                      comments: comments[i],
                                      content: content[i],
                                      dislike: dislike[i],
                                      lovers: lovers[i],
                                      outstanding: outstanding[i],
                                      dis: dis[i])));
                        },
                        title: Row(
                          children: [
                            Text(ProfileName[i]),
                            SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/images/Group 493.svg',
                              height: 15,
                            ),
                          ],
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(Postion[i]),
                            Text(
                              content[i],
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              Creted[i],
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        leading: CircleAvatar(
                          maxRadius: 20,
                          backgroundImage: NetworkImage(profilePick[i]),
                        ),
                        isThreeLine: true,
                        trailing: Container(
                            width: 100,
                            height: 100,
                            child: Image.network(
                              profilePick[i],
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    Divider()
                  ],
                );
              }),
        ),
      ),
    );
  }
}

//Freedom Writers Deatiled Screen 'Down'

class FreedonWritersDeatiled extends StatefulWidget {
  FreedonWritersDeatiled(
      {super.key,
      required this.profilePick,
      required this.ProfileName,
      required this.Postion,
      required this.content,
      required this.Creted,
      required this.lovers,
      required this.amazing,
      required this.outstanding,
      required this.dislike,
      required this.dis,
      required this.comments});

  String profilePick;
  String ProfileName;
  String Postion;
  String content;
  String Creted;
  String lovers;
  String amazing;
  String outstanding;
  String dislike;
  String comments;
  String dis;

  @override
  State<FreedonWritersDeatiled> createState() => _FreedonWritersDeatiledState();
}

class _FreedonWritersDeatiledState extends State<FreedonWritersDeatiled> {
  List<IconData> icons = [
    Icons.favorite,
    Icons.star,
    Icons.workspace_premium_rounded,
    Icons.handshake,
    Icons.comment,
    Icons.share,
  ];
  List<String> buttons = [
    'Lovely',
    'Amazing',
    'Outstaning',
    'Dislike',
    'Comment',
    'Share'
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Center(
            child: Icon(Icons.arrow_back),
          ),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: 220,
          // leading: Builder(
          //   builder: (context) => IconButton(
          //     icon: SvgPicture.asset(
          //       'assets/images/Group 383.svg',
          //       height: 27,
          //     ),
          //     onPressed: () => Scaffold.of(context).openDrawer(),
          //   ),
          // ),
          actions:  [
            CustomAppbar(),
            Icon(Icons.share)
          ],
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Builder(
                builder: (context) => IconButton(
                    icon: SvgPicture.asset(
                      'assets/images/Group 493.svg',
                      height: 27,
                    ),
                    onPressed: () {}
                    // => Scaffold.of(context).openDrawer(),
                    ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: const [
                  Text(
                    'E = Freedom Writers',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Positioned(
                    right: 2,
                    bottom: 16,
                    child: Text(
                       "∞",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              // const Spacer(),
            ],
          ),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(widget.profilePick),
                      maxRadius: 20,
                    ),
                    title: Text(widget.ProfileName),
                    subtitle: Text(widget.Creted),
                    trailing: SvgPicture.asset(
                      'assets/images/Group 493.svg',
                      height: 27,
                    ),
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     Text(
                  //       '${widget.lovers} Lovers',
                  //       style: TextStyle(fontSize: 13),
                  //     ),
                  //     Text('${widget.amazing} Amazing,',
                  //         style: TextStyle(fontSize: 13)),
                  //     Text('${widget.outstanding} Outstanding',
                  //         style: TextStyle(fontSize: 13)),
                  //     Text('${widget.dislike} Dislike',
                  //         style: TextStyle(fontSize: 10, color: Colors.grey)),
                  //     Text('${widget.comments} Comments',
                  //         style: TextStyle(fontSize: 10, color: Colors.grey))
                  //   ],
                  // ),
                  Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, i) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AddCoverPage()));
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color(0xff28282B),
                                borderRadius: BorderRadius.circular(10)),
                            width: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(icons[i]),
                                Text(
                                  buttons[i],
                                  style: TextStyle(fontSize: 10),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.content,
                    style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Image.network(
                      widget.profilePick,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ReadMoreText(
                    '${widget.dis}',
                    trimLines: 10,
                    colorClickableText: Colors.pink,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )),
      ),
    );
  }
}

/* Container(
                  margin: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // border: Border.all(width: 0, color: Colors.black)
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(profilePick[i]),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ProfileName[i],
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    Postion[i],
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  // Image.network(profilePick[i])
                                ],
                              ),
                              SvgPicture.asset(
                                'assets/images/Group 493.svg',
                                height: 15,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2.5,
                              ),
                              // Image.network(
                              //   profilePick[i],
                              //   width: 50,
                              //   height: 50,
                              // ),
                              Icon(
                                Icons.miscellaneous_services_rounded,
                                size: 20,
                              )
                            ],
                          ),
                          // color: Colors.green,
                        ),
                        Text(
                          content[i],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Text(Creted[i]),
                      ]),
                );*/

