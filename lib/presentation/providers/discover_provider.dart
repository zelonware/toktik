import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/videopost_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;
  List<VideoPost> videos = [];

  final VideoPostRepository repository;

  DiscoverProvider({required this.repository});

  Future<void> loadNextPage() async {
    final List<VideoPost> latestVideos = await repository.getVideos();

    videos.addAll(latestVideos);
    initialLoading = false;

    notifyListeners();
  }
}
