//用到的 StatelessWidget, Theme, Row, Column, Icon, Text, Padding, SizedBox, Icons 等都在這裡
import 'package:flutter/material.dart';

/// Displays three action buttons in one horizontal row.
class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key}); //const：如果呼叫端也用 const，Flutter 可做最佳化（減少重建成本）。 //super.key：Widget 身分辨識（列表重排、動畫等情境重要）。

  @override
  Widget build(BuildContext context) {
    // Read the main color from the current app theme.
    final Color color = Theme.of(context).primaryColor;

    // Row puts children side by side.
    return SizedBox(
      child: Row(
        // Keep equal spacing between each button.
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Reuse the same widget with different icon/text.
          ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
          ButtonWithText(color: color, icon: Icons.near_me, label: 'ROUTE'),
          ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }
}

/// A reusable widget: one icon and one label stacked vertically.
/// 建構子 + required
// 建立這個 widget 時 必須提供：
// color：顏色
// icon：圖示類型
// label：顯示文字
class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  // The display color for both icon and text.
  final Color color;
  // The icon shown above the text.
  final IconData icon;
  // The caption shown under the icon.
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      // Make Column only as tall as it needs to be.
      mainAxisSize: MainAxisSize.min,
      // Center icon and text vertically.
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        // Add spacing between the icon and label.
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              // Small, light text style for button captions.
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
