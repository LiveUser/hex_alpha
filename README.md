# Hex Alpha

Get an ARGB color by specifying a hex string and an alpha value.
Hecho en 🇵🇷 por Radamés J. Valentín Reyes

## Function basics

~~~dart
//Returns an argb value
hexAlpha(String hex,double alpha);
~~~

### Parameter description

- The first parameter is a string with a hexadecimal color value
- The second parameter is a type double number that ranges from 0-1. Where 0 is fully transparent and 1 is fully opaque.
#### New
- Accepts both upper case and lower case Strings in hex value
- Alpha value is now optional and set to 1 by default
- Null safety

### Example

~~~dart
import 'package:flutter/material.dart';
//Import the package, the line below will be different
import '../lib/hexalpha.dart';
void main(){
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Hex Alpha",
          ),
          backgroundColor: hexAlpha('#8f6787', 0.8),
        ),
        body: Center(
          child: Icon(
            Icons.memory,
            color: hexAlpha('#ff7373', 1),
            size: 50,
          ),
        ),
      ),
    ),
  );
}
~~~