import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sidebar_with_animation/animated_side_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideBarAnimated(
            onTap: (s) {},
            borderRadius: 0,
            // sideBarColor: Colors.white,
            // animatedContainerColor: Colors.white,
            widthSwitch: 700,
            topWidgetExpanded: Image.asset('assets/logo.png'),
            selectedColor: Colors.red,
            // topWidgetMinimize:
            //     ElevatedButton(onPressed: () {}, child: const Text("data")),
            sidebarItems: [
              SideBarItem(
                iconSelectedSvg: 'assets/selected.svg',
                iconUnselectedSvg: 'assets/unselected.svg',
                text: 'Home',
              ),
              SideBarItem(
                iconSelectedSvg: 'assets/selected.svg',
                iconUnselectedSvg: 'assets/unselected.svg',
                text: 'Insights',
              ),
              SideBarItem(
                iconSelectedSvg: 'assets/selected.svg',
                iconUnselectedSvg: 'assets/unselected.svg',
                text: 'Feature',
              ),
              SideBarItem(
                iconSelectedSvg: 'assets/selected.svg',
                text: 'Payouts',
              ),
              SideBarItem(
                iconSelectedSvg: 'assets/selected.svg',
                iconUnselectedSvg: 'assets/unselected.svg',
                text: 'Settings',
              ),
            ],
            selectedItemIndex: 0,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(bottom: 20),
            ),
          ),
        ],
      ),
    );
  }
}
