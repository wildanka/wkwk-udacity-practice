import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:unit_converter_flutter/category.dart';
import 'package:unit_converter_flutter/category_route.dart';

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.blue;

/// This is the root widget of our app
/// Currently we just show one widget in our app.
class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      home: CategoryRoute(),
    );
  }
}

//this is the function that will be called when main.dart is running
void main() {
  runApp(UnitConverterApp());
}
