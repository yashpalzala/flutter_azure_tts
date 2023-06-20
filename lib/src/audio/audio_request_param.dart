import 'package:flutter_azure_tts/src/voices/voices.dart';

class AudioRequestParams {
  final Voice voice;
  final String text;
  final String audioFormat;
  final String style;
  final double styleDegree;
  double? rate;

  AudioRequestParams({
    required this.voice,
    required this.text,
    required this.audioFormat,
    required this.style,
    required this.styleDegree,
    this.rate,
  });
}
