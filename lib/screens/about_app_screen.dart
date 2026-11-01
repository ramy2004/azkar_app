import 'package:flutter/material.dart';

class AboutAppScreen extends StatefulWidget {

  final String message;

  AboutAppScreen({required this.message});

  @override
  State<AboutAppScreen> createState() => _AboutAppScreenState();
}

class _AboutAppScreenState extends State<AboutAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "عن التطبيق",
          style: TextStyle(
            fontFamily: 'Amiri',
            color: Colors.black,
          ),
        ),
        centerTitle: true,

      ),
      body:Center(
        child: Text(
          widget.message,
          style: TextStyle(
            fontSize: 35,
            fontFamily: 'Amiri',
            fontWeight: FontWeight.bold,
            // color: Colors.white,
          ),
        ),
      ),
    );
  }
}
