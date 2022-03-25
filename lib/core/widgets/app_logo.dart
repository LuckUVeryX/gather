import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 12.0),
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary,
        shape: BoxShape.circle,
      ),
      child: Text(
        'g',
        textAlign: TextAlign.center,
        style: textTheme.displaySmall?.copyWith(color: theme.primaryColor, fontWeight: FontWeight.w800),
      ),
    );
  }
}
