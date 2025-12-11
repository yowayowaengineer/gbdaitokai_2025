import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WhoAmISlide4 extends FlutterDeckSlideWidget {
  const WhoAmISlide4({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/who-am-i-4',
          title: '自己紹介④',
          header: FlutterDeckHeaderConfiguration(title: 'よわよわエンジニア is 誰'),
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(builder: (context) => const Placeholder());
  }
}
