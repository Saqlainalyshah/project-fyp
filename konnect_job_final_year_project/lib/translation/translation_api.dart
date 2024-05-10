import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String?> translateText(String textToTranslate, String targetLanguage, String apiKey) async {
  final baseUrl = 'https://translation.googleapis.com/language/translate/v2';
  final endpoint = '$baseUrl?key=$apiKey';

  final Map<String, dynamic> requestBody = {
    'q': textToTranslate,
    'target': targetLanguage,
  };

  final response = await http.post(Uri.parse(endpoint),
      body: json.encode(requestBody),
      headers: {'Content-Type': 'application/json'});

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    final translatedText = data['data']['translations'][0]['translatedText'];
    return translatedText;
  } else {
    print('Failed to translate text. Error: ${response.statusCode}');
    return null;
  }
}
