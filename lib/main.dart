import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:getxwebpractice/routes.dart';

void main() {
  configureApp();
  runApp(MyApp());
}

void configureApp() {
  setUrlStrategy(PathUrlStrategy());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
      routes: routes,
      // getPages: [
      //   GetPage(name: '/', page: () => MyHomePage()),
      //   GetPage(name: '/first', page: () => FirstPage()),
      //   GetPage(
      //     name: '/second',
      //     page: () => SecondPage(),
      //     transition: Transition.zoom,
      //   ),
      // ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My HomePage"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                // Get.toNamed("/first");
              },
              child: Text("First Page")),
          Center(child: Text("HomePage")),
        ],
      ),
    );
  }
}
