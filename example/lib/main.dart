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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Motion Toast Examples',
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
                  child: Text('Success Motion Toast'),
                ),
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
                  child: Text('Warning Motion Toast'),
                ),
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
                  child: Text('Error Motion Toast'),
                ),
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
                  child: Text('Info Motion Toast'),
                ),
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
                  child: Text('Delete Motion Toast'),
                ),
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
                  child: Text('Custom Motion Toast'),
                ),
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
                  child: Text('Center Motion Toast'),
                ),
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
                  child: Text('Top Motion Toast'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _displaySuccessMotionToast(BuildContext context) {
    MotionToast.success(
      title: 'من اليمين',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: 'هذا مثال بالعربية',
      descriptionStyle: TextStyle(fontSize: 12),
      layoutOrientation: ORIENTATION.rtl,
      animationType: ANIMATION.fromRight,
      width: 300,
      onClose: () {
        _displayWarningMotionToast(context);
      },
    ).show(context);
  }

  void _displayWarningMotionToast(BuildContext context) {
    MotionToast.warning(
      title: 'Warning Motion Toast',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: 'This is a Warning',
      animationCurve: Curves.bounceIn,
      borderRadius: 0,
      animationDuration: Duration(milliseconds: 1000),
    ).show(context);
  }

  void _displayErrorMotionToast(BuildContext context) {
    MotionToast.error(
      title: 'Error',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: 'Please enter your name',
      animationType: ANIMATION.fromLeft,
      position: MOTION_TOAST_POSITION.top,
      width: 300,
    ).show(context);
  }

  void _displayInfoMotionToast(BuildContext context) {
    MotionToast.info(
      title: 'Info Motion Toast',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      position: MOTION_TOAST_POSITION.center,
      description: 'Example of Info Toast',
    ).show(context);
  }

  void _displayDeleteMotionToast(BuildContext context) {
    MotionToast.delete(
      title: 'Deleted',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: 'The item is deleted',
      animationType: ANIMATION.fromTop,
      position: MOTION_TOAST_POSITION.top,
    ).show(context);
  }

  void _displayCustomMotionToast(BuildContext context) {
    MotionToast(
      icon: Icons.alarm,
      primaryColor: Colors.pink,
      secondaryColor: Colors.black,
      backgroundType: BACKGROUND_TYPE.solid,
      title: 'Custom Toast',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      height: 150,
      description:
          'Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In vitae turpis massa sed elementum tempus egestas sed sed.',
    ).show(context);
  }

  void _displayCenterMotionToast(BuildContext context) {
    MotionToast(
      icon: Icons.alarm,
      primaryColor: Colors.deepOrange,
      title: 'Center Toast',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      height: 150,
      description:
          'Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In vitae turpis massa sed elementum tempus egestas sed sed.',
      //description: "Center displayed motion toast",
      position: MOTION_TOAST_POSITION.center,
    ).show(context);
  }

  void _displayTopMotionToast(BuildContext context) {
    MotionToast(
      icon: Icons.zoom_out,
      primaryColor: Colors.deepOrange,
      title: 'Top Motion Toast',
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      description: 'Another motion toast example',
      position: MOTION_TOAST_POSITION.top,
      animationType: ANIMATION.fromTop,
      height: 100,
    ).show(context);
  }
}
