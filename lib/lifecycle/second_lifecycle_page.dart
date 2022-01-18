import 'package:flutter/material.dart';
class SecondLifeCyclePage extends StatefulWidget {
  const SecondLifeCyclePage({Key? key}) : super(key: key);

  @override
  State<SecondLifeCyclePage> createState() => _SecondLifeCyclePageState();
}

class _SecondLifeCyclePageState extends State<SecondLifeCyclePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("-------页面2：initState--------");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("-------页面2：didChangeDependencies--------");
  }
  @override
  void didUpdateWidget(covariant SecondLifeCyclePage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("-------页面2：didUpdateWidget--------");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("-------页面2：deactivate--------");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("-------页面2：dispose--------");
  }

  @override
  Widget build(BuildContext context) {
    print("-------页面2：build--------");
    return Scaffold(
      appBar: AppBar(title: Text("第二页面"),),
      body: Container(
        alignment: Alignment.center,
        child: Text("第二页面"),
      ),
    );
  }

}
