import 'package:flutter/material.dart';

class UiHelper {
  static Widget CustomImage({required String path, bool isNetwork = false}) {
    if (isNetwork) {
      return Image.network(
        path,
        errorBuilder: (context, error, stackTrace) {
          return const Icon(Icons.broken_image);
        },
      );
    } else {
      return Image.asset(path);
    }
  }

  static CustomText(
      {required String text,
      required Color color,
      required FontWeight fontWeight,
      required double fontSize}) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: fontWeight, fontSize: fontSize, color: color),
    );
  }
}
