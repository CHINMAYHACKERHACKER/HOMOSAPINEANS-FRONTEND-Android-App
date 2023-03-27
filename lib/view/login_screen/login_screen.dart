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
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  TextWidget(
                    name: "e=hs".toUpperCase(),
                    fontWeight: FontWeight.bold,
                    color: AppColors.kWhite,
                    fontSize: 65,
                  ),
                  const SubHeadingWidget(),
                  AppSize.kHeight20,
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
                    name: "Login",
                  ),
                  AppSize.kHeight20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ContainerWidget(
                        image: 'assets/images/google.svg',
                      ),
                      ContainerWidget(
                        image: 'assets/images/google.svg',
                      ),
                      ContainerWidget(
                        image: 'assets/images/google.svg',
                      ),
                    ],
                  ),
                  AppSize.kHeight30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: ButtonWidget(
                          height: MediaQuery.of(context).size.height * 0.060,
                          name: "Forgot Password",
                          backgroundColor: AppColors.kBlack.withOpacity(0.3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Flexible(
                        child: ButtonWidget(
                          height: MediaQuery.of(context).size.height * 0.060,
                          name: "Forgot Username",
                          backgroundColor: AppColors.kBlack.withOpacity(0.3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
