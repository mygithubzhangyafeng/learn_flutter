import 'package:flutter/material.dart';
import 'package:learn_flutter/lifecycle/lifecycle_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: ListView(
        children: [
          _ListItem(title1: '声明周期',tap: (){_goLifeCylePage(); },),
          // FlatButton(onPressed: () { _goLifeCylePage(); }, child: Text("声明周期"),)
        ],
      ),
    );
  }

  _goLifeCylePage(){
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> LifeCyclePage()));
  }



}

class _ListItem extends StatelessWidget {

  final String title1;
  final Function() tap;

  const _ListItem({Key? key, required this.title1,required this.tap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 45,
        alignment: Alignment.center,
        child: FlatButton(onPressed: () { this.tap(); }, child: Text('$title1'),),
      ),
    );
  }
}

