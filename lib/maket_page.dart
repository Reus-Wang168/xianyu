import 'package:flutter/material.dart';
import 'package:xianyu/erji_page.dart';

class MarketPage extends StatelessWidget {
  const MarketPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {"title": "仙人", "price": "¥50", "image": "assets/images/pc3.png"},
      {"title": "女仙人", "price": "¥30", "image": "assets/images/pc1.png"},
      {"title": "仙人", "price": "¥50", "image": "assets/images/pc3.png"},
      {"title": "女仙人", "price": "¥30", "image": "assets/images/pc1.png"},
    ];
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: [
          const SizedBox(height: 30),
          _buildHeader(),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/market_wk.png'), // 共享背景
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: Column(
                children: [
                  _buildRows(), //

                  Expanded(
                    child: ListView.builder(
                      itemCount: (items.length / 2).ceil(), // 每行放两个
                      itemBuilder: (context, index) {
                        int firstIndex = index * 2;
                        int secondIndex = firstIndex + 1;

                        return Container(
                          width: screenWidth,
                          height: 300,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/bg_db.png"), // 背景图
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Column(
                              children: [
                                const SizedBox(height: 35),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    _buildClickableItem(
                                        context, items[firstIndex]),
                                    const SizedBox(width: 5), // 两个之间的间隔
                                    if (secondIndex < items.length)
                                      _buildClickableItem(
                                          context, items[secondIndex]),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center, // 居中对齐

                                  children: [
                                    const SizedBox(width: 18), // 间距
                                    _buildItem("assets/images/wk1.png",
                                        "《这是个仙人》", "---"),

                                    const SizedBox(width: 25), // 间距
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: _buildItem("assets/images/wk1.png",
                                          "《这是女仙人》", "30￥"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }

  Widget _buildItem(String imagePath, String title, String price) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center, // 让文本居中
          children: [
            Image.asset(
              "assets/images/wk1.png",
              width: 130,
              height: 60,
            ), // 背景图片
            const Text(
              "《这是个仙人》",
              style: TextStyle(
                letterSpacing: 3,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xFF526D50),
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ), // 上方背景图
        // 间距

        Text(
          "最低价: $price",
          style: const TextStyle(
              fontSize: 14, color: Color(0xFFE9D5BE), fontFamily: "kaiTi"),
        ),
      ],
    );
  }

  // 可点击的商品背景
  Widget _buildClickableItem(BuildContext context, Map<String, String> item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TwoLevelSellPage()),
        );
      },
      child: Container(
        width: 170,
        height: 160,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/maket_wk1.png"), // 背景图
            fit: BoxFit.fill,
          ),
        ),
        child: Align(
          alignment: Alignment.centerRight, // 让图片靠右
          child: Padding(
            padding: const EdgeInsets.only(right: 10), // 右移 10 像素
            child: Image.asset(
              item["image"]!,
              width: 140,
              height: 135,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }

  /// 三个按钮
  Widget _buildRows() {
    return SizedBox(
      height: 57,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 16,
              ),

              // 间隔

              // 第一个按钮
              _buildActionButton("全部", "assets/images/bg_quanbu.png",
                  width: 80, heigt: 30),

              // 间隔
              const SizedBox(width: 10),

              // 第二个按钮
              _buildActionButton("仙人系列", "assets/images/bg_fenl.png",
                  width: 90, heigt: 30),

              // 间隔
              const SizedBox(width: 10),
              // 第三个按钮
              _buildActionButton("仙宠系列", "assets/images/bg_fenl.png",
                  width: 90, heigt: 30),

              // 间隔
              const SizedBox(width: 10),
              // 右箭头
              const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(String title, String path,
      {required double heigt, required double width}) {
    return Container(
      height: heigt,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(path), fit: BoxFit.fill)),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 10,
              color: Color(0xff515B3D),
              fontWeight: FontWeight.bold,
              letterSpacing: 2),
        ),
      ),
    );
  }

  /// 顶部标题栏
  Widget _buildHeader() {
    return Container(
      width: 200,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/icon_maket.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Text(
          "市场",
          style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 10),
        ),
      ),
    );
  }
}
