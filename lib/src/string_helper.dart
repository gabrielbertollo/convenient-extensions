import 'package:flutter/material.dart';

extension StringHelper on String {
  String get overflow => Characters(this)
      .replaceAll(Characters(''), Characters('\u{200B}'))
      .toString();
}