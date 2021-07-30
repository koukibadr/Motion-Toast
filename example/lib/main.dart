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
    return SafeArea(
      child: Container(
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
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    _displayCenterMotionToast(context);
                  },
                  child: Text("Center Motion Toast")),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    _displayTopMotionToast(context);
                  },
                  child: Text("Top Motion Toast")),
            ),
          ],
        ),
      ),
    );
  }

  _displaySuccessMotionToast(BuildContext context) {
    MotionToast.success(
      title: "من اليمين",
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: "هذا مثال بالعربية",
      descriptionStyle: TextStyle(fontSize: 12),
      layoutOrientation: ORIENTATION.RTL,
      animationType: ANIMATION.FROM_RIGHT,
      width: 300,
    ).show(context);
  }

  _displayWarningMotionToast(BuildContext context) {
    MotionToast.warning(
      title: "Warning Motion Toast",
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: "This is a Warning",
      animationCurve: Curves.bounceIn,
      borderRadius: 0,
      animationDuration: Duration(milliseconds: 1000),
    ).show(context);
  }

  _displayErrorMotionToast(BuildContext context) {
    MotionToast.error(
      title: "Error",
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: "Please enter your name",
      animationType: ANIMATION.FROM_LEFT,
      position: MOTION_TOAST_POSITION.TOP,
      width: 300,
    ).show(context);
  }

  _displayInfoMotionToast(BuildContext context) {
    MotionToast.info(
            title: "Info Motion Toast",
            titleStyle: TextStyle(fontWeight: FontWeight.bold),
            position: MOTION_TOAST_POSITION.CENTER,
            description: "Example of Info Toast")
        .show(context);
  }

  _displayDeleteMotionToast(BuildContext context) {
    MotionToast.delete(
      title: "Deleted",
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: "The item is deleted",
      animationType: ANIMATION.FROM_TOP,
      position: MOTION_TOAST_POSITION.TOP,
    ).show(context);
  }

  _displayCustomMotionToast(BuildContext context) {
    MotionToast(
      icon: Icons.alarm,
      color: Colors.pink,
      title: "Custom Toast",
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      height: 150,
      description: "Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In vitae turpis massa sed elementum tempus egestas sed sed.",
    ).show(context);
  }

  _displayCenterMotionToast(BuildContext context) {
    MotionToast(
      icon: Icons.alarm,
      color: Colors.deepOrange,
      title: "Center Toast",
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      height: 150,
      description: "Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In vitae turpis massa sed elementum tempus egestas sed sed.",
      //description: "Center displayed motion toast",
      position: MOTION_TOAST_POSITION.CENTER,
    ).show(context);
  }

  _displayTopMotionToast(BuildContext context) {
    MotionToast(
      icon: Icons.zoom_out,
      color: Colors.deepOrange,
      title: "Top Motion Toast",
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: "Another motion toast example",
      position: MOTION_TOAST_POSITION.TOP,
      animationType: ANIMATION.FROM_TOP,
      height: 100,
    ).show(context);
  }
}
