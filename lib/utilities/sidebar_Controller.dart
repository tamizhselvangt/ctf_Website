import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ctf/challenges/challenge1.dart';
import 'package:ctf/challenges/challenge2.dart';
import 'package:ctf/challenges/challenge3.dart';
import 'package:ctf/challenges/challenge4.dart';
import 'package:ctf/challenges/challenge5.dart';
import 'package:ctf/challenges/challenge6.dart';

class SideBarController extends GetxController {

  RxInt index = 0.obs;

  var pages = [
    Challenge1(),
    Challenge2(),
    Challenge3(),
    Challenge4(),
    Challenge5(),
    Challenge6()
  ];


}
