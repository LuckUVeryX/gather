import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/widgets.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GatherAppBar(
      actions: [
        IconButton(
          onPressed: () {},
          icon: Badge(
            badgeContent: Text(
              (Random().nextInt(4) + 1).toString(),
              style: TextStyle(color: theme.colorScheme.onPrimary),
            ),
            child: const Icon(CupertinoIcons.chat_bubble),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
