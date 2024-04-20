import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_like_clone/Core/colors.dart';
import 'package:linkedin_like_clone/Core/constants.dart';
import 'package:linkedin_like_clone/presentation/screen_home.dart';
import 'package:linkedin_like_clone/presentation/screen_signup.dart';
import 'package:linkedin_like_clone/widgets/custom_text_field.dart';

class ScreenSignIn extends StatelessWidget {
  const ScreenSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: deviceHeight,
          width: deviceWidth,
          // color: Colors.amber,
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              children: [
                Container(
                  height: deviceHeight * 0.45,
                  width: deviceWidth - 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: whiteToLightGrey),
                  child: Stack(
                    children: [
                      Positioned(
                          right: 20,
                          bottom: 0,
                          child: SizedBox(
                            height: deviceHeight * 0.38,
                            child: Image.asset(
                              "assets/dummy.png",
                              fit: BoxFit.fitHeight,
                              // height: deviceHeight * 0.4,
                            ),
                          )),
                      const Positioned(
                          top: 50,
                          left: 20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome\nback,",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    height: 1),
                              ),
                              Text(
                                "Login here,",
                                style: TextStyle(
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                    color: orangeColor),
                              ),
                              Text(
                                "Login here using your\nregistered email and\npassword,",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: blackColor),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: deviceWidth - 20,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const CustomTextField(
                          hintText: "Enter your email",
                        ),
                        kHieght15,
                        const CustomTextField(
                          hintText: "Enter your password",
                        ),
                        kHieght10,
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "forget password?",
                              style: TextStyle(fontSize: 13, color: greyColor),
                            )
                          ],
                        ),
                        kHieght30,
                        SizedBox(
                          height: 50,
                          width: deviceWidth - 60,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  foregroundColor:
                                      const MaterialStatePropertyAll(
                                          whiteColor),
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          orangeColor),
                                  shape: MaterialStatePropertyAll(
                                      ContinuousRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacement(CupertinoPageRoute(
                                  builder: (context) => ScreenHome(),
                                ));
                              },
                              child: const Text("Login")),
                        ),
                        kHieght30,
                        const Text(
                          "Dont have an account?",
                          style: TextStyle(color: greyColor, fontSize: 13),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(CupertinoPageRoute(
                              builder: (context) => const ScreenSignUp(),
                            ));
                          },
                          child: const Text(
                            "Create new account",
                            style: TextStyle(
                                color: orangeColor,
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
