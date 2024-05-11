import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(28, 39, 53, 1),
        alignment: Alignment.topCenter,
        child: Image.asset('assets/images/init/splash3.png', fit: BoxFit.fill,),
      ),
    );
  }
}
