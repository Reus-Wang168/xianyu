import 'package:flutter/material.dart';
import 'package:xianyu/dialog_cj_record.dart';
import 'package:xianyu/dialog_gpjs.dart';
import 'package:xianyu/dialog_wtdd.dart';

class TwoLevelSellPage extends StatelessWidget {
  const TwoLevelSellPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg_erjifs.png'), // 替换为您的背景图片
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // 中间图片
          Positioned(
              top: -10, // 调整图片的位置
              left: 0,
              right: 0,
              bottom: 0,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(children: [
                      // 中间图片作为背景
                      Image.asset(
                        'assets/images/wk2.png',
                        fit: BoxFit.cover,
                      ),
                      // 左边文字在框上
                      Positioned(
                        left: 45,
                        top: 110,
                        child: _buildVerticalText(
                            "图片类型", 13, const Color(0xff703F3A)),
                      ),
                      // 下面图片背景上面有文字

                      Positioned(
                          top: 82,
                          left: 66,
                          child: Image.asset(
                            'assets/images/pc1.png',
                            height: 250,
                            width: 265,
                          )),
                      Positioned(
                        top: 290,
                        left: 95,
                        child: Container(
                          width: 205, // 容器宽度
                          height: 70, // 容器高度
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/wk3.png'), // 设置背景图片
                              fit: BoxFit.cover, // 图片填充方式
                            ),
                          ),
                          child: const Align(
                            alignment: Alignment.topLeft, // 文字对齐方式
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: 20, left: 20), // 调整文字的位置
                              child: Text(
                                '《这是女仙人》',
                                style: TextStyle(
                                    color: Color(0xff894C4A), // 文字颜色
                                    fontSize: 21, // 文字大小
                                    // 文字粗细
                                    letterSpacing: 3,
                                    decoration: TextDecoration.none),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 380,
                        left: 105,
                        child: Text(
                          "限量2000份",
                          style: TextStyle(
                              color: Color(0xffFFF5D3),
                              fontSize: 12,
                              letterSpacing: 2,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      const Positioned(
                        top: 380,
                        left: 215,
                        child: SizedBox(
                          height: 40,
                          width: 100,
                          child: Text(
                            "限量2000份",
                            style: TextStyle(
                                color: Color(0xffFFF5D3),
                                fontSize: 12,
                                letterSpacing: 2,
                                decoration: TextDecoration.none),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 18,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset(
                            'assets/images/icon_back.png',
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      Positioned(
                          top: 60,
                          left: screenWidth - 35,
                          child: GestureDetector(
                            onTap: () {
                              _shoWWDDDialog(context);
                            },
                            child: _buildVerticalText(
                                "委托订单", 16, const Color(0xffF9EDC3)),
                          )),
                    ]),
                    Transform.translate(
                      offset: const Offset(0, -30),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              _showRecordDialog(context);
                            },
                            child: Container(
                              width: 354,
                              height: 57,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFF5D4),
                                border: Border.all(
                                    color: const Color(0xFFE7EAC9), width: 1),
                                borderRadius: BorderRadius.circular(7),
                                gradient: const RadialGradient(
                                  colors: [
                                    Color(0xFFD6D5B7),
                                    Color(0xFFEBEADA)
                                  ],
                                  center: Alignment(0, 0),
                                ),
                              ),

                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "成交记录",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff4A5B4B),
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      Image(
                                        image: AssetImage(
                                            'assets/images/arrow2.png'), // 替换成你的图片路径
                                        width: 40, // 设定合适的宽度
                                        height: 30, // 设定合适的高度
                                        fit: BoxFit.contain, // 控制图片填充方式
                                      ),
                                    ]),
                              ),
                              // 添加其他内容
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: 354,
                            height: 57,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFF5D4),
                              border: Border.all(
                                  color: const Color(0xFFE7EAC9), width: 1),
                              borderRadius: BorderRadius.circular(7),
                              gradient: const RadialGradient(
                                colors: [Color(0xFFD6D5B7), Color(0xFFEBEADA)],
                                center: Alignment(0, 0),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "当前寄售最低价",
                                      style: TextStyle(
                                          fontSize: 20,
                                          decoration: TextDecoration.none,
                                          color: Color(0xff4A5B4B)),
                                    ),
                                    Text(
                                      "￥450",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xff4A5B4B),
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ]),
                            ),

                            // 添加其他内容
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: 354,
                            height: 57,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFF5D4),
                              border: Border.all(
                                  color: const Color(0xFFE7EAC9), width: 1),
                              borderRadius: BorderRadius.circular(7),
                              gradient: const RadialGradient(
                                colors: [Color(0xFFD6D5B7), Color(0xFFEBEADA)],
                                center: Alignment(0, 0),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "当前寄售",
                                      style: TextStyle(
                                          fontSize: 20,
                                          decoration: TextDecoration.none,
                                          color: Color(0xff4A5B4B)),
                                    ),
                                    Text(
                                      "6份",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color(0xff4A5B4B),
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF4A5B4B),
                                      height: 1.5,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '购买须知\n\n',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text: '数字文创藏品为虚拟数字商品，而非实物，仅限年满18'
                                              '周岁的中国大陆实名认证用户购买。数字文创藏品的'
                                              '版权由发行方和原创者拥有，除另行获得版权拥有者'
                                              '书面同意外，用户不得将数字文创藏品用于任何商业'
                                              '用途。本商品一经售出，不支持退换。请清勿对数字文'
                                              '创藏品进行炒卖、场外交易、数诈或以任何其他非法'
                                              '去方式进行使用。'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  _showJSDialog(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(160, 56),
                                  backgroundColor:
                                      const Color(0xFF5F7A58), // 深绿色背景
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  elevation: 0, // 去掉阴影
                                ),
                                child: const Text(
                                  '我要寄售',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFFFF3C2),
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // 我要抢购按钮的逻辑
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(160, 56),
                                  backgroundColor:
                                      const Color(0xFFF5E6C3), // 浅黄色背景
                                  foregroundColor:
                                      const Color(0xFF5F7A58), // 文字颜色为深绿色
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  elevation: 0, // 去掉阴影
                                ),
                                child: const Text(
                                  '我要抢购',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF4A5B4B),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

Widget _buildVerticalText(String text, double tfontSize, Color tcolor) {
  return Column(
    children: text.split('').map((char) {
      return Text(
        char,
        style: TextStyle(
            fontSize: tfontSize,
            color: tcolor,
            letterSpacing: 0,
            decoration: TextDecoration.none),
      );
    }).toList(),
  );
}

void _shoWWDDDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true, // User can tap outside to dismiss
    barrierColor: Colors.black.withOpacity(0.7), // Semi-transparent background
    builder: (BuildContext context) {
      return const EntrustOrderDialog();
    },
  );
}

void _showRecordDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true, // User can tap outside to dismiss
    barrierColor: Colors.black.withOpacity(0.7), // Semi-transparent background
    builder: (BuildContext context) {
      return TransactionRecordDialog();
    },
  );
}

void _showJSDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true, // User can tap outside to dismiss
    barrierColor: Colors.black.withOpacity(0.7), // Semi-transparent background
    builder: (BuildContext context) {
      return const GPJSDialog();
    },
  );
}
