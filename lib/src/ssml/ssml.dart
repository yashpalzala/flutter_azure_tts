import 'package:flutter_azure_tts/src/voices/voice_model.dart';

class Ssml {
  Ssml(
      {required this.voice,
      required this.text,
      required this.speed,
      required this.style,
      required this.styleDegree});

  final Voice voice;
  final String text;
  final double speed;
  final String style;
  final double styleDegree;

  String get buildSsml {
    return "<speak version='1.0' "
        "xmlns='http://www.w3.org/2001/10/synthesis' "
        "xml:lang='${voice.locale}'>"
        "<voice xml:lang='${voice.locale}' "
        "xml:gender='${voice.gender}' "
        "${style != null ? "xml:style='$style' " : ""}"
        "${styleDegree != null ? "xml:styledegree='$styleDegree' " : ""}"
        "name='${voice.shortName}'>"
        "<prosody rate='$speed'>"
        "$text"
        "<\/prosody><\/voice><\/speak>";
  }
}
