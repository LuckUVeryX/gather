import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/utils.dart';
import '../widgets/widgets.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backgroundColor = Theme.of(context).primaryColor;
    return Scaffold(backgroundColor: backgroundColor, body: const Center(child: LoadingIndicator()));
  }
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: _space + _logoSize),
          child: AppTitle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: _space + _logoSize),
          child: AnimatedLoading(),
        ),
      ],
    );
  }
}

class AnimatedLoading extends HookWidget {
  const AnimatedLoading({
    Key? key,
  }) : super(key: key);

  static const duration = Duration(milliseconds: 5500);

  static const logoOffset = 0.39;
  static const calendarOffset = 0.135;
  static const martiniOffset = -0.105;
  static const mapMarkerOffset = -0.37;

  static const staticWeight = 1.0;
  // static const staticAnimWeight = 0.8;
  static const staticAnimWeight = 0.3;

  static const curve = Curves.easeOutBack;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = useAnimationController(duration: duration)..repeat();

    return Container(
      width: _logoSize,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(color: theme.cardColor, shape: BoxShape.circle),
      child: SlideTransition(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: ImagePath.loadingPaths.map((e) => _LoadingAsset(svgPath: e)).toList(),
        ),
        position: TweenSequence<Offset>(
          [
            TweenSequenceItem(
              tween: Tween<Offset>(
                begin: const Offset(0, logoOffset),
                end: const Offset(0, logoOffset),
              ),
              weight: staticWeight,
            ),
            TweenSequenceItem(
              tween: Tween<Offset>(
                begin: const Offset(0, logoOffset),
                end: const Offset(0, calendarOffset),
              ).chain(CurveTween(curve: curve)),
              weight: staticAnimWeight,
            ),
            TweenSequenceItem(
              tween: Tween<Offset>(
                begin: const Offset(0, calendarOffset),
                end: const Offset(0, calendarOffset),
              ),
              weight: staticWeight,
            ),
            TweenSequenceItem(
              tween: Tween<Offset>(
                begin: const Offset(0, calendarOffset),
                end: const Offset(0, martiniOffset),
              ).chain(CurveTween(curve: curve)),
              weight: staticAnimWeight,
            ),
            TweenSequenceItem(
              tween: Tween<Offset>(
                begin: const Offset(0, martiniOffset),
                end: const Offset(0, martiniOffset),
              ),
              weight: staticWeight,
            ),
            TweenSequenceItem(
              tween: Tween<Offset>(
                begin: const Offset(0, martiniOffset),
                end: const Offset(0, mapMarkerOffset),
              ).chain(CurveTween(curve: curve)),
              weight: staticAnimWeight,
            ),
            TweenSequenceItem(
              tween: Tween<Offset>(
                begin: const Offset(0, mapMarkerOffset),
                end: const Offset(0, mapMarkerOffset),
              ),
              weight: staticWeight,
            ),
            TweenSequenceItem(
              tween: Tween<Offset>(
                begin: const Offset(0, mapMarkerOffset),
                end: const Offset(0, logoOffset),
              ).chain(CurveTween(curve: curve)),
              weight: staticAnimWeight,
            ),
          ],
        ).animate(controller),
      ),
    );
  }
}

class _LoadingAsset extends StatelessWidget {
  const _LoadingAsset({
    Key? key,
    required this.svgPath,
  }) : super(key: key);

  final String svgPath;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SvgPicture.asset(svgPath, color: theme.primaryColor),
    );
  }
}

const _logoSize = 70.0;
const _space = 6.0;
