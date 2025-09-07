import 'package:flutter/material.dart';

class InvestmentScreen extends StatelessWidget {
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
                  
                  // INVEST Button (current screen)
                  Column(
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
          
          // High-Yield Savings Account Card
          Positioned(
            left: 31,
            top: 152,
            child: GestureDetector(
              onTap: () {
                print('High-Yield Savings Account tapped');
                // Could navigate to a detailed screen or external link
              },
              child: Container(
                width: 143,
                height: 217,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: const Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 5,
                      top: 5,
                      child: Text(
                        'Find a High-Yield Savings Account',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 179,
                      child: Container(width: 75, height: 75),
                    ),
                    Positioned(
                      left: 5,
                      top: 53,
                      child: SizedBox(
                        width: 133,
                        height: 43,
                        child: Text(
                          'Use Juno to search for a high-yield savings account that\'s right for you.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 1.40,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 9,
                      top: 186,
                      child: GestureDetector(
                        onTap: () {
                          print('Get started with High-Yield Savings');
                        },
                        child: Container(
                          width: 125,
                          height: 21,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF749FF7),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Center(
                            child: Text(
                              'Get started',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 1.40,
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
          ),
          
          // Connect Savings Account Card
          Positioned(
            left: 199,
            top: 152,
            child: GestureDetector(
              onTap: () {
                print('Connect Savings Account tapped');
              },
              child: Container(
                width: 143,
                height: 217,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: const Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 5,
                      top: 5,
                      child: Text(
                        'Connect Your Savings Account',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 53,
                      child: SizedBox(
                        width: 133,
                        height: 43,
                        child: Text(
                          'Securely link your existing savings account to Juno',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 1.40,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 9,
                      top: 186,
                      child: GestureDetector(
                        onTap: () {
                          print('Get started with connecting account');
                        },
                        child: Container(
                          width: 125,
                          height: 21,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF749FF7),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Center(
                            child: Text(
                              'Get started',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 1.40,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 34,
                      top: 91,
                      child: Container(
                        width: 75,
                        height: 88,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("https://placehold.co/75x88"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          // Open Robinhood Account Card
          Positioned(
            left: 31,
            top: 392,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/salary');
              },
              child: Container(
                width: 143,
                height: 217,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: const Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 5,
                      top: 5,
                      child: Text(
                        'Open Robinhood Account',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 5,
                      top: 53,
                      child: SizedBox(
                        width: 133,
                        height: 43,
                        child: Text(
                          'You have connected your Robinhood account with Juno.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 1.40,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 9,
                      top: 186,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/salary');
                        },
                        child: Container(
                          width: 125,
                          height: 21,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF749FF7),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Center(
                            child: Text(
                              'Open',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 1.40,
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
          ),
        ],
      ),
    );
  }
}