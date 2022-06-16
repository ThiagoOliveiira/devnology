import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  final double iconSpace;
  final double widthImage;
  final TextStyle textStyle;
  final TextStyle devTextStyle;

  const Logo({
    required this.widthImage,
    required this.iconSpace,
    required this.textStyle,
    required this.devTextStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SvgPicture.asset(
              'lib/ui/assets/icons/Caminho_15190.svg',
              color: const Color(0xff0CB351),
              width: widthImage,
            ),
            SvgPicture.asset(
              'lib/ui/assets/icons/Caminho_15191.svg',
              width: widthImage,
            ),
          ],
        ),
        SizedBox(width: MediaQuery.of(context).size.width * iconSpace),
        Text('dev', style: devTextStyle),
        Text(
          'nology',
          style: textStyle,
        ),
        SizedBox(width: MediaQuery.of(context).size.width * iconSpace),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Transform.rotate(
              angle: 3.14 / 1,
              child: SvgPicture.asset(
                'lib/ui/assets/icons/Caminho_15190.svg',
                color: const Color(0xff0CB351),
                width: widthImage,
              ),
            ),
            SvgPicture.asset(
              'lib/ui/assets/icons/Caminho_15192.svg',
              width: widthImage,
            ),
          ],
        ),
      ],
    );
  }
}
