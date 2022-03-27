import 'package:flutter/material.dart';

class GatherAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GatherAppBar({
    Key? key,
    this.actions,
  }) : super(key: key);

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('gather'),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
