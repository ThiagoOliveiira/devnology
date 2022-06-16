import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

bottonNavigationBarItem(String label, IconData icon, BuildContext context,
    {bool isCart = false, Color colorIcon = Colors.white}) {
  return BottomNavigationBarItem(
    icon: isCart
        ? Stack(alignment: Alignment.bottomRight, children: [
            SvgPicture.asset(
              'lib/ui/assets/icons/shopping_cart.svg',
              width: 24,
            ),
            Positioned(
              left: 11,
              top: 9,
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFFC600),
                ),
                child: Text(
                  '2',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          ])
        : Icon(
            icon,
            color: colorIcon,
          ),
    label: label,
  );
}
