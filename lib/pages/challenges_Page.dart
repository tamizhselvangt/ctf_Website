import 'package:ctf/utilities/sidebar_Controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ctf/constants/kConstants.dart';
import 'package:get/get.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';

class ChallengePage extends StatelessWidget {
  ChallengePage({super.key});
  SideBarController sideBarController = Get.put(SideBarController());
  bool mobile = false;
  @override
  Widget build(BuildContext context) {
    mobile = MediaQuery.of(context).size.width < 830 ? false : true;
    return Scaffold(
      appBar: AppBar(
        title:  MediaQuery.of(context).size.width < 800 ? Text(
          "./hindustan college",
          style: kLargeAppbarStyle,
        ) : Text(
          "./hindustan college of engineering and technology",
          style: kLargeAppbarStyle,
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: DottedDashedLine(
              height: 0,
              width: double.maxFinite,
              axis: Axis.horizontal,
              dashColor: Color(0xffbfe76a),
            )),

      ),
      drawer: mobile ? null : Drawer(
        width: 200,
        backgroundColor: Color(0xff1d1d1d),
        child: ListView(
          children: [
            SidebarMenu(sideBarController,context),
          ],
        ),
      ) ,
      //Main Challenges Content
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png",),
            fit: BoxFit.cover,

          ),
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints){
           if(mobile)
            return Row(
              children: [
                SidebarMenu(sideBarController, context),
                Expanded(
                    flex: 7,
                    child: Container(
                      // color: Color(0xff1d1d1d),
                      child: Obx(() =>
                      sideBarController.pages[sideBarController.index.value]),
                    ))
              ],
            );
           else
             return Expanded(
               flex: 7,
               child: Container(
                 // color: Color(0xff1d1d1d),
                 child: Obx(() =>
                 sideBarController.pages[sideBarController.index.value]),
               ));

          },
        ),
      )
    );
  }
}


  Widget SidebarMenu(sideBarController,context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        child: Align(
          alignment: Alignment.topRight,
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Challenges",
                    style: TextStyle(
                      fontFamily: "Monaco",
                      color: Color(0xffC6EA7F),
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {
                    sideBarController.index.value = 0;
                  },
                  child: Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Challenge 1",
                          style: kChallengeSideBarStyle,
                        ),
                        Icon(
                          Icons.chevron_right_sharp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    sideBarController.index.value = 1;
                  },
                  child: Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Challenge 2",
                          style: kChallengeSideBarStyle,
                        ),
                        Icon(
                          Icons.chevron_right_sharp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    sideBarController.index.value = 2;
                  },
                  child: Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Challenge 3",
                          style: kChallengeSideBarStyle,
                        ),
                        Icon(
                          Icons.chevron_right_sharp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    sideBarController.index.value = 3;
                  },
                  child: Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Challenge 4",
                          style: kChallengeSideBarStyle,
                        ),
                        Icon(
                          Icons.chevron_right_sharp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    sideBarController.index.value = 4;
                  },
                  child: Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Challenge 5",
                          style: kChallengeSideBarStyle,
                        ),
                        Icon(
                          Icons.chevron_right_sharp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    sideBarController.index.value = 5;
                  },
                  child: Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Challenge 6",
                          style: kChallengeSideBarStyle,
                        ),
                        Icon(
                          Icons.chevron_right_sharp,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ));
  }

