import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class User {
  final int id;
  final String name;
  final String mail;
  final String password;

  const User({
    required this.id,
    required this.name,
    required this.mail,
    required this.password,
  });
}