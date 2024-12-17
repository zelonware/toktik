import 'package:flutter/material.dart';

class VideoGradient extends StatelessWidget {
  const VideoGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned.fill(
      child: DecoratedBox(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  stops: [0.5, 1.0],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black]))),
    );
  }
}
