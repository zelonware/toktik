import 'package:flutter/material.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/infra/datasources/videopost_datasources_impl.dart';
import 'package:toktik/infra/repositories/videopost_repository_impl.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const TokTikApp());
}

class TokTikApp extends StatelessWidget {
  const TokTikApp({super.key});

  @override
  Widget build(BuildContext context) {
    final VideoPostRepositoryImpl repoImpl =
        VideoPostRepositoryImpl(ds: VideoPostDatasourceImpl());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false,
            create: (_) =>
                DiscoverProvider(repository: repoImpl)..loadNextPage())
      ],
      child: MaterialApp(
        title: 'TokTik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
