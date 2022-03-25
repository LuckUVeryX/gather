import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/utils/utils.dart';
import '../../core/widgets/widgets.dart';
import 'controllers/landing_image_notifier.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const _BackgroundImage(),
          _GradientOverlay(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(height: 8),
                    AppLogo(),
                    Spacer(flex: 10),
                    _TitleText(),
                    SizedBox(height: 4.0),
                    _ContentText(),
                    Spacer(flex: 2),
                    _GetStartedButton(),
                    SizedBox(height: 12.0),
                    _LoginButton(),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  const _BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer(builder: (context, ref, child) {
      return Stack(
        children: ref.watch(landingImageProvider).map((e) {
          return _CachedBackgroundImage(size: size, imageUrl: e.imageUrl, opacity: e.opacity);
        }).toList(),
      );
    });
  }
}

class _CachedBackgroundImage extends StatelessWidget {
  const _CachedBackgroundImage({
    Key? key,
    required this.size,
    required this.imageUrl,
    required this.opacity,
  }) : super(key: key);

  final Size size;
  final String imageUrl;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacity,
      duration: const Duration(milliseconds: 2000),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        height: size.height,
        width: size.width,
        fadeInDuration: const Duration(seconds: 1),
        fadeOutDuration: const Duration(seconds: 3),
      ),
    );
  }
}

class _GradientOverlay extends StatelessWidget {
  const _GradientOverlay({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.3),
            Colors.transparent,
            Colors.transparent,
            Colors.black.withOpacity(0.5),
            Colors.black,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.2, 0.4, 0.6, 0.8, 1.0],
        ),
      ),
      child: child,
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Text(
      'Stress-free gatherings.',
      textAlign: TextAlign.center,
      style: textTheme.headlineSmall?.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class _ContentText extends StatelessWidget {
  const _ContentText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Text(
      kLoremIpsum,
      maxLines: 2,
      textAlign: TextAlign.center,
      overflow: TextOverflow.ellipsis,
      style: textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onPrimary, fontWeight: FontWeight.w300),
    );
  }
}

class _GetStartedButton extends StatelessWidget {
  const _GetStartedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: theme.colorScheme.onPrimary,
          onPrimary: theme.colorScheme.primary,
        ),
        child: const Text('GET STARTED'),
      ),
    );
  }
}

class _LoginButton extends ConsumerWidget {
  const _LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return TextButton(
      onPressed: () {},
      child: Text('LOG IN', style: textTheme.button?.copyWith(color: theme.colorScheme.onPrimary)),
    );
  }
}
