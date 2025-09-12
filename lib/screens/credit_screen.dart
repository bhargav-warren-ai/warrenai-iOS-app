import 'package:flutter/material.dart';

class CreditScreen extends StatelessWidget {
  const CreditScreen({super.key});

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
            
            // Credit Score Section
            Container(
              width: screenWidth - 32,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(24),
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x1A000000),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Credit Score',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.trending_up,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 16),
                  
                  const Text(
                    '742',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  
                  const SizedBox(height: 8),
                  
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          'Excellent',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '+12 points this month',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            // Credit Cards Section
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  // Section Title
                  const Text(
                    'Your Credit Cards',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Credit Card 1
                  _buildCreditCard(
                    cardName: 'Chase Sapphire Preferred',
                    lastFour: '4892',
                    balance: '\$2,847.32',
                    limit: '\$15,000',
                    utilization: 19,
                    cardColor: const LinearGradient(
                      colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  
                  const SizedBox(height: 16),
                  
                  // Credit Card 2
                  _buildCreditCard(
                    cardName: 'American Express Gold',
                    lastFour: '1006',
                    balance: '\$543.21',
                    limit: '\$8,500',
                    utilization: 6,
                    cardColor: const LinearGradient(
                      colors: [Color(0xFFFB923C), Color(0xFFF59E0B)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Add New Card Button
                  GestureDetector(
                    onTap: () => debugPrint('Add new card tapped'),
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF8F9FA),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 2,
                            color: Color(0xFFE9ECEF),
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Color(0xFF6C757D),
                            size: 24,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Add New Credit Card',
                            style: TextStyle(
                              color: Color(0xFF6C757D),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 24),
                  
                  // Credit Tips Section
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF0F9FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.lightbulb_outline,
                              color: Color(0xFF0EA5E9),
                              size: 24,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Credit Tips',
                              style: TextStyle(
                                color: Color(0xFF0EA5E9),
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        
                        const SizedBox(height: 12),
                        
                        const Text(
                          'Keep your credit utilization below 30% to maintain a good credit score. Your current utilization is excellent!',
                          style: TextStyle(
                            color: Color(0xFF374151),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
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
                    
                    // CREDIT Button (current screen)
                    _buildNavItem(
                      Icons.credit_card,
                      'CREDIT',
                      true,
                      () {},
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

  Widget _buildCreditCard({
    required String cardName,
    required String lastFour,
    required String balance,
    required String limit,
    required int utilization,
    required LinearGradient cardColor,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        gradient: cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x1A000000),
            blurRadius: 8,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Card Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Icon(
                Icons.credit_card,
                color: Colors.white70,
                size: 24,
              ),
            ],
          ),
          
          const SizedBox(height: 16),
          
          // Card Number
          Text(
            '•••• •••• •••• $lastFour',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              letterSpacing: 2,
            ),
          ),
          
          const SizedBox(height: 16),
          
          // Balance and Limit
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Balance',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    balance,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Limit',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    limit,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          
          const SizedBox(height: 12),
          
          // Utilization Bar
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$utilization% utilization',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    LinearProgressIndicator(
                      value: utilization / 100,
                      backgroundColor: Colors.white30,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        utilization > 30 ? Colors.orange : Colors.green,
                      ),
                    ),
                  ],
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