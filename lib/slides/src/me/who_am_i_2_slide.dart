import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

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
        padding: const EdgeInsets.all(48.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('ピープルソフトウェア株式会社', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text(
              'イノベーション推進事業本部デジタル推進部部長',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            const Text('くらもとやすひろ', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text(
              'ピープルさんはFlutterアプリ開発の実績が多数ある',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
