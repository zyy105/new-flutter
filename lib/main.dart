import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/index_page.dart';
import 'package:flutter_application_1/router/router.dart';
// import 'package:flutter_application_1/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green, brightness: Brightness.light),
        textTheme: const TextTheme(
            displayLarge: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
            titleLarge: TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
              color: Colors.lightBlue,
            ),
            titleMedium: TextStyle(
              color: Colors.deepOrange,
            ),
            titleSmall: TextStyle(
              color: Colors.yellow,
            )),
        useMaterial3: true,
      ),
      home: const IndexPage(),
      // 指定一个默认的initialRoute，如果没有从外部获取到特定的route
      // initialRoute: '/',
      // 在MaterialApp初始化时被调用，用于动态生成初始路由。
      // 这个函数允许您根据应用程序的状态或特定条件来确定启动时的第一个页面，
      // 提供了比直接设置home属性更灵活的路由控制方式。
      // 这个功能在需要动态决定首个显示页面或者处理深层链接（deep linking）时特别有用。
      // onGenerateInitialRoutes: (initialRoute) {
      //   return [
      //     MaterialPageRoute(builder: (context) => const IndexPage()),
      //   ];
      // },
      // onGenerateRoute: Routers.generateRoute,
    );
  }
}
