import 'package:toktik/domain/datasources/videopost_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infra/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_posts.dart';

class VideoPostDatasourceImpl implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getVideos() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> latestVideos = videoPosts
        .map((v) => LocalVideoModel.fromJson(v).toVideoPostEntity())
        .toList();

    return latestVideos;
  }

  @override
  Future<List<VideoPost>> getVideosByUser(String userId) {
    throw UnimplementedError();
  }
}
