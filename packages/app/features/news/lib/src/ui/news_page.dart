import 'package:app_cores_designsystem/ui.dart';
import 'package:app_cores_settings/ui.dart';
import 'package:app_features_news/src/gen/l10n/l10n.dart';
import 'package:app_features_news/src/ui/news_list_item.dart';
import 'package:common_data/news.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// お知らせ一覧画面
class NewsPage extends HookConsumerWidget {
  const NewsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nNews.of(context);
    final newsAsyncValue = ref.watch(newsProvider);
    return Scaffold(
      appBar: AppBar(
        leading: const Center(
          child: MainLogo(),
        ),
        leadingWidth: 48,
        titleSpacing: 4,
        centerTitle: false,
        title: Text(l.newsPageTitle),
        actions: const [
          SettingsButton(),
        ],
      ),
      body: newsAsyncValue.when(
        data: (newsList) {
          return newsList.isNotEmpty
              ? CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: newsList.length,
                        (context, index) {
                          final news = newsList[index];
                          return NewsListItem(
                            name: news.text,
                            publishedAt: news.startedAt,
                            uri: news.url,
                          );
                        },
                      ),
                    ),
                  ],
                )
              : Center(
                  child: Text(l.newsIsEmpty),
                );
        },
        error: (error, stackTrace) {
          return Center(
            child: Text(error.toString()),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
