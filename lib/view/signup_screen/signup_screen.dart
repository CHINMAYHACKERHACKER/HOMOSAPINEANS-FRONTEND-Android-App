import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/login_screen/widgets/subheading_widget.dart';
import 'package:homo_sapiens/widgets/button_widget.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';
import 'package:homo_sapiens/widgets/textfield_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Positioned(
                      top: -10,
                      left: 140,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: TextWidget(
                          name: "∞",
                          color: AppColors.kLightPrimary,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Positioned(
                      top: -110,
                      left: -12,
                      child: TextWidget(
                        name: "∞",
                        color: AppColors.kLightPrimary.withOpacity(0.3),
                        fontSize: 191,
                      ),
                    ),
                    const Positioned(
                      top: 100,
                      left: 14,
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: SubHeadingWidget()),
                    ),
                    Column(
                      children: [
                        AppSize.kHeight10,
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextWidget(
                              name: "e=hs".toUpperCase(),
                              fontWeight: FontWeight.bold,
                              color: AppColors.kWhite,
                              fontSize: 65,
                            ),
                          ),
                        ),
                        // Align(
                        //   heightFactor: 1,
                        //   child: Row(
                        //     children: [
                        //       const SubHeadingWidget(),
                        //     ],
                        //   ),
                        // ),
                        AppSize.kHeight20,
                        TextfieldWidget(
                          hintStyle: TextStyle(
                            color: AppColors.kWhite.withOpacity(0.3),
                          ),
                          hintText: "Full Name",
                        ),
                        AppSize.kHeight20,
                        TextfieldWidget(
                          hintStyle: TextStyle(
                            color: AppColors.kWhite.withOpacity(0.3),
                          ),
                          hintText: "Last Name",
                        ),
                        AppSize.kHeight20,
                        TextfieldWidget(
                          hintStyle: TextStyle(
                            color: AppColors.kWhite.withOpacity(0.3),
                          ),
                          hintText: "Display Name",
                        ),
                        AppSize.kHeight20,
                        TextfieldWidget(
                          hintStyle: TextStyle(
                            color: AppColors.kWhite.withOpacity(0.3),
                          ),
                          hintText: "Date of Birth",
                        ),
                        AppSize.kHeight20,
                        TextfieldWidget(
                          hintStyle: TextStyle(
                            color: AppColors.kWhite.withOpacity(0.3),
                          ),
                          hintText: "Email",
                        ),
                        AppSize.kHeight20,
                        Row(
                          children: [
                            Expanded(
                              child: TextfieldWidget(
                                hintStyle: TextStyle(
                                  color: AppColors.kWhite.withOpacity(0.3),
                                ),
                                hintText: "Country",
                              ),
                            ),
                            AppSize.kWidth10,
                            Expanded(
                              child: TextfieldWidget(
                                hintStyle: TextStyle(
                                  color: AppColors.kWhite.withOpacity(0.3),
                                ),
                                hintText: "City",
                              ),
                            ),
                          ],
                        ),
                        AppSize.kHeight20,
                        TextfieldWidget(
                          hintStyle: TextStyle(
                            color: AppColors.kWhite.withOpacity(0.3),
                          ),
                          hintText: "Password",
                        ),
                        AppSize.kHeight20,
                        TextfieldWidget(
                          hintStyle: TextStyle(
                            color: AppColors.kWhite.withOpacity(0.3),
                          ),
                          hintText: "Re-enter password",
                        ),
                        AppSize.kHeight20,
                        ButtonWidget(
                          height: MediaQuery.of(context).size.height * 0.071,
                          width: 220,
                          backgroundColor: AppColors.kDarkPrimary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: TextWidget(
                            name: "Create an account",
                            color: AppColors.kWhite.withOpacity(0.7),
                          ),
                        ),
                        AppSize.kHeight20,
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'I have already an account',
                              style: TextStyle(
                                  color: AppColors.kWhite.withOpacity(0.3)),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
