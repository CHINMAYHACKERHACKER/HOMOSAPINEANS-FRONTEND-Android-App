import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/personal_profile/widgets/profile_details.dart';

class Menuwidgets extends StatelessWidget {
  const Menuwidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.topCenter,
      fit: StackFit.loose,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(top: 60),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Positioned(
          top: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: [
                AppSize.kHeight10,
                CircleAvatar(
                  radius: 40,
                  backgroundColor: AppColors.kWhite,
                  child: Icon(
                    Icons.person,
                    color: AppColors.kGrey,
                    size: 50,
                  ),
                ),
                const Text(
                  'E = Account Page',
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 22,
                  ),
                ),
                AppSize.kHeight20,
                Container(
                  // height: 495,
                  width: 290,
                  decoration: BoxDecoration(
                      color: AppColors.kBaseColor.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                                color: Colors.cyanAccent, fontSize: 12),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'aman007',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                        const Text(
                          'aman007@gmail.com',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        AppColors.kDarkPrimary)),
                                onPressed: () {},
                                child: const Text('My Story')),
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        AppColors.kDarkPrimary)),
                                onPressed: () {},
                                child: const Text('Follow')),
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        AppColors.kDarkPrimary)),
                                onPressed: () {},
                                child: const Text('Message'))
                          ],
                        ),
                        Container(
                          height: 80,
                          margin: const EdgeInsets.all(8),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 134, 134, 136)
                                  .withOpacity(0.3),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: const [
                              ProfileFollowingDetails(
                                text: "3021",
                                details: "Homo Sapiens",
                              ),
                              AppSize.kWidth5,
                              ProfileFollowingDetails(
                                text: "3021",
                                details: "Followers",
                              ),
                              AppSize.kWidth5,
                              ProfileFollowingDetails(
                                text: "3021",
                                details: "Following",
                              ),
                              AppSize.kWidth5,
                              ProfileFollowingDetails(
                                text: "3021",
                                details: "Uploads",
                              ),
                            ],
                          ),
                        ),
                        AppSize.kHeight20,
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'About me',
                            style: TextStyle(color: AppColors.kDarkPrimary),
                          ),
                        ),
                        const Text(
                          'Search from One Person stock photos, pictures and royalty-free images from iStock. Find high-quality stock photos that you won',
                          style: TextStyle(fontSize: 12),
                        ),
                        AppSize.kHeight20,
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.school),
                              AppSize.kWidth10,
                              Text('Education',
                                  style:
                                      TextStyle(color: AppColors.kDarkPrimary)),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(3),
                          padding: EdgeInsets.all(5),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(207, 125, 126, 126)
                                  .withOpacity(0.5),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Stafied the best thing so far',
                                style: TextStyle(fontSize: 13),
                              ),
                              Text('the first thing in flutter',
                                  style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(3),
                          padding: EdgeInsets.all(5),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(207, 125, 126, 126)
                                  .withOpacity(0.5),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Stafied the best thing so far',
                                style: TextStyle(fontSize: 13),
                              ),
                              Text('the first thing in flutter',
                                  style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                        AppSize.kHeight30,
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
