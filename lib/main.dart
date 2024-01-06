import 'package:todo_app/page/add_page.dart';
import 'package:todo_app/page/home_page.dart';
import 'package:todo_app/page/login_page.dart';
import 'package:todo_app/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  String? get appRouter => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRouter.loginRouter,
      routes: {
        "/": (context) => HomePage(),
        MyRouter.loginRouter: (context) => LoginPage(),
        MyRouter.homeRouter: (context) => HomePage(),
        MyRouter.addRouter: (context) => AddPage()
      },
    );
  }
}
