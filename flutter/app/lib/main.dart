// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_field, prefer_final_fields, annotate_overrides

import 'package:app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter 3",
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.red),
    ),
  );
}
