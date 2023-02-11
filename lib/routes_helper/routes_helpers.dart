import 'package:agino_client/presentation/dashboard/reset_sensors.dart';
import 'package:agino_client/presentation/dashboard/statistics_one_.dart';
import 'package:agino_client/presentation/more/profile.dart';
import 'package:agino_client/presentation/onboarding/home.dart';
import 'package:agino_client/presentation/onboarding/signup.dart';
import 'package:agino_client/presentation/onboarding/termsandconditions.dart';
import 'package:agino_client/presentation/onboarding/verefication.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";

  static const String resetGDD = "/reset-gdd";
  static const String statistics = "/statistics";
  static const String help = "/help";
  static const String terms = "/terms";
  static const String verification = "/phone-verification";

  static const String signup = "/signup";
  static const String login = "/login";
  static const String logout = "/logout";

  static const String profilePage = '/profile';

  static getInitial() => '$initial';
  static LoginPage() => '$login';
  static getLogout() => '$logout';

  static String getStatisticsPage(int pageId) => '$statistics?pageId=$pageId';

  static String getResetSensorPage(int pageId) => '$resetGDD?pageId=$pageId ';

  static String getSignupPage() => '$signup';

  static String getProfilePage() => '$profilePage';

  static String getHelpPage() => '$help';
  static String getTermsPage() => '$terms';
  static String getPhoneVerificationPage() => '$verification';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => MyHomePage()),
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
    GetPage(name: verification, page: (() => Verefication())),
  ];
}
