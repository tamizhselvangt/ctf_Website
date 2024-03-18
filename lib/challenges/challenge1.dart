import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:ctf/constants/kConstants.dart';
import 'package:hovering/hovering.dart';

class Challenge1 extends StatefulWidget {
  const Challenge1({super.key});

  @override
  State<Challenge1> createState() => _Challenge1State();
}

class _Challenge1State extends State<Challenge1> {
  final double _elevation = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png",),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    const ListTile(
                      title: Text(
                        "Cryptography",
                        style: TextStyle(
                            fontFamily: "Monaco",
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ListTile(
                      title: Text(
                        "Description",
                        style: kChallengeTitleStyle),
                      subtitle: Text(
                          "\n       -Participants must decrypt a message encoded with a Caesar cipher to reveal the hidden flag.",
                          style: kChallengeSmallStyle),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ListTile(
                      title: Text(
                        "Objective",
                        style: kChallengeTitleStyle,
                      ),
                      subtitle: Text(
                        "\n       -Decipher the message to uncover the hidden flag. Use your understanding of the Caesar cipher and decryption techniques.",
                        style: kChallengeSmallStyle,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ListTile(
                      title: Text(
                        "Hint",
                        style: kChallengeTitleStyle
                      ),
                      subtitle: Text(
                          "\n       -Look for clues in the image provided. The number of cats could indicate the shift value for the Caesar cipher(Find How many cats in the Image).",
                          style: kChallengeSmallStyle),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      title: const Text(
                        "Encrypted Message",
                        style: kChallengeTitleStyle
                      ),
                      subtitle: Wrap(
                        children: [
                          Row(
                            children: [
                              const Expanded(
                                flex: 1,
                                child: SelectableText(
                                  "\n      -qvwddw_qvwddw_Vwqsh_qvoddo_qvoddo",
                                  style: kEncryptStyle,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  FlutterClipboard.copy("qvwddw_qvwddw_Vwqsh_qvoddo_qvoddo");
                                },
                                child: const Icon(
                                  Icons.copy,
                                  color: Colors.white70,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40,),
                    PhysicalModel(
                      color: Color(0xff262626),
                      elevation: 20.0,
                      child: HoverCrossFadeWidget(
                        duration: Duration(milliseconds: 100),
                        firstChild: Container(
                          width: 200,
                          height: 240,
                          decoration: BoxDecoration(
                              color: Color(0xff262626),
                              borderRadius: BorderRadius.zero),
                          child: Card(
                              elevation: _elevation,
                              child: Center(
                                child: Icon(
                                  Icons.question_mark_rounded,
                                  size: 30,
                                  color: Color(0xffd07e41),
                                ),
                              ),
                              color: Color(0xff262626)),
                        ),
                        secondChild:Container(
                          width: 220,
                          height: 250,
                          decoration: BoxDecoration(
                              color: Color(0xff313131),
                              borderRadius: BorderRadius.zero),
                          child: Card(
                              elevation: _elevation,
                              child: Center(
                                child: Icon(
                                  Icons.question_mark_rounded,
                                  size: 50,
                                  color: Colors.white,
                                )
                              ),
                              color: Color(0xff313131)),
                        ),
                      ),
                    ),
                    SizedBox(height: 200,)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
