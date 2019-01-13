// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

// @required is defined in the meta.dart package
import 'package:meta/meta.dart';

// Use an underscore to define const
final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(
    _rowHeight / 2); //make it half of the row widget height

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO 1_DONE: You'll need the name, color, and iconLocation from main.dart
  /// as we are going to need the name, color, and iconLocation from main.dart
  /// we need to use @required to checks for a named parameter passed in,
  /// @required != null checking, to do null checking we will assert it later
  // We can say that this const Category is a constructor
  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation})
      : assert (name != null),
        assert (color != null),
        assert (iconLocation != null),
        super(key: key);

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    // TODO 2_DONE: Build the custom widget here, referring to the Specs.
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          // we can user () => function() or the () {function();} syntax
          onTap: () {
//            print("Stop it, it's tickle!");
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(
                  iconLocation,
                  size: 60.0,
                ),
              ),
              Center(
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline,
                ),
              )
            ],),

        ),
      ),
    ),
    );
  }
}
