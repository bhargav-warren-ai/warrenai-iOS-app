import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

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
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
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
                    onTap: () => debugPrint('Settings tapped'),
                    child: const Icon(
                      Icons.settings,
                      color: Colors.black,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),

            // THIS IS THE KEY FIX - Expanded widget takes up all available space
            Expanded(
              child: Column(
                children: [
                  // You can add your main content here
                  const SizedBox(height: 40),
                  
                  const Text(
                    'Transactions',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  
                  const SizedBox(height: 20),
                  
                  // Placeholder for transaction list
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Transaction list will go here',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  
                  // This Spacer pushes everything below it to the bottom
                  const Spacer(),
                  
                  // Ask Juno Input
                  Container(
                    width: screenWidth - 32,
                    height: 50,
                    margin: const EdgeInsets.all(16),
                    child: GestureDetector(
                      onTap: () => debugPrint('Ask Juno tapped'),
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
                ],
              ),
            ),
            
            // Bottom Navigation Bar - This will now be at the actual bottom
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
                    // HOME Button
                    _buildNavItem(
                      Icons.home,
                      'HOME',
                      false,
                      () => Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false),
                    ),
                    
                    // TRANSACTIONS Button
                    _buildNavItem(
                      Icons.receipt_long,
                      'TRANSACTIONS',
                      true,
                      () {},
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
                      () => debugPrint('Envelopes tapped'),
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