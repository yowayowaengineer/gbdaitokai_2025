import 'package:flutter_deck/flutter_deck.dart';
import 'package:gbdaitokai_2025/slides/src/contest/contest_purpose_slide.dart';
import 'package:gbdaitokai_2025/slides/src/contest/flutter_app_contest_slide.dart';
import 'package:gbdaitokai_2025/slides/src/me/who_am_i_1_slide.dart';
import 'package:gbdaitokai_2025/slides/src/me/who_am_i_2_slide.dart';
import 'package:gbdaitokai_2025/slides/src/me/who_am_i_3_slide.dart';
import 'package:gbdaitokai_2025/slides/src/me/who_am_i_4_slide.dart';
import 'package:gbdaitokai_2025/slides/src/opening/flutter_growth_slide.dart';
import 'package:gbdaitokai_2025/slides/src/opening/flutter_timeline_slide.dart';
import 'package:gbdaitokai_2025/slides/src/opening/icebreak_slide.dart';
import 'package:gbdaitokai_2025/slides/src/opening/title_slide.dart';
import 'package:gbdaitokai_2025/slides/src/why_now/enjoy_flutter_growth_slide.dart';
import 'package:gbdaitokai_2025/slides/src/why_now/talent_existence_slide.dart';
import 'package:gbdaitokai_2025/slides/src/why_now/why_now_slide.dart';

List<FlutterDeckSlideWidget> get slides => [
  // オープニング
  const IcebreakSlide(),
  const TitleSlide(),
  const FlutterTimelineSlide(),
  const FlutterGrowthSlide(),

  // 自己紹介
  const WhoAmISlide1(),
  const WhoAmISlide2(),
  const WhoAmISlide3(),
  const WhoAmISlide4(),

  // コンテスト
  const FlutterAppContestSlide(),
  const ContestPurposeSlide(),

  // なぜ今なのか
  const WhyNowSlide(),
  const EnjoyFlutterGrowthSlide(),
  const TalentExistenceSlide(),
];
