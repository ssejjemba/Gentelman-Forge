import 'package:flutter/material.dart';
import 'package:gentelman_forge/core/const/color_constants.dart';

import 'status_card.dart';

class StatusesRow extends StatelessWidget {
  const StatusesRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          StatusCard(
            iconData: Icons.shopping_bag_rounded,
            iconBackground: ColorConstants.primaryColor.withOpacity(0.1),
            iconColor: ColorConstants.primaryColor,
            statusName: 'Progress order',
            status: '10+',
            onTap: () {},
          ),
          StatusCard(
            iconData: Icons.add_shopping_cart,
            iconBackground: Colors.blue.withOpacity(0.1),
            iconColor: Colors.blue,
            statusName: 'Promocodes',
            status: '5',
            onTap: () {},
          ),
          StatusCard(
            iconData: Icons.star,
            iconBackground: Colors.yellow.withOpacity(0.1),
            iconColor: Colors.yellow,
            statusName: 'Reviews',
            status: '4.5K',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
