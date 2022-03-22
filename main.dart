import 'package:flutter/material.dart';
import 'package:untitled/bottom_navigation_bar/bottom_navigation.dart';
import 'chip/action_chip.dart';
import 'chip/chip.dart';
import 'chip/choice_chip.dart';
import 'expansion/expansion_panel_list.dart';
import 'flutter_view.dart';
import 'search_bar/search_bar.dart';
import 'wrap/warp.dart';
import 'chip/filter.chip.dart';
import 'chip/input_chip.dart';
import 'expansion/expansion_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "test",
      home: const BottomNavigationWidget(),
      // Scaffold(
      //   appBar: AppBar(
      //     title: const Text("Flutter"),
      //   ),
      //   bottomNavigationBar: const BottomNavigationWidget(),
      //   body: Center(
      //     child: Column(
      //       children: [
      //         ElevatedButton(
      //           onPressed: () {
      //             Navigator.of(context)
      //                 .push(MaterialPageRoute(builder: (context) {
      //               return const SearchBar();
      //             }));
      //           },
      //           child: const Text("检索框"),
      //         ),
      //         ElevatedButton(
      //           onPressed: () {
      //             Navigator.of(context)
      //                 .push(MaterialPageRoute(builder: (context) {
      //               return const MyWarp();
      //             }));
      //           },
      //           child: const Text("wrap"),
      //         ),
      //         Row(
      //           children: [
      //             ElevatedButton(
      //               onPressed: () {
      //                 Navigator.of(context)
      //                     .push(MaterialPageRoute(builder: (context) {
      //                   return ChipDemo();
      //                 }));
      //               },
      //               child: const Text("Chip"),
      //             ),
      //             ElevatedButton(
      //               onPressed: () {
      //                 Navigator.of(context)
      //                     .push(MaterialPageRoute(builder: (context) {
      //                   return ActionChipDemo();
      //                 }));
      //               },
      //               child: const Text("ActionChip"),
      //             ),
      //             ElevatedButton(
      //               onPressed: () {
      //                 Navigator.of(context)
      //                     .push(MaterialPageRoute(builder: (context) {
      //                   return FilterChipDemo();
      //                 }));
      //               },
      //               child: const Text("Filter"),
      //             ),
      //             ElevatedButton(
      //               onPressed: () {
      //                 Navigator.of(context)
      //                     .push(MaterialPageRoute(builder: (context) {
      //                   return ChoiceChipDemo();
      //                 }));
      //               },
      //               child: const Text("Choice"),
      //             ),
      //             ElevatedButton(
      //               onPressed: () {
      //                 Navigator.of(context)
      //                     .push(MaterialPageRoute(builder: (context) {
      //                   return InputChipDemo();
      //                 }));
      //               },
      //               child: const Text("Input"),
      //             ),
      //           ],
      //         ),
      //         Row(
      //           children: [
      //             ElevatedButton(
      //               onPressed: () {
      //                 Navigator.of(context)
      //                     .push(MaterialPageRoute(builder: (context) {
      //                   return ExpansionPanelListDemo();
      //                 }));
      //               },
      //               child: const Text("expansion-panel"),
      //             ),
      //             ElevatedButton(
      //               onPressed: () {
      //                 Navigator.of(context)
      //                     .push(MaterialPageRoute(builder: (context) {
      //                   return ExpansionTileDemo();
      //                 }));
      //               },
      //               child: const Text("expansion-title"),
      //             ),
      //           ],
      //         ),
      //         ElevatedButton(
      //           onPressed: () {
      //             Navigator.of(context)
      //                 .push(MaterialPageRoute(builder: (context) {
      //               return const MyHomePage();
      //             }));
      //           },
      //           child: const Text("Flutter View"),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
