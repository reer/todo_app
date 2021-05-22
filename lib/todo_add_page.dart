import 'package:flutter/material.dart';


class TodoAddPage extends StatefulWidget {
  @override
  _TodoAddPageState createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAddPage> {

  //入力されたテキストをデータとして持つ
  String _text = '';

  //データを元にWidgetを表示させる
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('リスト追加'),
      ),
      body: Container(
        padding: EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //入力されたテキストを表示する
            Text(_text, style: TextStyle(color: Colors.blue)),
            const SizedBox(height: 8),
            TextField(
              //入力されたテキストの値を受け取る
              onChanged: (String value) {
                //データが変更したことを知らせる(画面を更新)
                setState(() {
                  //データを変更
                  _text = value;
                });
              },
            ),
            const SizedBox(height: 9),
            Container(
              // 横幅いっぱいに広げる
              width: double.infinity,
              // リスト追加ボタン
              child: ElevatedButton(
                onPressed: () {},
                child: Text('リスト追加', style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text('cancel'),
              ),
            ),
          ],
        ),
      ),
    );
  }

}