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
    'messages': [
      {'role': 'system', 'content': 'You are a user'},
      {'role': 'user', 'content': message},
    ],
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
