import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class GeneralWidgets {
  static PreferredSize appBarWidgtet(BuildContext ctx) {
    return PreferredSize(
      preferredSize: const Size(60, 60),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Profile',
              style: Theme.of(ctx).textTheme.bodyLarge!.copyWith(
                    color: Colors.black,
                  ),
            ),
            const Icon(
              IconlyLight.setting,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
