import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    
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
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text(
                            'Chart Area',
                            style: TextStyle(
                              color: Color(0xFF828282),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
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
                      () => Navigator.pushNamed(context, '/accounts'),
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
                      () => print('Credit tapped'),
                    ),
                    
                    // ENVELOPES Button
                    _buildNavItem(
                      Icons.mail_outline,
                      'ENVELOPES',
                      false,
                      () => print('Envelopes tapped'),
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
                    color: const Color(0xFFD9D9D9).withOpacity(0.4),
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