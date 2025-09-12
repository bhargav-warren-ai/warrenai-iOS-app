import 'package:flutter/material.dart';

class SalaryScreen extends StatefulWidget {
  const SalaryScreen({super.key});

  @override
  State<SalaryScreen> createState() => _SalaryScreenState();
}

class _SalaryScreenState extends State<SalaryScreen> {
  final TextEditingController _salaryController = TextEditingController();

  @override
  void dispose() {
    _salaryController.dispose();
    super.dispose();
  }

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
                  // Back Button
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 28,
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
            
            const SizedBox(height: 40),
            
            // Main Form Section
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Form Container
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(30),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF8F8F8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Column(
                        children: [
                          // Title
                          const Text(
                            'Confirm your salary',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 1.2,
                            ),
                          ),
                          
                          const SizedBox(height: 8),
                          
                          // Subtitle
                          const Text(
                            'This helps us personalize your investment recommendations',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.3,
                            ),
                          ),
                          
                          const SizedBox(height: 30),
                          
                          // Input Field
                          TextField(
                            controller: _salaryController,
                            keyboardType: TextInputType.number,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Enter your annual salary',
                              hintStyle: const TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                              prefixIcon: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                child: Text(
                                  '\$',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(color: Color(0xFF0088FF), width: 2),
                              ),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                            ),
                          ),
                          
                          const SizedBox(height: 30),
                          
                          // Confirm Button
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_salaryController.text.isNotEmpty) {
                                  Navigator.pushNamed(context, '/investment-period');
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Please enter your salary'),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF0088FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                elevation: 0,
                              ),
                              child: const Text(
                                'Confirm',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'SF Pro',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                    const SizedBox(height: 40),
                    
                    // Security Note
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock,
                          color: Color(0xFF999999),
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Your information is secure and encrypted',
                          style: TextStyle(
                            color: Color(0xFF999999),
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
                      true,
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