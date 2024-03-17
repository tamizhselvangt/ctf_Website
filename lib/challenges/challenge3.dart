import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:ctf/constants/kConstants.dart';
import 'package:hovering/hovering.dart';

class Challenge3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "Bugging Out",
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
                        "\n       -Everything's A-okay, but where's the sneaky flag hiding.",
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
                      "\n       -Use your browser to find hidden elements and discover the flag",
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
                        "\n       -The hint  \"andrew tate : What Color is your Browser?\"",
                        style: kChallengeSmallStyle),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text(
                        "Hint Message",
                        style: kChallengeTitleStyle
                    ),
                    subtitle: SelectableText(
                      "\n      -Hide in code",
                      style: kEncryptStyle,
                    ),
                  ),
                  SizedBox(height: 200,)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
