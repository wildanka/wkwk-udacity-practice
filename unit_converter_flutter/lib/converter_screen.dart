import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:unit_converter_flutter/unit.dart';

/// Converter screen where users can input amounts to convert.
///
/// Currently, it just displays a list of mock units.
///
/// While it is named ConverterRoute, a more apt name would be ConverterScreen,
/// because it is responsible for the UI at the route's destination.
class ConverterScreen extends StatelessWidget {
  //This [Category]'s Name.
  final String screenName;

  /// Color for this Screen [Category].
  final Color screenColor;

  /// Available [Units] for this [Category].
  final List<Unit> units;

  const ConverterScreen({
    @required this.screenName,
    @required this.screenColor,
    @required this.units,
  })  : assert(screenName != null),
        assert(screenColor != null);

  @override
  Widget build(BuildContext context) {
    // Here is just a placeholder for a list of mock units
    final unitWidgets = units.map((Unit unit) {
      return Container(
        color: screenColor,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline,
            ),
            Text(
              'Conversion : ${unit.conversion}',
              style: Theme.of(context).textTheme.subhead,
            ),
          ],
        ),
      );
    }).toList();

    return ListView(
      children: unitWidgets,
    );
  }

}
