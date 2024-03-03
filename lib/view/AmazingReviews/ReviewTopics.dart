import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homo_sapiens/widgets/custom_appbar.dart';


class AmazingReview extends StatefulWidget {
  const AmazingReview({super.key});

  @override
  State<AmazingReview> createState() => _AmazingReviewState();
}

class _AmazingReviewState extends State<AmazingReview> {

  List<String> topics = [
    "Artificial Intelligence quotes",
    "Automotive and Motorbikes quotes",
    "Science Fiction quotes",
    "History quotes",
    "Health and Wellness quotes",
    "Environmental Issues quotes",
    "Technology and Gadgets quotes",
    "Space Exploration quotes",
    "Psychology and Mental Health quotes",
    "Social Media and Internet Culture quotes",
    "Education and Learning quotes",
    "Philosophy quotes",
    "Travel and Adventure quotes",
    "Sports and Fitness quotes",
    "Fashion and Style quotes",
    "Food and Cooking quotes",
    "Music and Entertainment quotes",
    "Art and Creativity quotes",
    "Politics and Current Events quotes",
    "Business and Entrepreneurship quotes",
    "Personal Development and Self-Improvement quotes",
    "Relationships and Dating quotes",
    "Parenting and Family quotes",
    "Religion and Spirituality quotes",
    "Literature and Books quotes",
    "Film and Cinema quotes",
    "Science and Technology quotes",
    "Architecture and Design quotes",
    "Pop Culture and Trends quotes",
    "Social Issues and Activism quotes",
    "Sustainability and Conservation quotes",
    "Mythology and Folklore quotes",
    "Gaming and Esports quotes",
    "Philosophy of Science quotes",
    "Economics and Finance quotes",
    "Anthropology and Cultural Studies quotes",
    "Law and Legal Issues quotes",
    "Journalism and Media quotes",
    "Astronomy and Astrophysics quotes",
    // Add more topics as needed
  ];

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Scaffold(
        appBar:  AppBar(
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
                    'E = Amazing Reviews',
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
          child: ListView.builder(itemCount: topics.length,itemBuilder: (context,i){
            return ListTile(
              title: Text(topics[i]),
              trailing: IconButton(onPressed: (){

              }, icon: Icon(Icons.pending_actions_sharp)),
            );
          }),
        ),
      ),
    );
  }
}
