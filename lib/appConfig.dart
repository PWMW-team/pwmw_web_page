import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class AppConfig {
  static Color buttonColor = Colors.blue;
  static bool userLogined = false; // 유저가 로그인 했는지!
  static bool prAppear = true; // 광고 나타낼지 말지
//   static String baseUrl = "http://192.168.219.100:8080/api/v1";
// static String baseUrl = "http://13.209.65.220:8080/api/v1";

  // ssl 쓰자
  static String baseUrl = "https://pwmw.xyz:8080/donda/api/v1/";
//  static String baseUrl = "https://192.168.219.100:8080/api/v1";


}