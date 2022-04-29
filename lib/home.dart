import 'package:flutter/material.dart';
import 'package:never_google_map_demo/MapCoordinatesPage.dart';
import 'package:never_google_map_demo/myTestView.dart';

import 'MapUiPage.dart';

class HomePage extends StatefulWidget {
  final Map? arguments;
  const HomePage({Key? key, this.arguments}) : super(key: key);

  @override
  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: true,
      bottom: false,
      left: true,
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("谷歌地图Demo"),
        ),
          body:ListView(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MapUiPage()));
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    child: const Text("谷歌官方-MapUiPage"),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MapCoordinatesPage()));
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    child: const Text("谷歌官方-MapCoordinatesPage"),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyTestView()));
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                    child: const Text("测试页面"),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}

