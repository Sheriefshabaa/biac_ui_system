import 'dart:io';

import 'package:biac/History.dart';
import 'package:biac/services/Api.dart';
import 'package:http/http.dart' as http;
import 'package:biac/services/Api.dart';
import 'package:path_provider/path_provider.dart';

Future<void> downloadPdf() async {
  final url = Api().baseUrl + '/results/download_result/${userid}/';
  final response = await http.get(Uri.parse(url));

  try {
    if (response.statusCode == 200) {
      print("Download successful");
      final bytes = response.bodyBytes;
      final directory = await getApplicationDocumentsDirectory();
      final path = '${directory.path}/sample.pdf';
      final file = File('/storage/emulated/0/Download/sample1.pdf');
      await file.writeAsBytes(bytes);
      // Handle success, open the PDF file or show a success message
    } else {
      print(url);
      print("Download failed: ${response.reasonPhrase}");
      // Handle error, show an error message
    }
  } catch (e) {
    print("Error during download: $e");
    // Handle exception, show an error message
  }
}
