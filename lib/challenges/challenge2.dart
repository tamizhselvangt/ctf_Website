import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:ctf/constants/kConstants.dart';
import 'package:hovering/hovering.dart';

class Challenge2 extends StatelessWidget {
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Center(
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
                        "Mystery Messages",
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
                          "\n       -Decode a mysterious message to uncover the hidden flag.",
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
                        "\n       -Decrypt the encoded message provided in the pastebin link to reveal the hidden flag.",
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
                          "\n       -The hint \"Nothing’s Ever Simple\"  Look for online tools or libraries that can decode Base64 strings.Remember,the flag is hidden within the decoded message.",
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
                      subtitle: Wrap(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: SelectableText(
                                  "\n      -VmFuYWtrYW1fZGFfTWFwbGE",
                                  style: kEncryptStyle,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  FlutterClipboard.copy("VmFuYWtrYW1fZGFfTWFwbGE");
                                },
                                child: Icon(
                                  Icons.copy,
                                  color: Colors.white70,
                                ),
                              )
                            ],
                          ),
                        ],
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
