import 'package:flutter/material.dart';
import 'package:dribbble_1/pages/lib/home.dart';
import 'package:dribbble_1/pages/lib/balance.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),
        '/balance': (context) => Balance(),
      },
    ));
