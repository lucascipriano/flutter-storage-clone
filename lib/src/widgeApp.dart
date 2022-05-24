import 'package:flutter/material.dart';
import 'package:movies/src/views/Home/home_page.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Storages",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
