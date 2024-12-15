import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost vid;

  const VideoButtons({super.key, required this.vid});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
            stat: vid.likes, iconToShow: Icons.favorite, iconColor: Colors.red),
        _CustomIconButton(
            stat: vid.views, iconToShow: Icons.remove_red_eye_outlined)
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final int stat;
  final IconData iconToShow;
  final Color? color;

  const _CustomIconButton(
      {required this.stat, required this.iconToShow, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(iconToShow),
          color: color,
          iconSize: 30,
        ),
        Text(
          '$stat',
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
