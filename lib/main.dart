import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),
          headline2: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          subtitle2: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.orange,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Styles & Theme"),
      ),
      body: Column(
        children: [
          Text('Ankush Raj', style: Theme.of(context).textTheme.headline1,),
          Text('Mansi Gupta', style: Theme.of(context).textTheme.subtitle1,),
          Text('Ankush Raj', style: Theme.of(context).textTheme.headline2,),
          Text('Mansi Gupta', style: Theme.of(context).textTheme.subtitle2,),
        ],
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}