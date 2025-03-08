import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xianyu/c_checkb2.dart';
import 'package:xianyu/c_checkbox.dart';

class GPJSDialog extends StatefulWidget {
  const GPJSDialog({super.key});

  @override
  State<StatefulWidget> createState() => _GPJSDialogState();
}

class _GPJSDialogState extends State<GPJSDialog> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.96,
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg_gpjs.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end, // 右对齐
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Image.asset('assets/images/icon_exit.png',
                          width: 30, height: 30),
                    )
                  ],
                ),
              ),
              // 添加下面的内容
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 8, right: 16),
                child: Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    color: const Color(0xffe0d6c7), // 背景颜色 #ffe0d6c7
                    border: Border.all(
                      color: const Color(0xffb9ae9d), // 边框颜色 #ffb9ae9d
                      width: 1, // 边框宽度 1dp
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/pc1.png',
                        width: 120,
                        height: 120, // 替换为你的图片路径
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '这是女仙人 / #59998',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff6B6357),
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '当前寄售价格：',
                                        style: TextStyle(
                                          color: Color(0xff433B30),
                                        ),
                                      ),
                                      TextSpan(
                                        text: '¥ 1000',
                                        style: TextStyle(
                                          color: Color(0xff433B30),
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 15),
                                const Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '已经有6人寄售：',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff433B30),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '查看',
                                            style: TextStyle(
                                                color: Color(0xff433B30),
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                letterSpacing: 2),
                                          ),
                                          Icon(
                                            CupertinoIcons
                                                .chevron_right, // iOS 风格的右箭头
                                            size: 14,
                                            color: Color(0xff433B30), // 箭头颜色
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      ),

                      // 寄售价格表格
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 8, top: 8, right: 16),
                child: Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    color: const Color(0xffe0d6c7), // 背景颜色 #ffe0d6c7
                    border: Border.all(
                      color: const Color(0xffb9ae9d), // 边框颜色 #ffb9ae9d
                      width: 1, // 边框宽度 1dp
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 15, right: 8, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "寄售价格",
                          style: TextStyle(
                              color: Color(0xff6B6357),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              const Text("¥",
                                  style: TextStyle(
                                      color: Color(0xff433B30),
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 2)),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Container(
                                  height: 50,
                                  width: 200,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/price_bg.png'), // 背景图片路径
                                      fit: BoxFit.fill, // 图片填充方式
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16), // 内边距
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Expanded(
                                            child: Center(
                                              child: TextField(
                                                decoration: InputDecoration(
                                                  // 提示文本
                                                  hintStyle: TextStyle(
                                                    color: Color(
                                                        0xff433B30), // 提示文本颜色
                                                  ),
                                                  border: InputBorder
                                                      .none, // 去掉默认边框
                                                ),
                                                style: TextStyle(
                                                  color: Colors.black, // 输入文本颜色
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text("今日最高限价¥100",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey[600],
                                              )) // 提示文本颜色))
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "综合服务费",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff6B6357),
                                    letterSpacing: 4),
                              ),
                              Text(
                                "4%",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff6B6357),
                                    letterSpacing: 2),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "预计收益",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff433B30),
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 4),
                              ),
                              Text(
                                "¥ 1000",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff433B30),
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 140,
              ),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCheckbox2(
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue!;
                        });
                      },
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text("我已经同意仙域使用条款",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff433B30),
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              ElevatedButton(
                onPressed: () {
                  // Button action here
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(310, 56),
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    side: const BorderSide(
                      color: Color(0xFFEDDCB7),
                      width: 1.0,
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: const RadialGradient(
                      center: Alignment.topLeft,
                      radius: 1.0,
                      colors: [
                        Color(0xFFA15E35), // startColor
                        Color(0xFF8B7D65), // endColor
                      ],
                    ),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 340,
                      height: 56,
                      alignment: Alignment.center,
                      child: const Text(
                        '发布寄售',
                        style: TextStyle(
                            color: Color(0xFfFFF3C2),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 4),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
