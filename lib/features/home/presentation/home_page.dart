import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [
          _Greeting(),
          SizedBox(height: 12.0),
          _GatheringSearchTextField(),
          SizedBox(height: 16.0),
          _BalanceAndPointsDisplay(),
          SizedBox(height: 8.0),
          _DealsAndFavouritesDisplay(),
        ],
      ),
    );
  }
}

class _Greeting extends StatelessWidget {
  const _Greeting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        '\$TimedGreeting, \$Name 👋',
        style: textTheme.headlineMedium?.copyWith(
          fontWeight: FontWeight.w700,
          color: theme.colorScheme.onSurface,
        ),
      ),
    );
  }
}

class _GatheringSearchTextField extends HookConsumerWidget {
  const _GatheringSearchTextField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search for a gathering',
      ),
    );
  }
}

class _BalanceAndPointsDisplay extends StatelessWidget {
  const _BalanceAndPointsDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: InputDecorator(
            decoration: InputDecoration(
              labelText: 'Balance',
              suffixIcon: Icon(Icons.account_balance_wallet_outlined, color: theme.colorScheme.primary),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text('XX,XXX', style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700)),
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: InputDecorator(
            decoration: InputDecoration(
              labelText: 'Points',
              suffixIcon: Icon(FontAwesomeIcons.award, color: theme.colorScheme.primary),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text('XX,XXX', style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700)),
            ),
          ),
        ),
      ],
    );
  }
}

class _DealsAndFavouritesDisplay extends StatelessWidget {
  const _DealsAndFavouritesDisplay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: InputDecorator(
            decoration: InputDecoration(
              suffixIcon: Icon(CupertinoIcons.tag, color: theme.colorScheme.primary),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text('Deals', style: textTheme.titleMedium),
            ),
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: InputDecorator(
            decoration: InputDecoration(
              suffixIcon: Icon(FontAwesomeIcons.heart, color: theme.colorScheme.primary),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text('Favourites', style: textTheme.titleMedium),
            ),
          ),
        ),
      ],
    );
  }
}
