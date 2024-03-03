import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/home_screen/home_screen.dart';
import 'package:homo_sapiens/view/signup_screen/widgets/container_widget.dart';
import 'package:homo_sapiens/view/signup_screen/widgets/main_heading_widget.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

class SignUpOptionScreen extends StatelessWidget {
  const SignUpOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Positioned(
              bottom: -80,
              left: -60,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: AppColors.kDarkPrimary.withOpacity(0.4),
              ),
            ),
            Positioned(
              bottom: -110,
              right: -48,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: AppColors.kDarkPrimary.withOpacity(0.4),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: const [
                      MainHeadingWidget(),
                    ],
                  ),
                  ExpansionTile(
                    collapsedIconColor: AppColors.kWhite,
                    expandedAlignment: Alignment.center,
                    expandedCrossAxisAlignment: CrossAxisAlignment.center,
                    iconColor: AppColors.kWhite,
                    collapsedBackgroundColor: AppColors.kDarkPrimary,
                    backgroundColor: const Color.fromARGB(255, 177, 213, 216),
                    collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        AppSize.kWidth20,
                        TextWidget(
                          name: "Select Category",
                          color: AppColors.kWhite,
                        ),
                      ],
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ContainerCategory(
                          color: AppColors.kWhite,
                          borderRadius: BorderRadius.circular(14),
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ));
                            },
                            tileColor: AppColors.kWhite,
                            title: const Center(
                              child: TextWidget(name: "Personal Account"),
                            ),
                            subtitle: const Center(
                              child: TextWidget(
                                name: "Personal Account",
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ContainerCategory(
                          color: AppColors.kWhite,
                          borderRadius: BorderRadius.circular(14),
                          child: const ListTile(
                            title: Center(
                              child: TextWidget(name: "Business Account"),
                            ),
                            subtitle: Center(
                              child: TextWidget(
                                name:
                                    "companies/ Organizations/ Business services.",
                                fontSize: 9,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ContainerCategory(
                          color: AppColors.kWhite,
                          borderRadius: BorderRadius.circular(14),
                          child: const ListTile(
                            tileColor: Colors.transparent,
                            title: Center(
                                child: TextWidget(name: "Institute Account")),
                            subtitle: Center(
                              child: TextWidget(
                                fontSize: 10,
                                name: "School/ Colleges / Universities",
                              ),
                            ),
                          ),
                        ),
                      ),
                      AppSize.kHeight10,
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
