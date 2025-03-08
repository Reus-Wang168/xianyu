import 'package:flutter/material.dart';

class JSSellDialog extends StatelessWidget {
  const JSSellDialog({super.key});
  // 静态委托订单数据
  static const List<Map<String, dynamic>> orders = [
    {
      'phone': '139*****8796',
      'totalPrice': 300,
      'unitPrice': 100,
      'status': ['汇付', '易宝', '快付'],
      'progress': '0/3'
    },
    {
      'phone': '155*****8877',
      'totalPrice': 660,
      'unitPrice': 110,
      'status': ['汇付', '易宝', '快付'],
      'progress': '2/6'
    },
    {
      'phone': '144*****8723',
      'totalPrice': 390,
      'unitPrice': 130,
      'status': ['汇付', '易宝', '快付'],
      'progress': null
    },
  ];

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
              image: AssetImage('assets/images/bg_wtdd.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
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
              const SizedBox(height: 20),

              // 顶部筛选复选框
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: 0.8, // 缩小 Checkbox
                      child: Checkbox(
                        value: false,
                        onChanged: (
                          bool? value,
                        ) {},
                        materialTapTargetSize:
                            MaterialTapTargetSize.shrinkWrap, // 缩小点击区域
                        visualDensity: VisualDensity.compact,
                      ),
                    ),
                    const Text('仅显示可交易订单', style: TextStyle(fontSize: 14)),
                    Transform.scale(
                      scale: 0.8, // 缩小 Checkbox
                      child: Checkbox(
                        value: false,
                        onChanged: (
                          bool? value,
                        ) {},
                        materialTapTargetSize:
                            MaterialTapTargetSize.shrinkWrap, // 缩小点击区域
                        visualDensity: VisualDensity.compact,
                      ),
                    ),
                    const Text('仅显示我的委托', style: TextStyle(fontSize: 14)),
                    const SizedBox(width: 15),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 2, vertical: 2),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Container(
                        width: 48.0,
                        height: 22.0,
                        decoration: BoxDecoration(
                          color: const Color(0xfff6f0e7), // 背景颜色
                          border: Border.all(
                            color: const Color(0xff65574c), // 边框颜色
                            width: 1.0, // 边框宽度
                          ),
                          borderRadius: const BorderRadius.all(
                              Radius.circular(2.0)), // 圆角
                          gradient: const RadialGradient(
                            colors: [
                              Color(0xfffff6e4), // 渐变起始颜色
                              Color(0xffd3c2b4), // 渐变结束颜色
                            ],
                            center: Alignment(0, 0), // 渐变中心
                            radius: 0.0, // 渐变半径
                          ),
                        ),
                        child: const Center(
                          child: Text('单价',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xFF433B30))),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // 订单列表

              SizedBox(
                height: 300,
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: orders.length,
                  itemBuilder: (context, index) {
                    var order = orders[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F0E0),
                        border: Border.all(
                            color: const Color(0xFFD2C3A6), width: 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(order['phone'],
                                  style: const TextStyle(fontSize: 16)),
                              Text(
                                  '总价 ¥${order['totalPrice']} 单价 ¥${order['unitPrice']}',
                                  style: const TextStyle(fontSize: 14))
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  // 第一个按钮（汇付）
                                  Container(
                                    width: 36.0,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: const Color(0xfff6f0e7),
                                      border: Border.all(
                                        color: const Color(0xff38465b),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(2.0)),
                                      gradient: const RadialGradient(
                                        colors: [
                                          Color(0xffe4ebff),
                                          Color(0xff8492a3),
                                        ],
                                        center: Alignment(0, 0),
                                        radius: 0.0,
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '汇付',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10.0),
                                  Container(
                                    width: 36.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xfff6f0e7),
                                      border: Border.all(
                                        color: const Color(0xff304331),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(2.0)),
                                      gradient: const RadialGradient(
                                        colors: [
                                          Color(0xffe4ffec),
                                          Color(0xffbcd3b4),
                                        ],
                                        center: Alignment(0, 0),
                                        radius: 0.0,
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '易宝',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10.0),
                                  // 第三个按钮（快付）
                                  Container(
                                    width: 36.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xfff6f0e7),
                                      border: Border.all(
                                        color: const Color(0xff502b1e),
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(2.0)),
                                      gradient: const RadialGradient(
                                        colors: [
                                          Color(0xffffe4e4),
                                          Color(0xffb18484),
                                        ],
                                        center: Alignment(0, 0),
                                        radius: 0.0,
                                      ),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '快付',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              if (order['progress'] != null)
                                Text(
                                  '当前进度：${order['progress']}',
                                  style: const TextStyle(fontSize: 12),
                                ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),

              // 底部提示
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text('- 暂无更多数据 -', style: TextStyle(color: Colors.grey)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
