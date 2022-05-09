// import 'package:flutter/material.dart';
// import 'package:khavchik/UI/starting_page.dart';
//
// import 'UI/LoginScreen/login_screen.dart';
// import 'UI/SplashScreen/splash_screen.dart';
//
// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case StartingPage.routeName:
//         return MaterialPageRoute(builder: (_) => StartingPage());
//       case LoginScreen.routeName:
//         return MaterialPageRoute(builder: (_) => LoginScreen());
//       case SplashScreen.routeName:
//         return MaterialPageRoute(builder: (_) => SplashScreen());
//       // case RegistrationScreen.routeName:
//       //   return MaterialPageRoute(builder: (_) => RegistrationScreen());
//       // case VacancyDetail.routeName:
//       //   final args = settings.arguments as Vacancy;
//       //   return MaterialPageRoute(builder: (_) => VacancyDetail(vacancy: args));
//       // case WelcomeScreen.routeName:
//       //   return MaterialPageRoute(builder: (_) => WelcomeScreen());
//       default:
//         return _errorRoute();
//     }
//   }
//
//   static Route<dynamic> _errorRoute() {
//     return MaterialPageRoute(builder: (_) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text('Error'),
//         ),
//         body: const Center(
//           child: Text('ERROR'),
//         ),
//       );
//     });
//   }
// }
