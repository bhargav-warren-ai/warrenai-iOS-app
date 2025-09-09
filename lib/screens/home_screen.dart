import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Recent Transactions (semi-transparent overlay)
          Positioned(
            left: 16,
            top: 487,
            child: Opacity(
              opacity: 0.20,
              child: Container(
                width: 343,
                height: 290,
                child: Stack(
                  children: [
                    // Transaction container
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 343,
                        height: 290,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: const Color(0xFFDFDFDF),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    // Transaction items would go here...
                    // (I'll include a few for example)
                    Positioned(
                      left: 12,
                      top: 54,
                      child: Container(
                        width: 320,
                        height: 45,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              color: const Color(0xFFD9D9D9),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    // Transaction details
                    Positioned(
                      left: 68,
                      top: 63,
                      child: Text(
                        'Costco',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.40,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 252,
                      top: 63,
                      child: Text(
                        '-\$145.00',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFFFF0000),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.40,
                        ),
                      ),
                    ),
                  ],
                ),
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
              child: // Replace your bottom navigation section with this:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // HOME Button (current screen - highlighted)
                      GestureDetector(
                        onTap: () {
                          // Already on home, do nothing or refresh
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
                              child: const Icon(
                                Icons.home,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
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
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.receipt_long,
                              color: Colors.black,
                              size: 24,
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
                      ),
                      
                      // INVEST Button
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/investment');
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.trending_up,
                              color: Colors.black,
                              size: 24,
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
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.credit_card,
                              color: Colors.black,
                              size: 24,
                            ),
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
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.mail_outline,
                              color: Colors.black,
                              size: 24,
                            ),
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
          
          // Tab buttons (Overview/Accounts)
          Positioned(
            left: 25,
            top: 121,
            child: Row(
              children: [
                // Overview button (selected)
                Container(
                  width: 100,
                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.90),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Overview',
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
                SizedBox(width: 10),
                // Accounts button
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/accounts');
                  },
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF6F6F6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Accounts',
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
              ],
            ),
          ),
          
          // Header with profile and settings
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
                    child: SizedBox(
                      width: 118,
                      height: 28,
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
                  ),
                  Positioned(
                    left: 308,
                    top: 0,
                    child: GestureDetector(
                      onTap: () {
                        print('Settings tapped');
                      },
                      child: const Icon(
                        Icons.settings,
                        color: Colors.black,
                        size: 28,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 4,
                    child: GestureDetector(
                      onTap: () {
                        print('Profile tapped');
                      },
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
          
          // Net Worth Chart
          Positioned(
            left: 16,
            top: 198,
            child: Container(
              width: 343,
              height: 282,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: const Color(0xFFDFDFDF),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Stack(
                children: [
                  // Chart labels and data points
                  Positioned(
                    left: 16,
                    top: 64,
                    child: Text(
                      '\$50K',
                      style: TextStyle(
                        color: const Color(0xFF828282),
                        fontSize: 10,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                  ),
                  // More chart elements...
                  Positioned(
                    left: 16,
                    top: 16,
                    child: Text(
                      'Net Worth',
                      style: TextStyle(
                        color: const Color(0xFF959595),
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.40,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 244,
                    top: 16,
                    child: Text(
                      '\$48,000',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 1.40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // Recent Transactions Label
          Positioned(
            left: 32,
            top: 503,
            child: Text(
              'Recent Transactions',
              style: TextStyle(
                color: const Color(0xFF959595),
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 1.40,
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
                // Could navigate to a chat screen
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
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                    ),
                    SizedBox(width: 12),
                    SizedBox(
                      width: 279,
                      child: Text(
                        'Ask Juno',
                        style: TextStyle(
                          color: const Color(0xFF828282),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.50,
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