
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 该方法会在每次调用setState时重新执行，例如在上面的_incrementCounter方法中就是如此。
    // Flutter框架已被优化，使得重新运行构建方法的速度很快，因此您只需重新构建需要更新的任何内容，
    // 而不必逐个更改Widget实例。
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // backgroundColor: Colors.amber,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.blueAccent),
        ),
      ),
      body: Center(
        child: Column(
          // Column也是一个布局小部件。它接收一个子元素列表，并垂直排列它们。默认情况下，
          // 它会根据子元素的横向尺寸来自适应调整自己的宽度，并尝试与父元素等高。
          //
          // Column具有多种属性来控制其自身的大小以及如何定位其子元素。在这里，我们使用
          // mainAxisAlignment来使子元素在垂直方向上居中；这里的主轴是垂直轴，因为
          // Column是垂直方向的（交叉轴则是水平方向）。
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}