import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(ResponsiveApp());
}

class ResponsiveApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Flutter App',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomePage(),
      debugShowCheckedModeBanner: false
    );
  }
}
