import 'package:flutter/material.dart';

class AnimationWedget extends StatelessWidget {
  const AnimationWedget({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slideAnimation,
        builder: (context ,_) {
          return SlideTransition(
            position: slideAnimation,
            child: const Text(
              "Read Free Books",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          );
        }
    );
  }
}