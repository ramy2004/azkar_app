import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, '/azkar_screen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          alignment: AlignmentDirectional.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.shade900,
                Colors.blue.shade50,
              ],
            ),
          ),
          child: Center(
            child: const Text('مسبحة الأذكار',
            style: TextStyle(
              fontSize: 45,
              fontFamily: 'Amiri',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            ),
          ),
        ),
    );
  }
}
