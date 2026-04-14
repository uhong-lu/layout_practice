import 'package:flutter/material.dart';
import 'favorite_widget.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        32,
      ), //外層 Padding：整塊留白 32，所以內容不會貼著螢幕邊緣，看起來更舒服。
      child: Row(
        //把內容橫向排成一列
        children: [
          Expanded(
            //在 Row 裡，Expanded 會讓它的 child 盡可能佔滿剩餘的水平空間。這樣右邊的 ⭐ 和 41 才能「貼在最右邊附近」，而不是擠在一起或造成溢出。你可以把 Row 想像成一條橫條：Expanded = 「這個區塊要伸展，把空間撐開」如果沒有 Expanded 會怎樣？當 name 很長時，Row 可能會：把右側星星和數字擠到看不到或直接 overflow（黃黑條警告）
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // 在「水平（交叉軸）」方向靠左對齊（Column 的交叉軸是水平）如果不寫這行，Column 預設是 center，文字可能會看起來不是靠左對齊。
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                  ), //內層 Padding：讓 name 和 location 之間有 8 的空隙，這樣看起來不會太擠。
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(location, style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
          /*3*/
          const FavoriteWidget(),
        ],
      ),
    );
  }
}