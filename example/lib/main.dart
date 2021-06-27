import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Motion Toast Demo',
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Motion Toast Examples",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                  _displaySuccessMotionToast(context);
                },
                child: Text("Success Motion Toast")),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                  _displayWarningMotionToast(context);
                },
                child: Text("Warning Motion Toast")),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                  _displayErrorMotionToast(context);
                },
                child: Text("Error Motion Toast")),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                  _displayInfoMotionToast(context);
                },
                child: Text("Info Motion Toast")),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                  _displayDeleteMotionToast(context);
                },
                child: Text("Delete Motion Toast")),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                  _displayCustomMotionToast(context);
                },
                child: Text("Custom Motion Toast")),
          ),
        ],
      ),
    );
  }

  _displaySuccessMotionToast(BuildContext context) {
    MotionToast.success(
      title: "Success Motion Toast",
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: "Example of success motion toast",
      descriptionStyle: TextStyle(fontSize: 12),
      layoutOrientation: ORIENTATION.RTL,
      width: 300,
    ).show(context);
  }

  _displayWarningMotionToast(BuildContext context) {
    MotionToast.warning(
            title: "Warning Motion Toast",
            titleStyle: TextStyle(fontWeight: FontWeight.bold),
            description: "This is a Warning")
        .show(context);
  }

  _displayErrorMotionToast(BuildContext context) {
    MotionToast.error(
      title: "Error",
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: "Please enter your name",
    ).show(context);
  }

  _displayInfoMotionToast(BuildContext context) {
    MotionToast.info(
            title: "Info Motion Toast",
            titleStyle: TextStyle(fontWeight: FontWeight.bold),
            description: "Example of Info Toast")
        .show(context);
  }

  _displayDeleteMotionToast(BuildContext context) {
    MotionToast.delete(
            title: "Deleted",
            titleStyle: TextStyle(fontWeight: FontWeight.bold),
            description: "The item is deleted")
        .show(context);
  }

  _displayCustomMotionToast(BuildContext context) {
    MotionToast(
      icon: Icons.alarm,
      color: Colors.pink,
      title: "Custom Toast",
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: "You can customize the toast!",
      width: 300,
    ).show(context);
  }
}
