import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:gap/gap.dart';

class WhoAmISlide2 extends FlutterDeckSlideWidget {
  const WhoAmISlide2({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/who-am-i-2',
          title: '自己紹介②',
          header: FlutterDeckHeaderConfiguration(
            title: 'よわよわエンジニア is 誰 (所属的な話)',
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
                  const Text('ピープルソフトウェア株式会社', style: TextStyle(fontSize: 24)),
                  const Gap(16),
                  const Text(
                    'イノベーション推進事業本部デジタル推進部部長',
                    style: TextStyle(fontSize: 24),
                  ),
                  const Gap(40),
                  const Text('くらもとやすひろ', style: TextStyle(fontSize: 40)),
                  const Gap(40),
                  const Text(
                    'ピープルさんはFlutterアプリ開発の実績が多数ある',
                    style: TextStyle(fontSize: 24),
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
                    'assets/images/psc.webp',
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
