import 'package:flutter/material.dart';

import '../components/components.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Logo(
          iconSpace: 0.03,
          widthImage: 30,
          devTextStyle: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(fontWeight: FontWeight.w900),
          textStyle: Theme.of(context)
              .textTheme
              .headline1!
              .copyWith(fontWeight: FontWeight.w100),
        ),
      ),
    );
  }
}
