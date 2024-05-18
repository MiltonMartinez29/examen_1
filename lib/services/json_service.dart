import 'dart:convert';

Future<Map<String, dynamic>> fetchData() async {
  String data = await rootBundle.loadString('assets/data.json');
  return jsonDecode(data);
}
