import 'package:devnology/ui/pages/cart/cart_page.dart';
import 'package:devnology/ui/pages/checkout/checkout._page.dart';
import 'package:devnology/ui/pages/details/details_product_page.dart';
import 'package:devnology/ui/pages/home/home_page.dart';
import 'package:devnology/ui/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'ui/pages/components/components.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: makeAppTheme(),
      // home: const SplashPage(),
      initialRoute: '/',
      routes: {
        "/": (_) => const SplashPage(),
        "/home": (context) => HomePage(),
        "/detailsProduct": (context) => const DetailsProductPage(),
        "/cartPage": (context) => const CartPage(),
        "/checkouPage": (context) => const CheckoutPage(),
      },
    );
  }
}
