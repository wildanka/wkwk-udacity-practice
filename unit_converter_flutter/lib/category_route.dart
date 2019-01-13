import 'package:flutter/material.dart';

/// since we are going to make the list of category, of course we need to import it's class
import 'package:unit_converter_flutter/category.dart';

final _backgroundColor = Colors.blue[100];

/// Category Route (screen)
///
/// this is the 'home' screen of the Unit Converter. it shows header and a list of [Category]es
///
/// While its named CategoryRoute, a more apt name would be CategoryScreen.
/// because it's responsible for the Ui at the route destination

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.redAccent,
  ];

  /// Makes the correct number of rows for the list view.
  ///
  /// For portrait, we construct a [ListView] from the list of category widgets.
  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

  ///main method of this class
  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(Category(name: _categoryNames[i],
          color: _baseColors[i],
          iconLocation: Icons.cake));
    }

    //create the listview container
    final listView = Container(
        color: _backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child : _buildCategoryWidgets(categories)
    );

    //create the appbar
    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        'Unit Converter',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
        ),
      ),
      centerTitle: true,
      backgroundColor: _backgroundColor,
    );


    //return the Scaffold
    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
