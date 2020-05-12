import 'package:flutter/material.dart';
import 'package:rd_environment_scaffold/rd_environment_scaffold.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return RdEnvironmentScaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => StagePage()));
              },
              child: Text('Stage Page'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => UatPage()));
              },
              child: Text('UAT Page'),
            ),
          ],
        ),
      ),
    );
  }
}


class StagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RdEnvironmentScaffold(
      buildType: BuildType.stage,
      appBar: AppBar(title: Text('Stage Page')),
      body: Center(
        child: Text(
          'This is stage Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}


class UatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RdEnvironmentScaffold(
      buildType: BuildType.uat,
      appBar: AppBar(title: Text('Uat Page')),
      body: Center(
        child: Text(
          'This is uat page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}