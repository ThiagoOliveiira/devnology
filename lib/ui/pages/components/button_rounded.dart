import 'package:flutter/material.dart';

class ButtonRounded extends StatelessWidget {
  final String textButton;
  final IconData icon;
  final Color? colorButton;
  final Color? colorText;
  final Color? colorIcon;
  final Widget? routeName;
  final bool? saveRoute;
  const ButtonRounded({
    required this.textButton,
    required this.icon,
    this.saveRoute = false,
    this.routeName,
    this.colorButton = Colors.white,
    this.colorText = Colors.white,
    this.colorIcon = Colors.white,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: colorButton,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 5,
      onPressed: routeName != null
          ? () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => routeName!),
                (route) => saveRoute!,
              );
            }
          : () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 13, left: 15, bottom: 13, right: 15),
            child: Text(
              textButton,
              style: Theme.of(context).textTheme.button!.copyWith(
                    fontWeight: FontWeight.w900,
                    color: colorText,
                  ),
            ),
          ),
          Icon(
            icon,
            size: 35,
            color: colorIcon,
          ),
        ],
      ),
    );
  }
}
