
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class MyHomePage extends StatefulWidget {
	const MyHomePage({Key? key}) : super(key: key);
	
	@override
	State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
	static const String _channel = 'increment';
	static const String _pong = 'pong';
	static const String _emptyMessage = '';
	static const BasicMessageChannel<String?> platform =
	BasicMessageChannel<String?>(_channel, StringCodec());
	
	int _counter = 0;
	
	@override
	void initState() {
		super.initState();
		platform.setMessageHandler(_handlePlatformIncrement);
	}
	
	Future<String> _handlePlatformIncrement(String? message) async {
		setState(() {
			_counter++;
		});
		return _emptyMessage;
	}
	
	void _sendFlutterIncrement() {
		setState(() {
			_counter++;
		});
		print(_counter);
		platform.send(_pong);
	}
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("flutter"),
			),
			body: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: <Widget>[
					Expanded(
						child: Center(
							child: Text(
								'Platform button tapped $_counter time${ _counter == 1 ? '' : 's' }.',
								style: const TextStyle(fontSize: 17.0),
							),
						),
					),
					Container(
						padding: const EdgeInsets.only(bottom: 15.0, left: 5.0),
						child: Row(
							children: <Widget>[
								Image.network("https://github-do.panbaidu.cn//https://raw.githubusercontent.com/flutter/flutter/master/examples/flutter_view/assets/flutter-mark-square-64.png", scale: 1.5,),
								//Image.asset('assets/flutter-mark-square-64.png', scale: 1.5),
								const Text('Flutter', style: TextStyle(fontSize: 30.0)),
							],
						),
					),
				],
			),
			floatingActionButton: FloatingActionButton(
				onPressed: _sendFlutterIncrement,
				child: const Icon(Icons.add),
			),
		);
	}
}