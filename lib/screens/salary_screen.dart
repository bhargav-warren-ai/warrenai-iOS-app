import 'package:flutter/material.dart';

class SalaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Header
          Positioned(
            left: 16,
            top: 59,
            child: Container(
              width: 343,
              height: 39,
              child: Stack(
                children: [
                  Positioned(
                    left: 113,
                    top: 4,
                    child: Text(
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
                      onTap: () => print('Settings tapped'),
                      child: Container(width: 35, height: 35),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 4,
                    child: GestureDetector(
                      onTap: () => print('Profile tapped'),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://placehold.co/35x35"),
                            fit: BoxFit.cover,
                          ),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Status bar
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 375,
              height: 44,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
            ),
          ),
          
          // Bottom Navigation Bar
          Positioned(
            left: 0,
            top: 734,
            child: Container(
              width: 375,
              height: 78,
              decoration: BoxDecoration(
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
                      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 40, height: 40),
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
                      Navigator.pushNamed(context, '/accounts');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 30, height: 30),
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
                  
                  // INVEST Button
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
                        SizedBox(height: 4),
                        Text(
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
                      print('Credit tapped');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 35, height: 35),
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
                      print('Envelopes tapped');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 35, height: 35),
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
                print('Ask Juno tapped');
              },
              child: Container(
                width: 343,
                height: 40,
                padding: const EdgeInsets.only(top: 8, left: 12, right: 16, bottom: 8),
                decoration: ShapeDecoration(
                  color: const Color(0xFFF5F5F5),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  children: [
                    Container(width: 24, height: 24),
                    SizedBox(width: 12),
                    Text(
                      'Ask Juno',
                      style: TextStyle(
                        color: const Color(0xFF828282),
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
          
          // Main Form Container
          Positioned(
            left: 16,
            top: 293,
            child: Container(
              width: 343,
              height: 225,
              decoration: ShapeDecoration(
                color: const Color(0xFFD9D9D9),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              child: Stack(
                children: [
                  // Title
                  Positioned(
                    left: 27,
                    top: 25,
                    child: SizedBox(
                      width: 289,
                      height: 45,
                      child: Text(
                        'Confirm your salary',
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
                        print('Edit salary tapped');
                        // Here you could show a text input dialog or navigate to an input screen
                      },
                      child: Container(
                        width: 272,
                        height: 48,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF5F5F5),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, top: 12),
                          child: Text(
                            'Edit Salary',
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
                        // Navigate to investment period screen
                        Navigator.pushNamed(context, '/investment-period');
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
                        child: Center(
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
        ],
      ),
    );
  }
}