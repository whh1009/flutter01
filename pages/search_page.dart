import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
	const AppBarDemo({Key? key}) : super(key: key);
	
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				
				//标题居中
				centerTitle: true,
				backgroundColor: Colors.red,
				//设置leading后会挡住默认返回按钮
				// leading: IconButton(
				//   icon: Icon(Icons.menu),
				//   onPressed: (){
				// 		print("press");
				//   },
				// ),
				//右侧图标
				actions: [
					IconButton(onPressed: (){}, icon: const Icon(Icons.search)),
					IconButton(onPressed: (){}, icon: const Icon(Icons.list)),
					IconButton(onPressed: (){}, icon: const Icon(Icons.circle_outlined)),
					IconButton(onPressed: (){}, icon: const Icon(Icons.star_border_outlined)),
				],
			),
			body: ElevatedButton(
				child: Text("返回"),
				onPressed: (){
				
				},
			),
		);
	}
}

