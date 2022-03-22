import 'package:flutter/material.dart';

class MyWarp extends StatefulWidget {
  const MyWarp({Key? key}) : super(key: key);

  @override
  _MyWarpState createState() => _MyWarpState();
}

class _MyWarpState extends State<MyWarp> {
  late List<Widget> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list.add(buildAddButton());
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
      
      ),
      body: Center(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: width,
            height: height,
            color: Colors.grey,
            child: Wrap(
              children: list,
              spacing: 24.0,
              crossAxisAlignment: WrapCrossAlignment.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAddButton() {
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(list.length - 1, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100.0,
          height: 100.0,
          color: Colors.black54,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildPhoto() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 100.0,
        height: 100.0,
        color: Colors.amber,
        child: const Center(
          child: Text("照片"),
        ),
      ),
    );
  }
}
