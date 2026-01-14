// lib/ui/splash_screen.dart
import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> 
    with SingleTickerProviderStateMixin {
  
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );
    
    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0, 0.5, curve: Curves.easeOut),
      ),
    );
    
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.3, 1, curve: Curves.elasticOut),
      ),
    );
    
    _controller.forward();
    
    Timer(const Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Opacity(
              opacity: _opacityAnimation.value,
              child: Transform.scale(
                scale: _scaleAnimation.value,
                child: child,
              ),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF553FB8), Color(0xFF7A67C7)],
                  ),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF553FB8).withOpacity(0.3),
                      blurRadius: 20,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.qr_code_scanner_rounded,
                  size: 56,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 32),
              RichText(
                text: const TextSpan(
                  text: 'QR',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 42,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF1A1A1A),
                    letterSpacing: -1,
                  ),
                  children: [
                    TextSpan(
                      text: 'Genius',
                      style: TextStyle(
                        color: Color(0xFF553FB8),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'QR Generator & Scanner',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: 200,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey.shade200,
                  color: const Color(0xFF553FB8),
                  minHeight: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}