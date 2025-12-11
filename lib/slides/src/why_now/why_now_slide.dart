import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WhyNowSlide extends FlutterDeckSlideWidget {
  const WhyNowSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/why-now',
          title: 'なぜ今なのか',
          header: FlutterDeckHeaderConfiguration(title: 'なぜ今なのか'),
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
            const Text(
              'コンテストでFlutterを継続的に学習する人は生まれたものの (岡山で) Flutterのお仕事がなかった',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            const Text(
              'コロナ以降、フルリモート案件が増えFlutterのお仕事ができるようになった',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            const Text(
              '自身としてFlutterの実績ができたので、またあの時(コンテストの時)のように仲間を作って盛り上げていきたい',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
