import 'package:flutter/material.dart';
import 'package:ctf/constants/kConstants.dart';
import 'dart:html' as html;
class Challenge4 extends StatelessWidget {

  void launchWebSiteURL(String url) {
    html.window.open(url, '');
  }

  void launchImageURL(String url) {
    html.window.open(url, '');
  }

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
                      "Forensics",
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
                        "\n       -Utilize steganography techniques to analyze the image file and reveal the hidden flag.",
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
                      "\n       -Visit the provided link for additional information that may assist you in uncovering the flag.",
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
                    subtitle: InkWell(
                      onTap: () {
                        launchWebSiteURL('https://en.wikipedia.org/wiki/Meta_Platforms');
                      },
                      child: Text('       https://en.wikipedia.org/wiki/Meta_Platforms',
                      style: kEncryptStyle,),
                    )
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
                      onTap: (){
                        launchWebSiteURL('https://drive.google.com/file/d/1y_rnFnpf8pOBEmmuYWBeHmnB4tK_Vqhs/view');
                      },
                      child: Image(
                        image: AssetImage("assets/images/encryptImg.jpeg"),
                      ),
                    )
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
