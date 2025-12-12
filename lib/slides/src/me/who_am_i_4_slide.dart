import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class WhoAmISlide4 extends FlutterDeckSlideWidget {
  const WhoAmISlide4({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/who-am-i-4',
          title: '自己紹介④',
          header: FlutterDeckHeaderConfiguration(
            title: 'よわよわエンジニア is 誰 (コミュニティな話)',
          ),
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Padding(
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
                  const Text(
                    '✨ 最近エンジニアコミュニティに参加するようになった（できるようになった）',
                    style: TextStyle(fontSize: 24),
                  ),
                  const Gap(24),
                  const Text(
                    '✨ OSOの運営に入ったことで視野が広がった',
                    style: TextStyle(fontSize: 24),
                  ),
                  const Gap(40),
                  const Text(
                    '✨ なにか自分でもコミュニティを立ち上げたい！',
                    style: TextStyle(fontSize: 24),
                  ),
                  const Gap(24),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text.rich(
                      TextSpan(
                        style: const TextStyle(fontSize: 24),
                        children: const [
                          TextSpan(text: '🚀 自分の中でのコミュニティに対する関わりは '),
                          TextSpan(
                            text: 'Flutterアプリコンテスト',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: ' がきっかけ'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 32),
            // 右側: 画像
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/oso.webp',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
