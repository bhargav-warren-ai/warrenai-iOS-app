import 'package:flutter/material.dart';

class AccountsScreen extends StatelessWidget {
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
                      Navigator.pop(context);
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
                  
                  // TRANSACTIONS Button (current screen)
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
                  
                  // INVEST Button
                  GestureDetector(
                    onTap: () {
                      print('Investment screen not created yet');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 35, height: 35),
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
          
          // Tab buttons (Overview/Accounts)
          Positioned(
            left: 25,
            top: 121,
            child: Row(
              children: [
                // Overview button
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Go back to home/overview
                  },
                  child: Container(
                    width: 100,
                    height: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF6F6F6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Overview',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 1.40,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                // Accounts button (selected)
                Container(
                  width: 100,
                  height: 30,
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Accounts',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 1.40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // Chase Account Card
          Positioned(
            left: 19,
            top: 195,
            child: GestureDetector(
              onTap: () {
                print('Chase account tapped');
                // Could navigate to account details
              },
              child: Container(
                width: 343,
                height: 140,
                decoration: ShapeDecoration(
                  color: const Color(0xFFEFEFEF),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: const Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 18,
                      top: 116,
                      child: Text(
                        '••••  ••••  ••••  2222',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 102,
                      child: Text(
                        'Account Number',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18,
                      top: 55,
                      child: Text(
                        'Available Balance',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18,
                      top: 69,
                      child: Text(
                        '\$25,780.32',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: 7,
                      child: Container(width: 40, height: 40),
                    ),
                    Positioned(
                      left: 59,
                      top: 10,
                      child: Text(
                        'Chase',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      top: 28,
                      child: Text(
                        'Checking',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          // Robinhood Account Card
          Positioned(
            left: 19,
            top: 350,
            child: GestureDetector(
              onTap: () {
                print('Robinhood account tapped');
              },
              child: Container(
                width: 343,
                height: 140,
                decoration: ShapeDecoration(
                  color: const Color(0xFFEFEFEF),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: const Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 18,
                      top: 116,
                      child: Text(
                        '••••  ••••  ••••  6843',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 102,
                      child: Text(
                        'Account Number',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18,
                      top: 55,
                      child: Text(
                        'Available Balance',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18,
                      top: 69,
                      child: Text(
                        '\$39,970.32',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 59,
                      top: 10,
                      child: Text(
                        'Robinhood',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      top: 28,
                      child: Text(
                        'Investing',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          // Wealthfront Account Card (semi-transparent as in original)
          Positioned(
            left: 20,
            top: 505,
            child: Opacity(
              opacity: 0.10,
              child: Container(
                width: 343,
                height: 140,
                decoration: ShapeDecoration(
                  color: const Color(0xFFEFEFEF),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: const Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 18,
                      top: 116,
                      child: Text(
                        '••••  ••••  ••••  9794',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 102,
                      child: Text(
                        'Account Number',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18,
                      top: 55,
                      child: Text(
                        'Available Balance',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18,
                      top: 69,
                      child: Text(
                        '\$19,607.87',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 59,
                      top: 10,
                      child: Text(
                        'Wealthfront',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 60,
                      top: 28,
                      child: Text(
                        'Savings',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.40,
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