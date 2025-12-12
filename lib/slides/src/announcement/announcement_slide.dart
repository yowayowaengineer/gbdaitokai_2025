import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AnnouncementSlide extends FlutterDeckSlideWidget {
  const AnnouncementSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/announcement',
          title: '告知',
          header: FlutterDeckHeaderConfiguration(title: '告知'),
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
            const Text('第1回は3月7日(土)', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text('セッション(or LT) & 懇親会', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text('場所は○×△', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16),
            const Text('connpass見せる', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
