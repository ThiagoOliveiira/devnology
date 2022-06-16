import 'package:flutter/material.dart';

import '../../components/components.dart';
import 'components.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(title: 'Categories'),
              const SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                physics: const ClampingScrollPhysics(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    CategoryButton(
                      categoryText: 'Apparel',
                      colorGradient: [Color(0xffFFAE4E), Color(0xffFF7676)],
                      pathImage: 'lib/ui/assets/icons/apparel.svg',
                    ),
                    CategoryButton(
                      categoryText: 'Beauty',
                      colorGradient: [Color(0xFF76BAFF), Color(0xFF4EFFF8)],
                      pathImage: 'lib/ui/assets/icons/beauty.svg',
                    ),
                    CategoryButton(
                      categoryText: 'Shoes',
                      colorGradient: [Color(0xFF2FC145), Color(0xFFB4FF4E)],
                      pathImage: 'lib/ui/assets/icons/shoes.svg',
                    ),
                    CategoryButton(
                      categoryText: 'See All',
                      colorGradient: [
                        Color.fromARGB(255, 255, 255, 255),
                        Color.fromARGB(255, 255, 255, 255)
                      ],
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color(0xFFF9C705),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              const TitleText(title: 'Latest'),
              const SizedBox(height: 10),
            ],
          ),
        ),
        SingleChildScrollView(
          padding: const EdgeInsets.only(left: 25),
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'lib/ui/assets/images/banner_1.png',
                  fit: BoxFit.scaleDown,
                  height: 180,
                ),
              ),
              const SizedBox(width: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'lib/ui/assets/images/banner_2.png',
                  fit: BoxFit.scaleDown,
                  height: 180,
                ),
              ),
              const SizedBox(width: 25),
            ],
          ),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            children: const [
              ItemCard(
                pathImage: 'lib/ui/assets/images/products/3192783133_1SZ1.png',
                descriptionProduct: 'Lenovo - IdeaPad L340 15 Gaming',
                price: '717,80',
              ),
              ItemCard(
                pathImage:
                    'lib/ui/assets/images/products/3000222362_PRD_1500_1.png',
                descriptionProduct: 'Lenovo 15.6" ThinkPad P15s Gen 1',
                price: '1,519.00',
              ),
              ItemCard(
                pathImage:
                    'lib/ui/assets/images/products/ideapad-flex-i5-hero-subseries-br1.png',
                descriptionProduct: 'Notebook Lenovo 2 em 1',
                price: '4,699.00',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
