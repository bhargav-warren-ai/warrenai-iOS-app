import 'package:flutter/material.dart';

class InvestmentPeriodScreen extends StatelessWidget {
  const InvestmentPeriodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Status bar
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 375,
              height: 44,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(),
            ),
          ),
          
          // Header
          Positioned(
            left: 16,
            top: 59,
            child: SizedBox(
              width: 343,
              height: 39,
              child: Stack(
                children: [
                  Positioned(
                    left: 113,
                    top: 4,
                    child: const Text(
                      'Juno',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.40,
                        letterSpacing: -0.40,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 308,
                    top: 0,
                    child: GestureDetector(
                      onTap: () => debugPrint('Settings tapped'),
                      child: Container(
                        width: 35, 
                        height: 35,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 4,
                    child: GestureDetector(
                      onTap: () => debugPrint('Profile tapped'),
                      child: Container(
                        width: 35,
                        height: 35,
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
                  ),
                ],
              ),
            ),
          ),
          
          // Main Form Container
          Positioned(
            left: 16,
            top: 293,
            child: Container(
              width: 343,
              height: 225,
              decoration: ShapeDecoration(
                color: const Color(0xFFD9D9D9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
              ),
              child: Stack(
                children: [
                  // Title
                  const Positioned(
                    left: 27,
                    top: 25,
                    child: SizedBox(
                      width: 289,
                      height: 45,
                      child: Text(
                        'Investing Period',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.40,
                        ),
                      ),
                    ),
                  ),
                  
                  // Input Field
                  Positioned(
                    left: 36,
                    top: 89,
                    child: GestureDetector(
                      onTap: () {
                        debugPrint('Number of months tapped');
                        // Here you could show a picker or input dialog
                      },
                      child: Container(
                        width: 272,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF5F5F5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 10, top: 12),
                          child: Text(
                            'Number of Months',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w300,
                              height: 1.40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  // Confirm Button
                  Positioned(
                    left: 28,
                    top: 172,
                    child: GestureDetector(
                      onTap: () {
                        _showCompletionDialog(context);
                      },
                      child: Container(
                        width: 288,
                        height: 44,
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF0088FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1000),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'SF Pro',
                              fontWeight: FontWeight.w700,
                              height: 1.33,
                              letterSpacing: -0.23,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Bottom Navigation Bar
          Positioned(
            left: 0,
            top: 734,
            child: Container(
              width: 375,
              height: 78,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 0,
                    offset: Offset(0, -0.50),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // HOME Button
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context, 
                        '/home', 
                        (route) => false
                      );
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 40, height: 40),
                        SizedBox(height: 4),
                        Text(
                          'HOME',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // TRANSACTIONS Button
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/transactions');
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 30, height: 30),
                        SizedBox(height: 4),
                        Text(
                          'TRANSACTIONS',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // INVEST Button (highlighted as current)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/investment');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFD9D9D9).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'INVEST',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // CREDIT Button
                  GestureDetector(
                    onTap: () {
                      () => Navigator.pushNamed(context, '/credit');
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 35, height: 35),
                        SizedBox(height: 4),
                        Text(
                          'CREDIT',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // ENVELOPES Button
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/envelopes');
                    },
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 35, height: 35),
                        SizedBox(height: 4),
                        Text(
                          'ENVELOPES',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Ask Juno Input
          Positioned(
            left: 16,
            top: 673,
            child: GestureDetector(
              onTap: () {
                debugPrint('Ask Juno tapped');
              },
              child: Container(
                width: 343,
                height: 40,
                padding: const EdgeInsets.only(
                  top: 8, 
                  left: 12, 
                  right: 16, 
                  bottom: 8
                ),
                decoration: ShapeDecoration(
                  color: const Color(0xFFF5F5F5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 24, height: 24),
                    SizedBox(width: 12),
                    Text(
                      'Ask Juno',
                      style: TextStyle(
                        color: Color(0xFF828282),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to show completion dialog
  void _showCompletionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Investment Setup Complete'),
          content: const Text('Your investment preferences have been saved!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushNamedAndRemoveUntil(
                  context, 
                  '/home', 
                  (route) => false
                );
              },
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
  }
}