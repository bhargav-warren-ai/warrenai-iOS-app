import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

//this SimpleLinePainter class only exists for the NetWorthChart widget, will be removed once backend is integrated
class SimpleLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF2D6EFF)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, size.height * 0.7);
    path.lineTo(size.width * 0.2, size.height * 0.6);
    path.lineTo(size.width * 0.4, size.height * 0.3);
    path.lineTo(size.width * 0.6, size.height * 0.4);
    path.lineTo(size.width * 0.8, size.height * 0.2);
    path.lineTo(size.width, size.height * 0.1);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// ADD THE NEW PAINTER CLASSES HERE: This is to make the networth graph interactive
class InteractiveLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Background gradient
    final gradientPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xFF2D6EFF).withOpacity(0.1),
          const Color(0xFF2D6EFF).withOpacity(0.05),
        ],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final linePaint = Paint()
      ..color = const Color(0xFF2D6EFF)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    // Create the line path
    final path = Path();
    final fillPath = Path();
    
    path.moveTo(0, size.height * 0.7);
    fillPath.moveTo(0, size.height);
    fillPath.lineTo(0, size.height * 0.7);
    
    path.lineTo(size.width * 0.2, size.height * 0.6);
    fillPath.lineTo(size.width * 0.2, size.height * 0.6);
    
    path.lineTo(size.width * 0.4, size.height * 0.3);
    fillPath.lineTo(size.width * 0.4, size.height * 0.3);
    
    path.lineTo(size.width * 0.6, size.height * 0.4);
    fillPath.lineTo(size.width * 0.6, size.height * 0.4);
    
    path.lineTo(size.width * 0.8, size.height * 0.2);
    fillPath.lineTo(size.width * 0.8, size.height * 0.2);
    
    path.lineTo(size.width, size.height * 0.1);
    fillPath.lineTo(size.width, size.height * 0.1);
    
    fillPath.lineTo(size.width, size.height);
    fillPath.close();

    // Draw gradient fill
    canvas.drawPath(fillPath, gradientPaint);
    
    // Draw line
    canvas.drawPath(path, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class DataPointsPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pointPaint = Paint()
      ..color = const Color(0xFF2D6EFF)
      ..style = PaintingStyle.fill;

    final whiteBorderPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    // Data points positions
    final points = [
      Offset(0, size.height * 0.7),
      Offset(size.width * 0.2, size.height * 0.6),
      Offset(size.width * 0.4, size.height * 0.3),
      Offset(size.width * 0.6, size.height * 0.4),
      Offset(size.width * 0.8, size.height * 0.2),
      Offset(size.width, size.height * 0.1),
    ];

    for (final point in points) {
      // Draw white border
      canvas.drawCircle(point, 6, whiteBorderPaint);
      // Draw blue dot
      canvas.drawCircle(point, 4, pointPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class DetailedChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Grid lines
    final gridPaint = Paint()
      ..color = Colors.grey.withOpacity(0.2)
      ..strokeWidth = 1;

    // Draw horizontal grid lines
    for (int i = 0; i <= 4; i++) {
      final y = (size.height / 4) * i;
      canvas.drawLine(
        Offset(0, y),
        Offset(size.width, y),
        gridPaint,
      );
    }

    // Main chart line
    final linePaint = Paint()
      ..color = const Color(0xFF2D6EFF)
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(size.width * 0.1, size.height * 0.8);
    path.lineTo(size.width * 0.25, size.height * 0.7);
    path.lineTo(size.width * 0.4, size.height * 0.4);
    path.lineTo(size.width * 0.55, size.height * 0.5);
    path.lineTo(size.width * 0.7, size.height * 0.25);
    path.lineTo(size.width * 0.85, size.height * 0.15);

    canvas.drawPath(path, linePaint);

    // Data points
    final pointPaint = Paint()
      ..color = const Color(0xFF2D6EFF)
      ..style = PaintingStyle.fill;

    final points = [
      Offset(size.width * 0.1, size.height * 0.8),
      Offset(size.width * 0.25, size.height * 0.7),
      Offset(size.width * 0.4, size.height * 0.4),
      Offset(size.width * 0.55, size.height * 0.5),
      Offset(size.width * 0.7, size.height * 0.25),
      Offset(size.width * 0.85, size.height * 0.15),
    ];

    for (final point in points) {
      canvas.drawCircle(point, 8, Paint()..color = Colors.white);
      canvas.drawCircle(point, 6, pointPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    // final screenHeight = screenSize.height;
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header Section
            Container(
              width: screenWidth,
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  // Profile Image
                  GestureDetector(
                    onTap: () => print('Profile tapped'),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ),
                  
                  const Spacer(),
                  
                  // App Title
                  const Text(
                    'Juno',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.40,
                    ),
                  ),
                  
                  const Spacer(),
                  
                  // Settings Icon
                  GestureDetector(
                    onTap: () => print('Settings tapped'),
                    child: const Icon(
                      Icons.settings,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
            
            // Tab Buttons (Overview/Accounts)
            Container(
              width: screenWidth,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  // Overview button (selected)
                  Container(
                    height: 35,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    decoration: ShapeDecoration(
                      color: Colors.black.withOpacity(0.90),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Overview',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 15),
                  
                  // Accounts button
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/accounts'),
                    child: Container(
                      height: 35,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF6F6F6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Accounts',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // Net Worth Chart
            Container(
              width: screenWidth - 32,
              height: 320,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Chart Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Net Worth',
                          style: TextStyle(
                            color: Color(0xFF959595),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Text(
                          '\$48,000',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 20),
                    
                    // Chart Area (placeholder)
                    Expanded(
                      child: _buildNetWorthChart(),
                    ),
                  ],
                ),
              ),
            ),
            
            // Recent Transactions Section
            Container(
              width: screenWidth,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'Recent Transactions',
                style: TextStyle(
                  color: Color(0xFF959595),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            
            const SizedBox(height: 10),
            
            // Transactions List
            Expanded(
              child: Container(
                width: screenWidth - 32,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: ListView(
                  children: [
                    // Transaction Item 1
                    _buildTransactionItem(
                      'Costco',
                      'Groceries',
                      'July 20',
                      '-\$145.00',
                      Colors.red,
                    ),
                    const SizedBox(height: 12),
                    
                    // Transaction Item 2
                    _buildTransactionItem(
                      'Fuel',
                      'Transportation',
                      'July 20',
                      '-\$47.00',
                      Colors.red,
                    ),
                    const SizedBox(height: 12),
                    
                    // Transaction Item 3
                    _buildTransactionItem(
                      'Zelle from Kyle',
                      'Transfer',
                      'July 20',
                      '+\$250.00',
                      Colors.green,
                    ),
                    const SizedBox(height: 12),
                    
                    // Transaction Item 4
                    _buildTransactionItem(
                      'Netflix Premium',
                      'Entertainment',
                      'July 20',
                      '-\$15.99',
                      Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            
            // Ask Juno Input
            Container(
              width: screenWidth - 32,
              height: 50,
              margin: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () => print('Ask Juno tapped'),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF5F5F5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Color(0xFF828282),
                        size: 24,
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Ask Juno',
                        style: TextStyle(
                          color: Color(0xFF828282),
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            // Bottom Navigation Bar
            Container(
              width: screenWidth,
              height: 90,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 8,
                    offset: Offset(0, -2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // HOME Button (current screen - highlighted)
                    _buildNavItem(
                      Icons.home,
                      'HOME',
                      true,
                      () {},
                    ),
                    
                    // TRANSACTIONS Button
                    _buildNavItem(
                      Icons.receipt_long,
                      'TRANSACTIONS',
                      false,
                      () => Navigator.pushNamed(context, '/transactions'),
                    ),
                    
                    // INVEST Button
                    _buildNavItem(
                      Icons.trending_up,
                      'INVEST',
                      false,
                      () => Navigator.pushNamed(context, '/investment'),
                    ),
                    
                    // CREDIT Button
                    _buildNavItem(
                      Icons.credit_card,
                      'CREDIT',
                      false,
                      () => Navigator.pushNamed(context, '/credit'),
                    ),
                    
                    // ENVELOPES Button
                    _buildNavItem(
                      Icons.mail_outline,
                      'ENVELOPES',
                      false,
                      () => Navigator.pushNamed(context, '/envelopes'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNetWorthChart() {
return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: true,
          drawVerticalLine: false,
          horizontalInterval: 5000,
          getDrawingHorizontalLine: (value) {
            return FlLine(
              color: Colors.grey.withOpacity(0.2),
              strokeWidth: 1,
            );
          },
        ),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 10000,
              getTitlesWidget: (value, meta) {
                return Text(
                  '\$${(value / 1000).toInt()}K',
                  style: const TextStyle(
                    color: Color(0xFF828282),
                    fontSize: 10,
                    fontFamily: 'Inter',
                  ),
                );
              },
              reservedSize: 40,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 1,
              getTitlesWidget: (value, meta) {
                const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'];
                if (value.toInt() >= 0 && value.toInt() < months.length) {
                  return Text(
                    months[value.toInt()],
                    style: const TextStyle(
                      color: Color(0xFF828282),
                      fontSize: 10,
                      fontFamily: 'Inter',
                    ),
                  );
                }
                return const Text('');
              },
              reservedSize: 30,
            ),
          ),
          rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(show: false),
        minX: 0,
        maxX: 5,
        minY: 30000,
        maxY: 50000,
        lineBarsData: [
          LineChartBarData(
            spots: const [
              FlSpot(0, 35000),  // Jan: $35K
              FlSpot(1, 38000),  // Feb: $38K
              FlSpot(2, 42000),  // Mar: $42K
              FlSpot(3, 39000),  // Apr: $39K (small dip)
              FlSpot(4, 45000),  // May: $45K
              FlSpot(5, 48000),  // Jun: $48K (current)
            ],
            isCurved: true,
            curveSmoothness: 0.3,
            color: const Color(0xFF2D6EFF),
            barWidth: 3,
            isStrokeCapRound: true,
            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                return FlDotCirclePainter(
                  radius: 4,
                  color: const Color(0xFF2D6EFF),
                  strokeWidth: 2,
                  strokeColor: Colors.white,
                );
              },
            ),
            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFF2D6EFF).withOpacity(0.3),
                  const Color(0xFF2D6EFF).withOpacity(0.05),
                ],
              ),
            ),
          ),
        ],
        lineTouchData: LineTouchData(
          touchTooltipData: LineTouchTooltipData(
            // tooltipBgColor: Colors.black87,
            tooltipRoundedRadius: 8,
            getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
              return touchedBarSpots.map((barSpot) {
                return LineTooltipItem(
                  '\$${(barSpot.y / 1000).toInt()}K',
                  const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                );
              }).toList();
            },
          ),
          handleBuiltInTouches: true,
        ),
      ),
    );
}

  Widget _buildTransactionItem(
    String title,
    String category,
    String date,
    String amount,
    Color amountColor,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          // Transaction Icon
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.store,
              color: Color(0xFF828282),
              size: 20,
            ),
          ),
          
          const SizedBox(width: 12),
          
          // Transaction Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  category,
                  style: const TextStyle(
                    color: Color(0xFFD9D9D9),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          
          // Amount and Date
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amount,
                style: TextStyle(
                  color: amountColor,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                date,
                style: const TextStyle(
                  color: Color(0xFFD9D9D9),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: isSelected
                ? BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(12),
                  )
                : null,
            child: Icon(
              icon,
              color: Colors.black,
              size: 26,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: label.length > 6 ? 10 : 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}