import 'package:flutter/material.dart';

class InvestmentScreen extends StatelessWidget {
  const InvestmentScreen({super.key});

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
                    onTap: () => debugPrint('Profile tapped'),
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
            
            // Investment Options
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.8,
                children: [
                  // High-Yield Savings Account Card
                  _buildInvestmentCard(
                    title: 'Find a High-Yield Savings Account',
                    description: 'Use Juno to search for a high-yield savings account that\'s right for you.',
                    buttonText: 'Get started',
                    // onTap: () => debugPrint('High-Yield Savings Account tapped'),
                    onTap: () => Navigator.pushNamed(context, '/salary'),
                    icon: Icons.savings,
                  ),
                  
                  // Connect Savings Account Card
                  _buildInvestmentCard(
                    title: 'Connect Your Savings Account',
                    description: 'Securely link your existing savings account to Juno',
                    buttonText: 'Get started',
                    onTap: () => debugPrint('Connect Savings Account tapped'),
                    icon: Icons.link,
                  ),
                  
                  // Open Robinhood Account Card
                  _buildInvestmentCard(
                    title: 'Open Robinhood Account',
                    description: 'You have connected your Robinhood account with Juno.',
                    buttonText: 'Open',
                    onTap: () => debugPrint('Open Robinhood Account tapped'),
                    icon: Icons.trending_up,
                  ),
                  
                  // Additional Investment Option
                  _buildInvestmentCard(
                    title: 'Portfolio Analysis',
                    description: 'Get insights into your investment portfolio performance.',
                    buttonText: 'Analyze',
                    onTap: () => debugPrint('Portfolio Analysis tapped'),
                    icon: Icons.analytics,
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
                    
                    // INVEST Button (current screen)
                    _buildNavItem(
                      Icons.trending_up,
                      'INVEST',
                      true,
                      () {},
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

  Widget _buildInvestmentCard({
    required String title,
    required String description,
    required String buttonText,
    required VoidCallback onTap,
    required IconData icon,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x0D000000),
              blurRadius: 8,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF749FF7).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  icon,
                  color: const Color(0xFF749FF7),
                  size: 28,
                ),
              ),
              
              const SizedBox(height: 12),
              
              // Title
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 1.2,
                ),
              ),
              
              const SizedBox(height: 8),
              
              // Description
              Expanded(
                child: Text(
                  description,
                  style: const TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 1.3,
                  ),
                ),
              ),
              
              const SizedBox(height: 12),
              
              // Button
              Container(
                width: double.infinity,
                height: 36,
                decoration: ShapeDecoration(
                  color: const Color(0xFF749FF7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
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