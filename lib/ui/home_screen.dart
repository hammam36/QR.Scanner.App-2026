// lib/ui/home_screen.dart
import 'package:flutter/material.dart';
import 'package:qr_generator_and_scanner/ui/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textTertiary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Hammam M.',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textPrimary,
                          fontFamily: 'Manrope',
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: AppBorderRadius.full,
                      border: Border.all(color: AppColors.outlineVariant),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.settings_outlined),
                      onPressed: () {},
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 32),
              
              // Stats Card
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: AppBorderRadius.xlarge,
                  gradient: AppColors.primaryGradient,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withOpacity(0.25),
                      blurRadius: 20,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _StatItem(
                      value: '128',
                      label: 'Generated',
                      icon: Icons.qr_code_2_rounded,
                    ),
                    Container(
                      width: 1,
                      height: 40,
                      color: Colors.white.withOpacity(0.2),
                    ),
                    _StatItem(
                      value: '64',
                      label: 'Scanned',
                      icon: Icons.qr_code_scanner_rounded,
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: 40),
              
              // Title
              Text(
                'Quick Actions',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              
              const SizedBox(height: 16),
              
              // Menu Grid
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1.1,
                  children: const [
                    _MenuCard(
                      icon: Icons.add_circle_outline_rounded,
                      title: 'Create QR',
                      subtitle: 'Generate new code',
                      color: Color(0xFF553FB8),
                      route: '/create',
                    ),
                    _MenuCard(
                      icon: Icons.qr_code_scanner_rounded,
                      title: 'Scan QR',
                      subtitle: 'Scan existing code',
                      color: Color(0xFF10B981),
                      route: '/scan',
                    ),
                    _MenuCard(
                      icon: Icons.history_rounded,
                      title: 'History',
                      subtitle: 'View past scans',
                      color: Color(0xFF3B82F6),
                      route: '',
                    ),
                    _MenuCard(
                      icon: Icons.collections_bookmark_rounded,
                      title: 'Templates',
                      subtitle: 'Quick formats',
                      color: Color(0xFF8B5CF6),
                      route: '',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;
  final IconData icon;
  
  const _StatItem({
    required this.value,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 32),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontFamily: 'Manrope',
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(0.9),
          ),
        ),
      ],
    );
  }
}

class _MenuCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final String route;

  const _MenuCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: route.isNotEmpty
          ? () => Navigator.pushNamed(context, route)
          : null,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: AppBorderRadius.large,
          border: Border.all(color: AppColors.outlineVariant),
          boxShadow: [AppShadows.small],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: AppBorderRadius.large,
                ),
                child: Icon(
                  icon,
                  size: 28,
                  color: color,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textTertiary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}