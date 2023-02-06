import 'package:delivery_app/app/core/config/env.dart';
import 'package:delivery_app/app/delivery_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Env.instance.load();
  runApp(const DeliveryApp());
}
