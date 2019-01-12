import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:unit_converter_flutter/category.dart';

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.blue;


/// This is the root widget of our app
/// Currently we just show one widget in our app.
class UnitItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Category(name: _categoryName, color: _categoryColor, iconLocation: _categoryIcon),
      ),
    );
  }
}

//this is the function that will be called when main.dart is running
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Unit Converter Flutter"),
      ),
      body: UnitItems(), //call the UnitItems class
    ),
  ));
}
