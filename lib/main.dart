import 'package:chating/login_page.dart';
import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';
import 'constants.dart';

void main() {
  ZIMKit().init(
    appID:AppId, // your appid
    appSign:AppSign, // your appSign
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}
