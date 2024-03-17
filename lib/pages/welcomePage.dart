import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ctf/pages/challenges_Page.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:ctf/constants/kConstants.dart';
class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:MediaQuery.of(context).size.width < 800 ? const Text(
            "./hindustan college",
            style: kLargeAppbarStyle,
          ) : const Text(
            "./hindustan college of engineering and technology",
            style: kLargeAppbarStyle,
          ),
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(4.0),
              child:
              DottedDashedLine(
                height: 0, width: double.maxFinite, axis: Axis.horizontal,
                dashColor: Color(0xffC6EA7F),)),
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Tech Azura.ctf',
                          style: TextStyle(
                            letterSpacing: 1,
                            fontFamily: "Monaco",
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Color(0xffC6EA7F),
                          ),
                        ),
                        Text(
                          "Ready, Set, Hack!",
                          style: TextStyle(
                            fontFamily: "Monaco",
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: MediaQuery.of(context).size.width < 800 ? EdgeInsets.symmetric(horizontal: 50.0) : EdgeInsets.symmetric(horizontal: 100.0) ,
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Welcome to our CTF!...",
                          style: TextStyle(
                            letterSpacing: 1.5,
                            fontFamily: "Monaco",
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffC6EA7F),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Text(
                          "Welcome to the Hindustan College of Engineering and Technology's Capture the Flag competition, a thrilling event in our Department Symposium! As a student of our esteemed institution, you're invited to showcase your cybersecurity prowess in a series of challenging tasks. ",
                          style: TextStyle(
                            fontFamily: "Monaco",
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: const TextSpan(
                              text:
                                  "\nThis event promises an adrenaline-fueled hour where participants will navigate through  experience. Whether  ",
                              style: TextStyle(
                                wordSpacing: 4.0,
                                fontFamily: "Monaco",
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "six intricate challenges",
                                  style: TextStyle(
                                    wordSpacing: 4.0,
                                    fontFamily: "Monaco",
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.blue,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ",each designed to test your problem-solving skills to the limit. Winners will not only earn bragging rights but also lucrative",
                                  style: TextStyle(
                                    wordSpacing: 4.0,
                                    fontFamily: "Monaco",
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                TextSpan(
                                  text: " cash prizes.",
                                  style: TextStyle(
                                    wordSpacing: 4.0,
                                    fontFamily: "Monaco",
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.blue,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      " Stay tuned for updates and further details on the challenges as we gear up for an unforgettable experience.\n\n"
                                      "\nWhether you're a seasoned hacker or just dipping your toes into the world of cybersecurity, this competition offers a chance to demonstrate your talents and compete against the best. Get ready to unlock your potential and seize the opportunity to emerge victorious. Let the countdown to victory begin!",
                                  style: TextStyle(
                                    wordSpacing: 4.0,
                                    fontFamily: "Monaco",
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ]),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Wrap(
                          children: [
                            AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText(
                                  "Lets's Start",
                                  textStyle: const TextStyle(
                                    fontFamily: "Monaco",
                                    fontSize: 40,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    // fontFamily: "Monaco",
                                    // fontSize: 40,
                                    // fontWeight: FontWeight.w400,
                                    // color: Colors.white,
                                  ),
                                  speed: const Duration(milliseconds: 200),
                                ),
                              ],
                              totalRepeatCount: 10,
                              pause: const Duration(milliseconds: 1000),
                              displayFullTextOnTap: true,
                              stopPauseOnTap: true,
                            ),
                            // Text("Let's Start",
                            // style: TextStyle(
                            //   fontFamily: "Monaco",
                            //   fontSize: 40,
                            //   fontWeight: FontWeight.w400,
                            //   color: Colors.white,
                            // ),),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ChallengePage()));
                                },
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  size: 50,
                                  color: Colors.blue,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
