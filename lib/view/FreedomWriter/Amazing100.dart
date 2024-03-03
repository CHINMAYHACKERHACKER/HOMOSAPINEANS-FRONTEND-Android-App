import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/custom_appbar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class Amazing100 extends StatefulWidget {
  const Amazing100({super.key});

  @override
  State<Amazing100> createState() => _Amazing100State();
}

class _Amazing100State extends State<Amazing100> {

  List<String> topics = [
    "Artificial Intelligence ",
    "Automotive and Motorbikes ",
    "Science Fiction ",
    "History ",
    "Health and Wellness ",
    "Environmental Issues ",
    "Technology and Gadgets ",
    "Space Exploration ",
    "Psychology and Mental Health ",
    "Social Media and Internet Culture ",
    "Education and Learning ",
    "Philosophy ",
    "Travel and Adventure ",
    "Sports and Fitness ",
    "Fashion and Style ",
    "Food and Cooking ",
    "Music and Entertainment ",
    "Art and Creativity ",
    "Politics and Current Events ",
    "Business and Entrepreneurship ",
    "Personal Development and Self-Improvement ",
    "Relationships and Dating ",
    "Parenting and Family ",
    "Religion and Spirituality ",
    "Literature and Books",
    "Film and Cinema",
    "Science and Technology",
    "Architecture and Design",
    "Pop Culture and Trends",
    "Social Issues and Activism",
    "Sustainability and Conservation",
    "Mythology and Folklore",
    "Gaming and Esports",
    "Philosophy of Science",
    "Economics and Finance",
    "Anthropology and Cultural Studies",
    "Law and Legal Issues",
    "Journalism and Media",
    "Astronomy and Astrophysics",
    // Add more topics as needed
  ];


  @override
  Widget build(BuildContext context) {
    return  Material(
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
                    'E = Amazing 100 Topics',
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
          child: ListView.builder(itemCount:topics.length,
              itemBuilder: (context,i){
            return Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: ListTile(
                title: Center(child: Text(topics[i],style: TextStyle(fontSize: 15),)),
                trailing: IconButton(onPressed: (){},
                icon: Icon(Icons.pending_actions_sharp,),),
              ),
            );
          })
        ),
      ),
    );
  }
}
