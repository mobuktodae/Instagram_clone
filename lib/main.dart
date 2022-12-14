import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clon/root_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            //primarySwatch: Colors.blue,
            primaryColor: Colors.white,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
                .copyWith(secondary: Colors.black),
        ),
        home: RootPage()
    );
  }
}