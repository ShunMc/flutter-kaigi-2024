import 'package:flutter/material.dart';
import 'package:ticket_web/core/components/site_footer.dart';
import 'package:ticket_web/core/components/site_header.dart';

/// サイトのScaffold
/// [showHeader] ヘッダーを表示するかどうか
/// [showFooter] フッターを表示するかどうか
/// [onHeaderTitleTap] ヘッダーのタイトルをタップしたときのコールバック ([showHeader]がtrueのときのみ有効)
/// [slivers] 表示するSliverのリスト
class SiteScaffold extends StatelessWidget {
  const SiteScaffold._({
    required this.showHeader,
    required this.showFooter,
    required this.onHeaderTitleTap,
    required this.slivers,
    required this.headerAutomaticallyImplyLeading,
  }) : assert(
          showHeader || onHeaderTitleTap == null,
          'onHeaderTitleTapはshowHeaderがtrueのときのみ指定できます',
        );

  /// HeaderとFooterの間に[body]を表示する
  factory SiteScaffold.widget({
    required Widget body,
    bool showHeader = true,
    bool showFooter = true,
    VoidCallback? onHeaderTitleTap,
    bool headerAutomaticallyImplyLeading = false,
  }) =>
      SiteScaffold._(
        showHeader: showHeader,
        showFooter: showFooter,
        onHeaderTitleTap: onHeaderTitleTap,
        headerAutomaticallyImplyLeading: headerAutomaticallyImplyLeading,
        slivers: [
          SliverToBoxAdapter(
            child: body,
          ),
        ],
      );

  factory SiteScaffold.slivers({
    required List<Widget> slivers,
    bool showHeader = true,
    bool showFooter = true,
    VoidCallback? onHeaderTitleTap,
    bool headerAutomaticallyImplyLeading = false,
  }) =>
      SiteScaffold._(
        showHeader: showHeader,
        showFooter: showFooter,
        onHeaderTitleTap: onHeaderTitleTap,
        slivers: slivers,
        headerAutomaticallyImplyLeading: headerAutomaticallyImplyLeading,
      );

  final bool showHeader;
  final bool showFooter;

  final VoidCallback? onHeaderTitleTap;

  final List<Widget> slivers;

  final bool headerAutomaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showHeader
          ? SiteHeader(
              onHeaderTitleTap: onHeaderTitleTap,
            )
          : null,
      body: CustomScrollView(
        physics: const RangeMaintainingScrollPhysics(),
        slivers: [
          ...slivers,
          if (showFooter)
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Spacer(),
                  SiteFooter(),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
