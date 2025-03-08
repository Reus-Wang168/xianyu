import 'package:flutter/material.dart';

class NoticeDt extends StatelessWidget {
  const NoticeDt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_nodt.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/icon_back.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  Image.asset(
                    'assets/images/no_detail.png',
                    height: 40,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
              height: 70,
              width: 335,
              child: Text(
                "【分类】这里是大标题可以 写两行没问题的",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4B3B2A),
                    decoration: TextDecoration.none),
                softWrap: true, // 允许换行
                maxLines: 2, // 最大行数
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "发布时间 ：2023-01-01 12:00",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4B3B2A),
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "xxxxxxx1111111111111111111111111111111111111111111111",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4B3B2A),
                    decoration: TextDecoration.none),
                softWrap: true, // 允许换行
                maxLines: 2, // 最大行数
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Image.asset(
                'assets/images/pc1.png',
                height: 200,
                width: 200,
              ),
            )
          ],
        ));
  }
}
