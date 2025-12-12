import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class FlutterAppContestSlide extends FlutterDeckSlideWidget {
  const FlutterAppContestSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/flutter-app-contest',
          title: 'Flutterアプリコンテスト',
          header: FlutterDeckHeaderConfiguration(title: 'Flutterアプリコンテスト'),
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
                    '✨ 実施したのは2019年12月～ （Flutter1.0公開の1年後）',
                    style: TextStyle(fontSize: 24),
                  ),
                  const Gap(24),
                  const Text('✨ 会社内で参加者をつのり開催', style: TextStyle(fontSize: 24)),
                  const Gap(24),
                  const Text(
                    '✨ 翌2020年の新入社員を審査員として採用',
                    style: TextStyle(fontSize: 24),
                  ),
                  const Gap(24),
                  const Text(
                    '✨ 表彰式は2020年の全体会議（全社員が集まる会議）で実施',
                    style: TextStyle(fontSize: 24),
                  ),
                  const Gap(24),
                  const Text('✨ 入賞者には賞金も出した', style: TextStyle(fontSize: 24)),
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
                    'assets/images/flutter_contest.webp',
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
