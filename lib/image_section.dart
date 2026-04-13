import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image; //存圖片路徑

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover, //把框框整個填滿，必要時會「等比例放大」並裁切超出的部分。
    ); //從 專案 assets 載入圖片。
    //     真正顯示大小仍會受到外層布局限制
    // 例如手機螢幕寬可能只有 360，圖片就不可能真的顯示 600 寬，Flutter 會依 constraints 調整。
  }
}
