import 'package:flutter_azure_tts/src/audio/audio_request_param.dart';
import 'package:flutter_azure_tts/src/voices/voices.dart';

class TtsParams extends AudioRequestParams {
  /// Rate is the speed at which the voice will speak.
  ///
  /// * `rate` default to 1.
  ///
  /// * style:
  /// The voice-specific speaking style. You can express emotions like cheerfulness, empathy, and calm.
  /// If the style value is missing or invalid, then it is ignored and the service uses the default neutral speech.
  ///
  /// * styleDegree:
  /// The intensity of the speaking style. You can specify a stronger or softer style to make the speech more expressive or subdued. The range of accepted values are: 0.01 to 2 inclusive. The default value is 1.
  TtsParams({
    required Voice voice,
    required String audioFormat,
    required text,
    double? rate,
    String? style,
    double? styleDegree,
  }) : super(
            audioFormat: audioFormat,
            text: text,
            voice: voice,
            rate: rate,
            style: style ?? "",
            styleDegree: styleDegree ?? 1);
}
