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
        "xmlns:mstts='https://www.w3.org/2001/mstts' "
        "xml:lang='${voice.locale}'>"
        "<voice xml:lang='${voice.locale}' "
        "xml:gender='${voice.gender}' "
        "name='${voice.shortName}'>"
        "<prosody rate='$speed'>"
        "<mstts:express-as style='$style' styledegree='$styleDegree'>"
        "$text"
        "<\/mstts:express-as>"
        "<\/prosody><\/voice><\/speak>";
  }
}
