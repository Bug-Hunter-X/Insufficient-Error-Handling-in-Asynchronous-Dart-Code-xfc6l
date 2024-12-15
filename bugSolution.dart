```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final data = jsonData['data'];
      print('Data fetched successfully: $data');
    } else {
      throw Exception('Failed to fetch data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception for higher-level handling
  }
}
```