import 'dart:convert';
import 'package:http/http.dart' as http;

// Function to send user message and get a response from the ChatGPT API
Future<String> sendMessage(String message) async {
  var apiKey = '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'; // Replace with your OpenAI API key
  var url = 'https://api.openai.com/v1/chat/completions';

  var headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer $apiKey',
  };

  var body = jsonEncode({
    'model': 'gpt-3.5-turbo',
    'max_tokens': 100,
    'temperature': 0.9,
    'messages': [

      {'role': 'user', 'content': message}
    ]
  });

  var response = await http.post(Uri.parse(url), headers: headers, body: body);

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    var reply = data['choices'][0]['message']['content'];
    return reply;
  } else {
    throw Exception('Failed to send message to ChatGPT');
  }
}
