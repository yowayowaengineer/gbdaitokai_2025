import 'package:flutter_deck/flutter_deck.dart';
import 'package:gbdaitokai_2025/slides/src/opening/flutter_timeline_slide.dart';
import 'package:gbdaitokai_2025/slides/src/opening/icebreak_slide.dart';
import 'package:gbdaitokai_2025/slides/src/opening/title_slide.dart';

List<FlutterDeckSlideWidget> get slides => [
  const IcebreakSlide(),
  const TitleSlide(),
  const FlutterTimelineSlide(),
];
