import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gymbudd/Constants/extensions.dart';
import 'package:gymbudd/Views/loginView.dart';
import 'package:gymbudd/Views/signUp.dart';

import '../Constants/colors.dart';
import '../Constants/loginType.dart';

class SignInSignUp extends StatefulWidget {
  static const String routeName = "/intro";

  const SignInSignUp({Key key}) : super(key: key);

  @override
  _SignInSignUpState createState() => _SignInSignUpState();
}

class _SignInSignUpState extends State<SignInSignUp> {
  int currentIndex = 0;
  PageController controller;

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.grey,
                Colors.white,
              ],
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 342),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                      currentIndex == Constants.introDetails.length - 1
                          ? ''
                          : 'Skip',
                      style: Theme.of(context)
                          .textTheme
                          .medium
                          .copyWith(fontSize: 16, color: Colors.white)),
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      color: Colors.transparent,
                      height: 300,
                      child: PageView.builder(
                        controller: controller,
                        scrollDirection: Axis.horizontal,
                        physics: const ClampingScrollPhysics(),
                        onPageChanged: (value) {
                          setState(() {
                            currentIndex = value;
                          });
                        },
                        itemCount:1,
                        itemBuilder: (context, index) {
                          // contents of slider
                          return Slider(data: Constants.introDetails[index]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 147,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color(0xff0AC5B8),
                          Color(0xff2BD88F),
                        ],
                      ),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Get.to(SignUp());
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 147,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color(0xff0AC5B8),
                          Color(0xff2BD88F),
                        ],
                      ),
                    ),
                    child: Center(
                        child: TextButton(
                            onPressed: () {
                              Get.to(const login());
                            },
                            child: const Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // container created for dots
  Container buildDot(int index, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width: currentIndex == index ? 20 : 10,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: currentIndex == index ? kPrimaryColor : kTextColor,
      ),
    );
  }

  Widget customButtonSignUp(context, String title, {onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 147,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xff0AC5B8),
              Color(0xff2BD88F),
            ],
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  /*Widget customButtonSignIn(context, String title, {onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 147,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              Color(0xff0AC5B8),
              Color(0xff2BD88F),
            ],
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }*/
}

class Slider extends StatelessWidget {
  final Map data;

  Slider({
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        child: Column(
          children: [
            Text(
              data['title'],
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              data['desc'],
            ),
          ],
        ),
      ),
    );
  }
}
