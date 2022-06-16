import 'package:flutter/material.dart';

import '../../components/components.dart';

class ItemCart extends StatelessWidget {
  final String pathImage;
  final String descriptionItem;
  final String priceItem;

  const ItemCart({
    required this.pathImage,
    required this.descriptionItem,
    required this.priceItem,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: Colors.amber,
          radius: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              pathImage,
              fit: BoxFit.fill,
              height: 100,
            ),
          ),
        ),
        const SizedBox(width: 22),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextProduct(
                text: descriptionItem,
                textStyle: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 10),
              TextProduct(
                text: priceItem,
                textStyle: Theme.of(context)
                    .textTheme
                    .overline!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(Icons.remove_circle_rounded),
                    iconSize: 25,
                  ),
                  Text(
                    '1',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  IconButton(
                    hoverColor: Colors.amber,
                    padding: EdgeInsets.zero,
                    alignment: Alignment.centerRight,
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle_rounded),
                    iconSize: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
