import 'package:get/get.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en": {
          "english": "English",
          "france": "France",
          "arabic": "Arabic",
          "choose_a_language": "Choose a language",
        },
        "fr": {
          "english": "Anglais",
          "france": "Français",
          "arabic": "Arabe",
          "choose_a_language": "Choisissez une langue",
        },
        "ar": {
          "english": "الانجليزية",
          "france": "الفرنسية",
          "arabic": "العربية",
          "choose_a_language": "اختر لغة",
        },
      };
}
