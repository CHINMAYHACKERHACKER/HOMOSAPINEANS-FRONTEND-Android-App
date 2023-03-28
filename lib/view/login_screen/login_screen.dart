import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/login_screen/widgets/subheading_widget.dart';
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
              bottom: -40,
              left: -30,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: AppColors.kDarkPrimary.withOpacity(0.4),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.kDarkPrimary.withOpacity(0.4),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Positioned(
                      top: -10,
                      right: 60,
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
                      top: -110,
                      left: 40,
                      child: TextWidget(
                        name: "∞",
                        color: AppColors.kLightPrimary.withOpacity(0.3),
                        fontSize: 200,
                      ),
                    ),
                    Column(
                      children: [
                        TextWidget(
                          name: "e=hs".toUpperCase(),
                          fontWeight: FontWeight.bold,
                          color: AppColors.kWhite,
                          fontSize: 65,
                        ),
                        const SubHeadingWidget(),
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
                          height: MediaQuery.of(context).size.height * 0.075,
                          width: double.infinity,
                          backgroundColor: AppColors.kDarkPrimary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
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
                          children: [
                            AppSize.kWidth10,
                            Flexible(
                              child: ButtonWidget(
                                height:
                                    MediaQuery.of(context).size.height * 0.060,
                                backgroundColor:
                                    AppColors.kBlack.withOpacity(0.2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.060,
                                backgroundColor:
                                    AppColors.kBlack.withOpacity(0.2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
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
                          width: MediaQuery.of(context).size.width * 0.65,
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          side: const BorderSide(
                            color: AppColors.kDarkPrimary,
                          ),
                          child: const TextWidget(
                            name: "Create an account",
                            color: AppColors.kDarkPrimary,
                          ),
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
