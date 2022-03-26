import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/utils/utils.dart';
import '../../../core/widgets/widgets.dart';
import '../../../providers.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const _AppBar(),
          Consumer(builder: (context, ref, child) {
            return TextButton(
              onPressed: () async {
                // TODO: Facade for Auth
                await ref.read(firebaseAuthProvider).signInAnonymously();
                context.router.popUntilRoot();
              },
              child: const Text('Sign In Anonymously'),
            );
          }),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      width: double.infinity,
      decoration: const BoxDecoration(
        // color: theme.colorScheme.onPrimary,
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32.0),
          bottomRight: Radius.circular(32.0),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [const AppTitle(), SvgPicture.asset(ImagePath.kAuthAppBar), const SizedBox(height: 16.0)],
        ),
      ),
    );
  }
}
