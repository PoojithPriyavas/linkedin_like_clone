import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:linkedin_like_clone/Core/colors.dart';
import 'package:linkedin_like_clone/Core/constants.dart';
import 'package:linkedin_like_clone/presentation/screen_signin.dart';
import 'package:linkedin_like_clone/provider/signup_provider.dart';
import 'package:linkedin_like_clone/widgets/custom_text_field.dart';
import 'package:provider/provider.dart';

class ScreenSignUp extends StatefulWidget {
  const ScreenSignUp({super.key});

  @override
  State<ScreenSignUp> createState() => _ScreenSignUpState();
}

class _ScreenSignUpState extends State<ScreenSignUp> {
  CarouselController carousalController = CarouselController();
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final signUpProvider = Provider.of<SignUpProvider>(context);
    print(signUpProvider.currentCarousalIndex);

    final list = [
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
            Positioned(
                top: 30,
                left: 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: blackColor)),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 14,
                        ),
                      ),
                    ),
                    kHieght15,
                    const Text(
                      "Create new\naccount",
                      style: TextStyle(
                          fontSize: 23, fontWeight: FontWeight.bold, height: 1),
                    ),
                    kHieght10,
                    const Text(
                      "Create new account by\nproviding details",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    )
                  ],
                )),
          ],
        ),
      ),
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
            Positioned(
                top: 30,
                left: 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () async {
                        carousalController.animateToPage(0,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                        pageController.animateToPage(0,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: blackColor)),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 14,
                        ),
                      ),
                    ),
                    kHieght15,
                    const Text(
                      "Create new\npassword",
                      style: TextStyle(
                          fontSize: 23, fontWeight: FontWeight.bold, height: 1),
                    ),
                    kHieght10,
                    const Text(
                      "Create new account by\nproviding details",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    )
                  ],
                )),
          ],
        ),
      ),
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
                      "Account created",
                      style: TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold, height: 1),
                    ),
                    Text(
                      "Successfully!",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        height: 1,
                        color: orangeColor,
                      ),
                    ),
                    kHieght10,
                    Text(
                      "You can now login to your account",
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
    ];

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: deviceHeight,
          width: deviceWidth,
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
                      CarouselSlider(
                        carouselController: carousalController,
                        items: list.toList(),
                        options: CarouselOptions(
                          initialPage: 0,
                          height: deviceHeight * 0.45,
                          viewportFraction: 1,
                          enableInfiniteScroll: false,
                          onPageChanged: (index, reason) {
                            signUpProvider.setCarausalIndex(index);
                          },
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: Row(
                          children: [
                            Container(
                              height: 28,
                              width: 35,
                              decoration: BoxDecoration(
                                color: signUpProvider.currentCarousalIndex == 0
                                    ? orangeColor
                                    : greyColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Text(
                                "1",
                                style: TextStyle(
                                    color:
                                        signUpProvider.currentCarousalIndex == 0
                                            ? whiteColor
                                            : lightGreyColor),
                              )),
                            ),
                            kWidth5,
                            Container(
                              height: 28,
                              width: 35,
                              decoration: BoxDecoration(
                                color: signUpProvider.currentCarousalIndex == 1
                                    ? orangeColor
                                    : greyColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Text(
                                "2",
                                style: TextStyle(
                                    color:
                                        signUpProvider.currentCarousalIndex == 1
                                            ? whiteColor
                                            : lightGreyColor),
                              )),
                            ),
                            kWidth5,
                            Container(
                              height: 28,
                              width: 35,
                              decoration: BoxDecoration(
                                color: signUpProvider.currentCarousalIndex == 2
                                    ? lightGreenColor
                                    : greyColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                  child: Icon(
                                Icons.verified_outlined,
                                color: whiteColor,
                                size: 15,
                              )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: deviceHeight * 0.45,
                  child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: pageController,
                      children: [
                        Column(
                          children: [
                            kHieght20,
                            const CustomTextField(
                              hintText: "First name",
                            ),
                            kHieght15,
                            const CustomTextField(
                              hintText: "Last name",
                            ),
                            kHieght15,
                            const CustomTextField(
                              hintText: "Date of Birth",
                            ),
                            kHieght30,
                            SizedBox(
                              height: 50,
                              width: deviceWidth - 20,
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
                                  onPressed: () async {
                                    pageController.animateToPage(1,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeIn);
                                    carousalController.animateToPage(1,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeIn);
                                  },
                                  child: const Text("Submit")),
                            ),
                          ],
                        ),
                        // -----second page
                        Column(
                          children: [
                            kHieght20,
                            const CustomTextField(
                              hintText: "Password",
                            ),
                            kHieght15,
                            const CustomTextField(
                              hintText: "Confirm password",
                            ),
                            kHieght30,
                            SizedBox(
                              height: 50,
                              width: deviceWidth - 20,
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
                                  onPressed: () async {
                                    pageController.animateToPage(2,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeIn);
                                    carousalController.animateToPage(2,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeIn);
                                  },
                                  child: const Text("Agree and Register")),
                            ),
                          ],
                        ),
                        // next page
                        Column(
                          children: [
                            kHieght30,
                            SizedBox(
                              height: 50,
                              width: deviceWidth - 20,
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
                                  onPressed: () async {
                                    signUpProvider.setCarausalIndex(0);

                                    // Navigator.of(context).pushReplacement(
                                    //     new MaterialPageRoute(
                                    //         builder: (BuildContext context) =>
                                    //             ScreenSignIn()));

                                    Navigator.of(context)
                                        .push(CupertinoPageRoute(
                                      builder: (context) =>
                                          const ScreenSignIn(),
                                    ));
                                  },
                                  child: const Text("Back to login")),
                            ),
                          ],
                        ),
                      ]),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
