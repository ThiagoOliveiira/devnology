import 'package:flutter/material.dart';

import '../components/components.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "/home", (Route<dynamic> route) => false);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(
              iconSpace: 0.02,
              widthImage: 16,
              devTextStyle: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
              textStyle: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.w100),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.1),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 36),
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.check_rounded,
                  size: 80, color: Color(0xFFF9C705)),
            ),
            const SizedBox(height: 30),
            Text(
              'Order Placed!',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                  color: Theme.of(context).backgroundColor,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 23),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.746,
              child: Text(
                'Your order was placed successfully. For more details, check All My Orders page under Profile tab',
                textAlign: TextAlign.center,
                maxLines: 3,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            const SizedBox(height: 80),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.277),
              child: ButtonRounded(
                textButton: 'MY ORDERS',
                colorButton: Theme.of(context).backgroundColor,
                icon: Icons.keyboard_arrow_right_rounded,
              ),
            )
          ],
        ),
      ),
    );
  }
}
