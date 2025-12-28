import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<void> pushNamed(String routeName, {Object? arguments}) async {
    await Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  Future<void> pushReplacementNamed(
    String routeName, {
    Object? arguments,
  }) async {
    await Navigator.pushReplacementNamed(this, routeName, arguments: arguments);
  }

  void pop() {
    Navigator.pop(this);
  }
}
