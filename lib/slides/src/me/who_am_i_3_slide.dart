import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WhoAmISlide3 extends FlutterDeckSlideWidget {
  const WhoAmISlide3({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/who-am-i-3',
          title: '自己紹介③',
          header: FlutterDeckHeaderConfiguration(
            title: 'よわよわエンジニア is 誰 (エンジニアな話)',
          ),
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 48.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('(Javaをはじめとしたバックエンド開発)', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text('Vueをはじめとしたフロントエンド開発', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text('Flutterを使ったアプリ開発', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text('個人的に………………', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text('pub.devにプラグインを公開している', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text('Qiitaでのプラグイン開発になった話', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
