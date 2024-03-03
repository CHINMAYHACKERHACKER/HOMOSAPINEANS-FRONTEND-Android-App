import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homo_sapiens/view/FreedomWriter/writer.dart';
import 'package:readmore/readmore.dart';

import '../../widgets/custom_appbar.dart';



class AmazingReviewScreen extends StatefulWidget {
  const AmazingReviewScreen({super.key});

  @override
  State<AmazingReviewScreen> createState() => _AmazingReviewScreenState();
}

class _AmazingReviewScreenState extends State<AmazingReviewScreen> {
  List profilePick = [
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300',
    'https://picsum.photos/200/300'
  ];
  List ProfileName = ['Guru Prasad', 'Jack Danial', 'Jack Danial'];
  List Postion = ['Developer', 'graphic Designer', 'graphic Designer'];
  List content = [
    'Story OF New York',
    'Sharpness in the mind',
    'Sharpness in the mind'
  ];
  List Creted = [
    'jan 9, 2023, 500 Views, 5 min read',
    'jan 9, 2023, 500 Views, 5 min read',
    'jan 9, 2023, 500 Views, 5 min read'
  ];

  List lovers = ['499', '499', '499'];
  List amazing = ['787', '787', '787'];
  List outstanding = ['786678', '786678', '786678'];
  List dislike = ['786', '786', '786'];
  List comments = ['76', '76', '76'];
  List dis = [
    'Once upon a time, in the vibrant and bustling city of New York, life unfolded in a magnificent tapestry of dreams, ambition, and diversity. It was a city like no other, where towering skyscrapers reached for the heavens, and the streets hummed with the rhythm of countless footsteps. In the heart of this concrete jungle, people from all walks of life converged. The air buzzed with excitement, as artists, musicians, and writers sought inspiration from the city boundless energy. Each neighborhood had its unique flavor, from the glitz and glamour of Times Square to the bohemian spirit of Greenwich Village.As the sun rose over the iconic skyline, the city came alive. Yellow taxis zipped through the streets, while the subway carried thousands on their daily journeys. Street vendors offered tantalizing aromas of hot dogs and pretzels, while elegant restaurants showcased culinary delights from around the world. Central Park, a verdant oasis amidst the towering buildings, provided solace for weary souls. People strolled along its winding paths, picnicked on the lawns, and admired the colorful blooms in the Conservatory Garden. The parks lakes and ponds welcomed rowboats and eager anglers, providing a respite from the citys frenetic pace.The citys cultural scene was an exquisite kaleidoscope. The Metropolitan Museum of Art showcased priceless masterpieces, while Broadway theaters dazzled audiences with world-class performances. Jazz clubs in Harlem echoed with soulful melodies, and poetry readings in cozy cafes sparked intellectual conversations late into the night.',
    // 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'
  ];

  var  isReviewAvail = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        // floatingActionButton: FloatingActionButton(onPressed: (){},
        // child: Container(
        //   width: MediaQuery.of(context).size.width,
        //   height: 100,
        //   color: Colors.green,
        // ),),
        // floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked ,

          bottomSheet: isReviewAvail == true ?  Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.green,
        ):SizedBox(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: 220,
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
                    'E = Amazing Reviews ',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500,
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
                                  builder: (context) => AmazingReviewDetailed(
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
                            Text(ProfileName[i],style: TextStyle(fontSize: 20),),
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
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                content[i],
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Text(
                              Creted[i],
                              style: TextStyle(fontSize: 8),
                            ),

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Text("Rated :",style: TextStyle(fontSize: 10),),
                                Text("Amazing",style: TextStyle(fontSize: 10,color: Colors.amber),),
                                RatingBar.builder(
                                itemSize: 10,
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 4,
                              glow: true,

                              itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,


                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                              ),]
                            )
                          ],
                        ),
                        leading: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: CircleAvatar(

                            maxRadius: 20,
                            backgroundImage: NetworkImage(profilePick[i]),
                          ),
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







class AmazingReviewDetailed extends StatefulWidget {
  AmazingReviewDetailed(
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
  State<AmazingReviewDetailed> createState() => _AmazingReviewDetailedState();

}

class _AmazingReviewDetailedState extends State<AmazingReviewDetailed> {
  List<IconData> icons = [
    Icons.favorite,
    Icons.star,
    Icons.workspace_premium_rounded,
    Icons.handshake,
    Icons.comment
  ];
  List<String> buttons = [
    'Lovely',
    'Amazing',
    'Outstaning',
    'Dislike',
    'Comment',
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
                    'E = Amazing Writers',
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'How is This Stroy?',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Color(0xff008080)),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '${widget.lovers} Lovely',
                        style: TextStyle(fontSize: 13),
                      ),
                      Text('${widget.amazing} Amazing,',
                          style: TextStyle(fontSize: 13)),
                      Text('${widget.outstanding} Outstanding',
                          style: TextStyle(fontSize: 13)),
                      Text('${widget.dislike} Dislike',
                          style: TextStyle(fontSize: 10, color: Colors.grey)),
                      Text('${widget.comments} Comments',
                          style: TextStyle(fontSize: 10, color: Colors.grey))
                    ],
                  ),
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
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) =>
                            //             FreedomWriterWriter()));
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
