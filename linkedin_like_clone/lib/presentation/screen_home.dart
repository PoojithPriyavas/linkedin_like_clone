import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_like_clone/Core/colors.dart';
import 'package:linkedin_like_clone/Core/constants.dart';
import 'package:linkedin_like_clone/model/post_model.dart';
import 'package:linkedin_like_clone/presentation/screen_comment.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: deviceHeight,
          width: deviceWidth,
          color: whiteColor,
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const Divider(
                height: 20,
                color: lightGreyColor,
                thickness: 10,
              );
            },
            itemCount: dummyPosts.length,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                color: whiteColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // First Container
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: ClipOval(
                                child: Image.asset(
                                  "assets/home_image.png",
                                  fit: BoxFit
                                      .cover, // To cover the entire circle shape
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          dummyPosts[index].name,
                                          style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(width: 3),
                                        const Text(
                                          "(He/Him)",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      dummyPosts[index].jobPosition,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      dummyPosts[index].createdTime,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
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
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        dummyPosts[index].description,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        '#${dummyPosts[index].tags.join(' #')}',
                        style: const TextStyle(
                          color: Color.fromARGB(255, 35, 52, 241),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    kHieght5,
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return AspectRatio(
                          aspectRatio: 16 / 9, // Assuming 16:9 aspect ratio
                          child: Image.asset(
                            "assets/home_image.png",
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                    kHieght10,
                    Container(
                      height: 50,
                      color: whiteColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Column(
                                children: [
                                  Icon(
                                    Icons.thumb_up_alt_outlined,
                                    size: 15,
                                  ),
                                  Text(
                                    "Like",
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(CupertinoPageRoute(
                                    builder: (context) =>
                                        ScreenComment(post: dummyPosts[index]),
                                  ));
                                },
                                child: const Column(
                                  children: [
                                    Icon(
                                      Icons.comment,
                                      size: 15,
                                    ),
                                    Text(
                                      "Comment",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              const Column(
                                children: [
                                  Icon(
                                    Icons.share,
                                    size: 15,
                                  ),
                                  Text(
                                    "Repost",
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              ),
                              const Column(
                                children: [
                                  Icon(
                                    Icons.send,
                                    size: 15,
                                  ),
                                  Text(
                                    "Send",
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
