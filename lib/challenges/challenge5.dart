import 'package:flutter/material.dart';
import 'package:ctf/constants/kConstants.dart';
import 'package:hovering/hovering.dart';
import 'dart:html' as html;

class Challenge5 extends StatefulWidget {
  @override
  State<Challenge5> createState() => _Challenge5State();
}

class _Challenge5State extends State<Challenge5> {
  double _elevation = 0.0;

  void launchWebSiteURL(String url) {
    html.window.open(url, '');
  }



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
                    SizedBox(
                      height: 100,
                    ),
                    ListTile(
                      title: Text(
                        "File Forensics",
                        style: TextStyle(
                            fontFamily: "Monaco",
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      title: Text(
                          "Description",
                          style: kChallengeTitleStyle),
                      subtitle: Text(
                          "\n       -Examine text file content thoroughly to reveal concealed flag within its contents.",
                          style: kChallengeSmallStyle),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      title: Text(
                        "Objective",
                        style: kChallengeTitleStyle,
                      ),
                      subtitle: Text(
                        "\n       -Decrypt the obscured information within the text file to unveil the concealed flag.",
                        style: kChallengeSmallStyle,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      title: Text(
                          "Hint",
                          style: kChallengeTitleStyle
                      ),
                      subtitle: Text(
                          "\n       -Smart people always prefer what is short and easy. Hope you're smart enough to crack this!.",
                          style: kChallengeSmallStyle),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      title: Text(
                          "Encrypted Message",
                          style: kChallengeTitleStyle
                      ),
                      subtitle: InkWell(
                        onTap: () {
                          launchWebSiteURL('https://en.wikipedia.org/wiki/Meta_Platforms');
                        },
                        child: Text('   \n\n       - txt.file',
                          style: kEncryptStyle,),
                      ),
                    ),
                    SizedBox(height: 40,),
                    InkWell(
                      onTap: () {
                        launchWebSiteURL('https://en.wikipedia.org/wiki/Meta_Platforms');
                      },
                      child: PhysicalModel(
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
                                  child: Image.asset("assets/images/text_file.png",
                                  width: 50,
                                  height: 80,),
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
                                  child: Image.asset("assets/images/text_file.png",
                                    width: 55,
                                    height: 85,),
                                ),
                                color: Color(0xff313131)),
                          ),
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
