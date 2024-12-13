import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infra/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> latestVideos = videoPosts
        .map((v) => LocalVideoModel.fromJson(v).toVideoPostEntity())
        .toList();

    videos.addAll(latestVideos);
    initialLoading = false;

    notifyListeners();
  }
}
