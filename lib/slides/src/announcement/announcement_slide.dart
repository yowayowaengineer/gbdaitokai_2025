import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

class AnnouncementSlide extends FlutterDeckSlideWidget {
  const AnnouncementSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/announcement',
          title: '告知',
          header: FlutterDeckHeaderConfiguration(title: '告知！'),
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _AnnouncementSlideContent(),
    );
  }
}

class _AnnouncementSlideContent extends StatelessWidget {
  const _AnnouncementSlideContent();

  // TODO: リンクURLを後で修正してください
  Future<void> _openUrl() async {
    final url = Uri.parse(
      'https://okayama-dot-flutter.connpass.com/',
    ); // TODO: 実際のURLに変更
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 48.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 左側: テキスト
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.blue[700],
                      size: 32,
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        '第1回は3月7日(土)',
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                  ],
                ),
                const Gap(40),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.blue[700],
                      size: 32,
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'セッション（ & 懇親会？）',
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                  ],
                ),
                const Gap(40),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.blue[700],
                      size: 32,
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        '場所は調整中（倉敷の可能性が高い？）',
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 32),
          // 右側: 画像（クリック可能）
          // TODO: 画像パスとリンクURLを後で修正してください
          Expanded(
            flex: 1,
            child: Center(
              child: GestureDetector(
                onTap: _openUrl,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 500,
                      maxHeight: 500,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/logo_word_512x512.webp', // TODO: 実際の画像パスに変更
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
