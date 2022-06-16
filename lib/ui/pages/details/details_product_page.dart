import 'package:devnology/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/components.dart';

class DetailsProductPage extends StatelessWidget {
  const DetailsProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        HomePage(indexCurrent: 2)),
                (route) => false,
              );
              HomePage(indexCurrent: 2);
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: SvgPicture.asset(
                    'lib/ui/assets/icons/shopping_cart.svg',
                    fit: BoxFit.fill,
                    width: 25,
                  ),
                ),
                Positioned(
                  right: 2,
                  bottom: 7,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFFC600),
                    ),
                    child: Text(
                      '2',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.white,
                          fontSize: 9,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(
              iconSpace: 0.03,
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
            SizedBox(width: MediaQuery.of(context).size.width * 0.047),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextProduct(
                  text:
                      'Lenovo 15.6" ThinkPad P15s Gen 1 Laptop, Intel Core i7-10510U Quad-Core, 16GB DDR4 RAM, 512GB SSD, NVIDIA Quadro P520, Windows 10 Pro (20T4001VUS)',
                  textStyle: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Image.asset(
                    'lib/ui/assets/images/products/3000222362_PRD_1500_12.png',
                    fit: BoxFit.scaleDown,
                    height: 200,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 10.0,
                      height: 10.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 2.0),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFF2E3746)),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 10.0,
                      height: 10.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 2.0),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFC4C4C4)),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 10.0,
                      height: 10.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 2.0),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFC4C4C4)),
                    ),
                  ],
                ),
                TextProduct(
                  text: 'Price:',
                  textStyle: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                TextProduct(
                  text: '\$ 1,519.99',
                  textStyle: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF2E3746)),
                ),
                const SizedBox(height: 16),
                TextProduct(
                  text: 'About this item:',
                  textStyle: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                TextProduct(
                  text:
                      '1.8 GHz Intel Core i7-10510U Quad-Core Processor 16GB of DDR4 RAM | 512GB SSD 15.6" 1920 x 1080 IPS Display NVIDIA Quadro P520 Windows 10 Pro 64-Bit Edition 1.8 GHz Intel Core i7-10510U Quad-Core Processor 16GB of DDR4 RAM | 512GB SSD 15.6" 1920 x 1080 IPS Display NVIDIA Quadro P520',
                  textStyle: Theme.of(context).textTheme.overline!,
                ),
              ],
            ),
          ),
          const Spacer(),
          FooterContainer(
            textButton1: 'SHARE THIS',
            textButton2: 'ADD TO CART',
            routeName: HomePage(indexCurrent: 2),
          ),
        ],
      ),
    );
  }
}
