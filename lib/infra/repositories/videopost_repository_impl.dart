import 'package:toktik/domain/datasources/videopost_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/videopost_repository.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  final VideoPostDatasource ds;

  VideoPostRepositoryImpl({required this.ds});

  @override
  Future<List<VideoPost>> getVideos() {
    return ds.getVideos();
  }

  @override
  Future<List<VideoPost>> getVideosByUser(String userId) {
    throw UnimplementedError();
  }
}
