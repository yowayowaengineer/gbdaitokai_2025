import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

class TalentExistenceSlide extends FlutterDeckSlideWidget {
  const TalentExistenceSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/talent-existence',
          title: 'タレントの存在',
          header: FlutterDeckHeaderConfiguration(title: 'なぜ今なのか（タレントの存在）'),
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _TalentExistenceSlideContent(),
    );
  }
}

class _TalentExistenceSlideContent extends StatefulWidget {
  const _TalentExistenceSlideContent();

  @override
  State<_TalentExistenceSlideContent> createState() =>
      _TalentExistenceSlideContentState();
}

class _TalentExistenceSlideContentState
    extends State<_TalentExistenceSlideContent> {
  int _visibleCount = 0; // 表示するテキストの数

  void _onTap() {
    setState(() {
      if (_visibleCount < 6) {
        _visibleCount++;
      }
    });
  }

  Future<void> _openQiitaUrl() async {
    final url = Uri.parse('https://qiita.com/advent-calendar/2025/flutter');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.transparent,
        child: Padding(
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
                    if (_visibleCount >= 1)
                      const Text(
                        '✨ 当時コンテストに参加した「やくらん」氏',
                        style: TextStyle(fontSize: 24),
                      ),
                    if (_visibleCount >= 1) const Gap(24),
                    if (_visibleCount >= 2)
                      Text.rich(
                        TextSpan(
                          style: const TextStyle(fontSize: 24),
                          children: const [
                            TextSpan(text: '✨ コンテスト以降、'),
                            TextSpan(
                              text: '仕事そっちのけで',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            TextSpan(
                              text: ' Flutterの力をメキメキとつけ、個人的にお仕事の依頼を受けるほどに',
                            ),
                          ],
                        ),
                      ),
                    if (_visibleCount >= 2) const Gap(24),
                    if (_visibleCount >= 3)
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: const Text(
                          '👆 当社に副業規定を作らせた張本人',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    if (_visibleCount >= 3) const Gap(24),
                    if (_visibleCount >= 4)
                      const Text(
                        '✨ Flutter界隈で活発に活動していて、FlutterKaigiでもかなりの存在感を示していた',
                        style: TextStyle(fontSize: 24),
                      ),
                    if (_visibleCount >= 4) const Gap(24),
                    if (_visibleCount >= 5)
                      const Text(
                        '✨ そんな彼曰く「岡山に（Flutterの）知り合いいないんですよね」',
                        style: TextStyle(fontSize: 32),
                      ),
                    if (_visibleCount >= 5) const Gap(24),
                    if (_visibleCount >= 6)
                      const Text(
                        '✨ それなら作るしかない！',
                        style: TextStyle(fontSize: 40),
                      ),
                  ],
                ),
              ),
              const SizedBox(width: 32),
              // 右側: 画像
              Expanded(
                flex: 1,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // 円形の画像
                      Container(
                        width: 350,
                        height: 350,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/yakuran.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Gap(32),
                      // QRコード画像（クリック可能）
                      GestureDetector(
                        onTap: _openQiitaUrl,
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            constraints: const BoxConstraints(
                              maxWidth: 100,
                              maxHeight: 100,
                            ),
                            child: Image.asset(
                              'assets/images/QR_yakuran.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      const Gap(8),
                      // 説明文字（クリック可能）
                      GestureDetector(
                        onTap: _openQiitaUrl,
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Text(
                            'Qiita - Flutter Advent Calendar 2025',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue[600],
                              decoration: TextDecoration.underline,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
