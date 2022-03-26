import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      'gather',
      textAlign: TextAlign.center,
      style: theme.textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w800, color: theme.primaryColor),
    );
  }
}
