import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
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
        const SizedBox(height: 20),
        _CustomIconButton(
            stat: vid.views, iconToShow: Icons.remove_red_eye_outlined),
        const SizedBox(height: 20),
        SpinPerfect(
          infinite: true,
          duration: Duration(seconds: 10),
          child: const _CustomIconButton(
              stat: 0, iconToShow: Icons.play_circle_outlined),
        ),
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
        if (stat > 0)
          Text(
            HumanFormats.humanReadableNumber(stat.toDouble()),
            style: const TextStyle(color: Colors.white),
          )
      ],
    );
  }
}
