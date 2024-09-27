import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ScaleAnimationWidget extends StatelessWidget {
  const ScaleAnimationWidget({
    super.key,
    required this.children,
  });

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      // key: Key(Random().nextInt(10).toString()),
      child: Wrap(
        alignment: WrapAlignment.start,
        children: [
          ...List.generate(
            children.length,
            (index) {
              return AnimationConfiguration.staggeredGrid(
                  position: index,
                  duration: const Duration(milliseconds: 900),
                  columnCount: children.length,
                  child: ScaleAnimation(
                      duration: const Duration(milliseconds: 900),
                      curve: Curves.fastLinearToSlowEaseIn,
                      child: FadeInAnimation(child: children[index])));
            },
          ),
        ],
      ),
    );
  }
}
