import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryButton extends StatelessWidget {
  final String? pathImage;
  final Icon? icon;
  final String categoryText;
  final List<Color> colorGradient;
  const CategoryButton({
    this.pathImage,
    this.icon,
    required this.categoryText,
    required this.colorGradient,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 22),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: const CircleBorder(),
              primary: Colors.transparent,
              elevation: 0,
            ),
            onPressed: () {},
            child: Container(
              width: MediaQuery.of(context).size.width * 0.173,
              height: MediaQuery.of(context).size.width * 0.173,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: colorGradient,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(100.0)),
              child: pathImage != null
                  ? SvgPicture.asset(
                      pathImage!,
                      fit: BoxFit.scaleDown,
                    )
                  : icon,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            categoryText,
            style: Theme.of(context).textTheme.subtitle1,
          )
        ],
      ),
    );
  }
}
