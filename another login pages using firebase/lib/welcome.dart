

import 'package:flutter/material.dart';

class WElcome extends StatefulWidget {
  const WElcome({super.key});

  @override
  State<WElcome> createState() => _WElcomeState();
}

class _WElcomeState extends State<WElcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Welcome"),
      ),

    );
  }
}
