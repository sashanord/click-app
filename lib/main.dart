import 'package:flutter/material.dart';

void main() => runApp(LayoutsApp());

class LayoutsApp extends StatefulWidget {
  const LayoutsApp({Key? key}) : super(key: key);

  @override
  State<LayoutsApp> createState() => _LayoutsAppState();
}

class _LayoutsAppState extends State<LayoutsApp> {
  Color _buttonColor = Colors.red;
  String _userName = 'Name';
  String _tempUserName = '';

  _changeUserName(String text) {
    setState(() => _userName = text);
  }

  _changeTempUserName(String text) {
    setState(() => _tempUserName = text);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Учимся расставлять кнопочки'), centerTitle: true,),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {
                  setState(() {
                    if (_buttonColor == Colors.red) {
                      _buttonColor = Colors.green;
                    } else
                      _buttonColor = Colors.red;
                  });
                }, child: Text('Поменять цвет')),
                Text('Привет, мир',
                  style: TextStyle(backgroundColor: _buttonColor),),

              ],),
            Text(_userName),
            TextField(style: TextStyle(fontSize: 22),
              onSubmitted: _changeUserName,
              onChanged:_changeTempUserName,),
            TextButton(onPressed: () {
              setState(() {
                _userName = _tempUserName;
              });
            }, child: Text('Submit'))

          ],
        ),
      ),
    );
  }
}




