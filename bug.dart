```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final jsonData = jsonDecode(response.body);
      // Accessing data from the JSON
      final data = jsonData['data'];
      print('Data fetched successfully: $data');
    } else {
      // Handle error appropriately.  Throwing an exception is common.
      throw Exception('Failed to fetch data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle any exceptions during the network request, decoding or data access
    print('Error fetching data: $e');
    // Re-throw the exception to be handled by a higher level function.
    rethrow;
  }
}
```