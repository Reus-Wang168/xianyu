import 'package:flutter/material.dart';
import 'package:xianyu/dialog_jymm.dart';
import 'package:xianyu/dialog_set.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static const List<Map<String, String>> items = [
    {"title": "仙人", "price": "50", "image": "assets/images/pc3.png"},
    {"title": "女仙人", "price": "30", "image": "assets/images/pc1.png"},
    {"title": "仙人", "price": "50", "image": "assets/images/pc3.png"},
    {"title": "女仙人", "price": "30", "image": "assets/images/pc1.png"},
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    height: 100,
                    width: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/prifile_tx.png'), // 头像共享背景
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 110,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 35,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("我的名字",
                                    style: TextStyle(
                                        color: Color(0xffFDFCE4),
                                        fontSize: 16)),
                                SizedBox(
                                  width: 10,
                                ),
                                Image(
                                  image: AssetImage('assets/images/wsm.png'),
                                  height: 30,
                                  width: 60,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("1111111",
                                    style: TextStyle(
                                        color: Color(0xffFDFCE4),
                                        fontSize: 16)),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/icon_sm.png',
                          height: 40,
                          width: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            _showSetDialog(context);
                          },
                          child: Image.asset(
                            'assets/images/icon_set.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 均匀分布
                children: [
                  // 容器 1
                  _buildContainerWithButton('assets/images/btn_gmjl.png'),
                  // 容器 2
                  _buildContainerWithButton('assets/images/btn_qb.png'),
                  // 容器 3
                  _buildContainerWithButton('assets/images/btn_wddj.png'),
                  // 容器 4
                  _buildContainerWithButton('assets/images/btn_yjhy.png'),
                ],
              ),
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
                                  image: AssetImage(
                                      "assets/images/bg_db.png"), // 背景图
                                  fit: BoxFit.fill,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Column(
                                  children: [
                                    const SizedBox(height: 35),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: _buildItem(
                                              "assets/images/wk1.png",
                                              "《这是女仙人》",
                                              "30￥"),
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
          )),
    );
  }

// 可点击的商品背景
  Widget _buildClickableItem(BuildContext context, Map<String, String> item) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const TwoLevelSellPage()),
        // );
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

  // 构建带按钮的容器
  Widget _buildContainerWithButton(String backgroundImage) {
    return Container(
      width: 73, // 容器宽度
      height: 226.5, // 容器高度
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage), // 容器外观图片
          fit: BoxFit.cover, // 图片填充方式
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: ElevatedButton(
            onPressed: () {
              print('按钮被点击了！');
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(54, 18), // 按钮尺寸
              padding: EdgeInsets.zero, // 去除默认内边距
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9), // 圆角半径
              ),
              backgroundColor: Colors.transparent, // 背景透明
              shadowColor: Colors.transparent, // 去除阴影
              elevation: 0, // 去除阴影
            ),
            child: Container(
              width: 54, // 容器宽度
              height: 18, // 容器高度
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9), // 圆角半径
                gradient: const RadialGradient(
                  colors: [
                    Color(0xfffffbd4), // 渐变起始颜色
                    Color(0xffbcb798), // 渐变结束颜色
                  ],
                  center: Alignment(0, 0), // 渐变中心点
                  radius: 1.0, // 渐变半径
                ),
              ),
              child: const Center(
                child: Text(
                  '按钮',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
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
        "数量: $price",
        style: const TextStyle(
            fontSize: 14, color: Color(0xFFE9D5BE), fontFamily: "kaiTi"),
      ),
    ],
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

void _showSetDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true, // User can tap outside to dismiss
    barrierColor: Colors.black.withOpacity(0.7), // Semi-transparent background
    builder: (BuildContext context) {
      return const SetDialog();
    },
  );
}
