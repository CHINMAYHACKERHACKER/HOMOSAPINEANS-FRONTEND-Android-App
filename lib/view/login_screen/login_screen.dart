import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/home_screen/home_screen.dart';
import 'package:homo_sapiens/view/login_screen/widgets/subheading_widget.dart';
import 'package:homo_sapiens/view/signup_screen/widgets/signup_options.dart';
import 'package:homo_sapiens/widgets/button_widget.dart';
import 'package:homo_sapiens/widgets/container_login_widget.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';
import 'package:homo_sapiens/widgets/textfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                child: Column(
                  children: [
                    AppSize.kHeight60,
                    AppSize.kHeight60,
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        AppSize.kHeight30,
                        const Positioned(
                          top: -20,
                          right: 100,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: TextWidget(
                              name: "∞",
                              color: AppColors.kLightPrimary,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Positioned(
                          top: -114,
                          left: 76,
                          child: TextWidget(
                            name: "∞",
                            color: AppColors.kLightPrimary.withOpacity(0.3),
                            fontSize: 170,
                          ),
                        ),
                        const Positioned(
                          top: 70,
                          right: 88,
                          child: Align(
                              alignment: Alignment.topCenter,
                              child: SubHeadingWidget()),
                        ),
                        Column(
                          children: [
                            TextWidget(
                              name: "e=hs".toUpperCase(),
                              fontWeight: FontWeight.bold,
                              color: AppColors.kWhite,
                              fontSize: 62,
                            ),
                            AppSize.kHeight40,
                            TextfieldWidget(
                              hintStyle: TextStyle(
                                color: AppColors.kWhite.withOpacity(0.3),
                              ),
                              hintText: "Username",
                            ),
                            AppSize.kHeight20,
                            TextfieldWidget(
                              hintStyle: TextStyle(
                                color: AppColors.kWhite.withOpacity(0.3),
                              ),
                              hintText: "Password",
                            ),
                            AppSize.kHeight20,
                            ButtonWidget(
                              naving: const HomeScreen(),
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              width: double.infinity,
                              backgroundColor: AppColors.kDarkPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: const TextWidget(
                                name: "Login",
                                color: AppColors.kWhite,
                              ),
                            ),
                            AppSize.kHeight20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                ContainerWidget(
                                  child: Icon(
                                    EvaIcons.google,
                                    color: AppColors.kWhite,
                                  ),
                                ),
                                ContainerWidget(
                                  child: Icon(
                                    EvaIcons.facebook,
                                    color: AppColors.kWhite,
                                    size: 28,
                                  ),
                                ),
                                ContainerWidget(
                                  child: Icon(
                                    EvaIcons.twitter,
                                    color: AppColors.kWhite,
                                    size: 28,
                                  ),
                                ),
                              ],
                            ),
                            AppSize.kHeight30,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppSize.kWidth10,
                                Flexible(
                                  child: ButtonWidget(
                                    height: MediaQuery.of(context).size.height *
                                        0.050,
                                    backgroundColor:
                                        AppColors.kGrey.withOpacity(0.2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const TextWidget(
                                      name: "Forgot Password",
                                      fontSize: 11,
                                      color: AppColors.kWhite,
                                    ),
                                  ),
                                ),
                                AppSize.kWidth10,
                                Flexible(
                                  child: ButtonWidget(
                                    height: MediaQuery.of(context).size.height *
                                        0.050,
                                    backgroundColor:
                                        AppColors.kBlack.withOpacity(0.2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: const TextWidget(
                                      name: "Forgot Username",
                                      fontSize: 11,
                                      color: AppColors.kWhite,
                                    ),
                                  ),
                                ),
                                AppSize.kWidth10,
                              ],
                            ),
                            AppSize.kHeight50,
                            ButtonWidget(
                              height: MediaQuery.of(context).size.width * 0.15,
                              width: MediaQuery.of(context).size.width * 0.50,
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              side: const BorderSide(
                                color: AppColors.kDarkPrimary,
                              ),
                              naving: const SignUpOptionScreen(),
                              child: const TextWidget(
                                name: "Create an account",
                                color: AppColors.kDarkPrimary,
                              ),
                            ),
                          ],
                        ),
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
