import 'package:flutter/material.dart';

import 'page1.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(accentColor: Colors.grey),
      home: Page1()));
}
