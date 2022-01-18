import 'package:flutter/material.dart';
import 'package:learn_flutter/lifecycle/second_lifecycle_page.dart';

class LifeCyclePage extends StatefulWidget {
  const LifeCyclePage({Key? key}) : super(key: key);

  @override
  _LifeCyclePageState createState() => _LifeCyclePageState();
}

class _LifeCyclePageState extends State<LifeCyclePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("-------initState--------");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("-------didChangeDependencies--------");
  }
  @override
  void didUpdateWidget(covariant LifeCyclePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("-------didUpdateWidget--------");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("-------deactivate--------");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("-------dispose--------");
  }

  @override
  Widget build(BuildContext context) {
    print("-------build--------");

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: FlatButton(child: Text("jump"),onPressed: (){
          // Navigator.of(context).pushNamed("/SecondLifeCyclePage").then((value) => print("页面返回"));
          Navigator.push(context, MaterialPageRoute(
              builder: (BuildContext context)=> SecondLifeCyclePage())).then((value) => print("页面返回"));
        },),
      ),
      appBar: AppBar(title:Text("声明周期")),
    );
  }

}
