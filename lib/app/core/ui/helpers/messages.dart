import 'package:flutter/material.dart';

mixin Messages<T extends StatefulWidget> on State<T> {
  void showError(String message) {}

  void showInfo(String message) {}

  void showSucess(String message) {}
}
