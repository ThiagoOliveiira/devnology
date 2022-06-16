import 'package:flutter/material.dart';

class PageSelected extends StatelessWidget {
  final Widget? body;
  const PageSelected({this.body, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: body,
    );
  }
}
