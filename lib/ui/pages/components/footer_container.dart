import 'package:flutter/material.dart';

import 'components.dart';

class FooterContainer extends StatelessWidget {
  final bool isCartPage;
  final String? textButton1;
  final String? textButton2;
  final String? price;
  final Widget? routeName;

  const FooterContainer({
    this.isCartPage = false,
    this.textButton1,
    this.textButton2,
    this.price,
    this.routeName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      width: double.infinity,
      height: 86,
      color: const Color(0xFF5A6476),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isCartPage
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'TOTAL',
                      textAlign: TextAlign.left,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      price!,
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                )
              : ButtonRounded(
                  colorText: Theme.of(context).backgroundColor,
                  textButton: textButton1!,
                  icon: Icons.keyboard_arrow_up_rounded,
                  colorIcon: Theme.of(context).backgroundColor,
                  saveRoute: false,
                ),
          ButtonRounded(
            colorButton: Theme.of(context).backgroundColor,
            textButton: textButton2!,
            icon: Icons.keyboard_arrow_right_rounded,
            routeName: routeName,
            saveRoute: routeName == "checkouPage" ? true : false,
          ),
        ],
      ),
    );
  }
}
