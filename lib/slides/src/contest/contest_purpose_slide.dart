import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class ContestPurposeSlide extends FlutterDeckSlideWidget {
  const ContestPurposeSlide({super.key})
    : super(
        configuration: const FlutterDeckSlideConfiguration(
          route: '/contest-purpose',
          title: 'コンテストを企画した目的',
          header: FlutterDeckHeaderConfiguration(title: 'コンテストを企画した目的'),
        ),
      );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(builder: (context) => Placeholder());
  }
}
