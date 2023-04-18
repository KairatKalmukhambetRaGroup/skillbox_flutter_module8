import 'package:flutter/services.dart';

Future<String> fetchFileFromAssets(String assetsPath) async {
  try {
    return rootBundle.loadString(assetsPath).then((file) => file.toString());
  } catch (e) {
    return Future.error('Failed to load file: $assetsPath');
  }
}
