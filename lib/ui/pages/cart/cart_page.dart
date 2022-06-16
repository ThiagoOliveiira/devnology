import 'package:devnology/ui/pages/checkout/checkout._page.dart';
import 'package:flutter/material.dart';

import '../components/components.dart';
import 'components/components.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TitleText(title: 'Cart'),
              SizedBox(height: 20),
              ItemCart(
                pathImage:
                    "lib/ui/assets/images/products/3000222362_PRD_1500_12.png",
                descriptionItem:
                    'Lenovo 15.6" ThinkPad P15s Gen 1 Laptop, Intel Core i7-10510U Quad-Core, 16GB DDR4 RAM, 512GB',
                priceItem: '\$ 1,519.99',
              ),
              ItemCart(
                pathImage: 'lib/ui/assets/images/products/3192783133_1SZ1.png',
                descriptionItem:
                    'Lenovo - IdeaPad L340 15 Gaming Laptop - Intel Core i5 - 8GB Memory - NVIDIA GeForce GTX 1650 - 256GB Solid State',
                priceItem: '\$ 717,80',
              ),
            ],
          ),
        ),
        const Spacer(),
        const FooterContainer(
          isCartPage: true,
          price: '\$ 2,237.79',
          textButton2: 'CHECKOUT',
          routeName: CheckoutPage(),
        ),
      ],
    );
  }
}
