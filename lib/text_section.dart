import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true), //設定 softWrap: true（允許在需要時自動換行）。
    );
  }
}
