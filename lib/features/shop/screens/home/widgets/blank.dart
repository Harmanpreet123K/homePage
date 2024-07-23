import 'package:flutter/material.dart';

class BlankPage extends StatelessWidget {
  const BlankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Sorry, it's unavailble as work is done only on HomePage",style: TextStyle(fontSize: 20),),
      ),
    );
  }
}