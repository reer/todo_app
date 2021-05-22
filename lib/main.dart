import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoListPage(),
    );
  }
}

// リスト一覧画面用Widget
class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // *** 追加する部分 ***
      // AppBarを表示し、タイトルも設定
      appBar: AppBar(
        title: Text('リスト一覧'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text('あいうえお'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('あいうえお'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('あいうえお'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('あいうえお'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // --- 省略 ---
        },
        child: Icon(Icons.add),
      ),
    );
  }
}