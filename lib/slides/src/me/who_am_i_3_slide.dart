import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WhoAmISlide3 extends FlutterDeckSlideWidget {
  const WhoAmISlide3({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/who-am-i-3',
          title: '自己紹介③',
          header: FlutterDeckHeaderConfiguration(title: 'よわよわエンジニア is 誰'),
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(builder: (context) => const Placeholder());
  }
}
