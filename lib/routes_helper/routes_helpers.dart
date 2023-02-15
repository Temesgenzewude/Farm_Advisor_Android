import 'package:agino_client/presentation/dashboard/reset_gdd.dart';
import 'package:agino_client/presentation/dashboard/statistics_one_.dart';
import 'package:agino_client/presentation/firstTimeUser/newFarm.dart';
import 'package:agino_client/presentation/firstTimeUser/welcome.dart';
import 'package:agino_client/presentation/more/profile.dart';
import 'package:agino_client/presentation/onboarding/home.dart';
import 'package:agino_client/presentation/onboarding/signup.dart';
import 'package:agino_client/presentation/onboarding/termsandconditions.dart';
import 'package:agino_client/presentation/onboarding/verefication.dart';
import 'package:agino_client/presentation/sensors/add_sensor.dart';
import 'package:agino_client/presentation/sensors/fields.dart';
import 'package:agino_client/presentation/sensors/new_sensor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../presentation/firstTimeUser/new_field.dart';

class RouteHelper {
  static const String initial = "/";

  static const String resetGDD = "/reset-gdd";
  static const String resetAllGDD = "/reset-all-gdd";

  static const String statistics = "/statistics";
  static const String help = "/help";
  static const String terms = "/terms";
  static const String verification = "/phone-verification";

  static const String signup = "/signup";
  static const String login = "/login";
  static const String logout = "/logout";

  static const String profilePage = '/profile';
  static const String sensorPage = '/sensor';
  static const String addSensorPage = '/add-sensor';
  static const String fieldsPage = '/fields';
  static const String newFarm = '/new-farm';
  static const String newField = '/new-field';
  static const String welcomeScreen = '/welcome-screen';

  static getInitial() => '$initial';
  static LoginPage() => '$login';
  static getLogout() => '$logout';

  static String getStatisticsPage(int pageId) => '$statistics?pageId=$pageId';

  static String getResetGDDPage(int pageId) => '$resetGDD?pageId=$pageId ';
  static String getResetAllGDDPage(int pageId) =>
      '$resetAllGDD?pageId=$pageId ';

  static String getSignupPage() => '$signup';
  static String getNewFarm() => '$newFarm';
  static String getNewField() => '$newField';

  static String getProfilePage() => '$profilePage';

  static String getHelpPage() => '$help';
  static String getTermsPage() => '$terms';
  static String getPhoneVerificationPage(String verificationId) =>
      '$verification?verId=$verificationId';
  static String getAddSensorPage() => '$addSensorPage';
  static String getSensorPage() => '$sensorPage';
  static String getFieldsPage() => '$fieldsPage';
  static String getWelcomePage() => '$welcomeScreen';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => Welcome()),
    GetPage(
        name: statistics,
        page: () {
          return StatisticsOne();
        }),
    GetPage(
        name: signup,
        page: () {
          return SignUp();
        }),
    GetPage(
        name: profilePage,
        page: () {
          return Profile();
        }),
    GetPage(name: resetGDD, page: (() => ResetGDD())),
    GetPage(name: terms, page: (() => Terms())),
    GetPage(
        name: verification,
        page: (() {
          var verifcationId = Get.arguments["verId"];

          return Verefication(
            verificationId: verification,
          );
        })),
    GetPage(name: sensorPage, page: (() => SensorPage())),
    GetPage(name: addSensorPage, page: (() => AddSensor())),
    GetPage(
        name: fieldsPage,
        page: () {
          return Fields();
        }),
    GetPage(name: newFarm, page: (() => NewFarm())),
    GetPage(name: newField, page: (() => NewField())),
    GetPage(
        name: resetAllGDD,
        page: () {
          return Container();
        }),
    GetPage(
        name: welcomeScreen,
        page: () {
          return Welcome();
        }),
  ];
}
