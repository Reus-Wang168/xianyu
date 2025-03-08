import 'package:flutter/material.dart';

// Assuming t9Color is defined in your const.dart file
const Color t9Color = Color(0xFF6E6146); // Brownish text color
const Color backgroundColor = Color(0xFFF2EAD7); // Beige background
const Color cardBorderColor = Color(0xFFD6C9B3); // Light brown border

class TransactionRecordDialog extends StatelessWidget {
  // Static transaction record data based on the screenshot
  final List<Map<String, dynamic>> records = [
    {'title': '这是个仙人 #00888', 'time': '2025-02-18 17:15:05', 'amount': '¥ 230'},
    {'title': '这是个仙人 #15642', 'time': '2025-02-18 17:12:34', 'amount': '¥ 200'},
  ];

  // Summary data
  final Map<String, dynamic> summary = {
    'currentPrice': '210.00CNY',
    'percentage': '230%',
    'todayHigh': '¥ 230.00',
    'todayLow': '¥ 200.00',
    'todayVolume': '2',
    'hourVolume': '0',
  };

  TransactionRecordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Dark background behind the dialog
        Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.9,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_chengjiao.png'), // 背景图片
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            // Header section with title and close button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end, // 右对齐
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Image.asset('assets/images/icon_exit.png',
                        width: 40, height: 40),
                  )
                ],
              ),
            ),

            // NFT Title section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              alignment: Alignment.center,
              child: const Text(
                '《这是个仙人》',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6B6357),
                    decoration: TextDecoration.none,
                    letterSpacing: 4),
              ),
            ),

            // Price summary card
            Container(
              height: 130,
              margin: const EdgeInsets.only(left: 16, right: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: backgroundColor,
                border: Border.all(color: cardBorderColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  // Price and percentage
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            summary['currentPrice'],
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.none,
                              color: Color(0xFFC03A2B), // Red color for price
                            ),
                          ),
                          const SizedBox(
                              height: 6), // Space between price and percentage
                          Text(
                            summary['percentage'],
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xFFC03A2B),
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 16),

                      // Right side data
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Today's high
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '今日最高',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: t9Color,
                                      decoration: TextDecoration.none,
                                      letterSpacing: 2),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  summary['todayHigh'],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFFC03A2B),
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 3),
                            // Today's low
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '今日最低',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: t9Color,
                                    decoration: TextDecoration.none,
                                    letterSpacing: 2,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  summary['todayLow'],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF3A9E55),
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      // Volume data
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Today's volume

                            const Text(
                              '今日成交量',
                              style: TextStyle(
                                fontSize: 14,
                                color: t9Color,
                                decoration: TextDecoration.none,
                                letterSpacing: 2,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              summary['todayVolume'],
                              style: const TextStyle(
                                fontSize: 14,
                                color: t9Color,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 3),

                            const Text(
                              '1h成交量',
                              style: TextStyle(
                                fontSize: 14,
                                color: t9Color,
                                decoration: TextDecoration.none,
                                letterSpacing: 2,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              summary['hourVolume'],
                              style: const TextStyle(
                                fontSize: 14,
                                color: t9Color,
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Transaction Record Section Title
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 1,
                    color: t9Color,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    '成交记录',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff6B6357),
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 20,
                    height: 1,
                    color: t9Color,
                  ),
                ],
              ),
            ),

            // Transaction records list
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: records.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      border: Border.all(color: cardBorderColor),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Left Column (Title and Time)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              records[index]['title'],
                              style: const TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF433B30),
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                  letterSpacing: 2),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              records[index]['time'],
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color(0xff6B6357),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                        // Right Column (Amount)
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          child: Text(
                            records[index]['amount'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: t9Color,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
