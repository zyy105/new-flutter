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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          '首页',
          style: TextStyle(color: Colors.blueAccent),
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(28, 39, 53, 1),
        alignment: Alignment.topCenter,
        child: Image.asset(
          'lib/assets/image/init/splash3.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
