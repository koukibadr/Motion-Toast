import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

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
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
        child: ElevatedButton(
            onPressed: () {
              MotionToast.delete(
                title: "Title example",
                titleStyle: TextStyle(fontWeight: FontWeight.bold),
                description: "This is a description",
              ).show(context);
            },
            child: Text("Click Here")),
      ),
    );
  }
}
