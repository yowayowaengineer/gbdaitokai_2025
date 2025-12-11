import 'package:flutter_deck/flutter_deck.dart';
import 'package:gbdaitokai_2025/slides/src/me/who_am_i_1_slide.dart';
import 'package:gbdaitokai_2025/slides/src/opening/flutter_growth_slide.dart';
import 'package:gbdaitokai_2025/slides/src/opening/flutter_timeline_slide.dart';
import 'package:gbdaitokai_2025/slides/src/opening/icebreak_slide.dart';
import 'package:gbdaitokai_2025/slides/src/opening/title_slide.dart';

List<FlutterDeckSlideWidget> get slides => [
  const IcebreakSlide(),
  const TitleSlide(),
  const FlutterTimelineSlide(),
  const FlutterGrowthSlide(),
  const WhoAmISlide1(),
];
