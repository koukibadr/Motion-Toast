# Motion Toast

  

<p  align="center">
<img  src="https://github.com/koukibadr/Motion-Toast/blob/main/MOTION%20TOAST.gif?raw=true"  width="350"/>
<br>
<b>A well designed toast with animations for all platforms</b>
<b>Support material3 themes</b>
</p>

  
| ![center_motion_toast.gif](https://github.com/koukibadr/Motion-Toast/blob/main/example/center_motion_toast.gif?raw=true) | ![center_motion_toast_2.gif](https://github.com/koukibadr/Motion-Toast/blob/main/example/center_motion_toast_2.gif?raw=true) | ![motion_toast_bounce.gif](https://github.com/koukibadr/Motion-Toast/blob/main/example/motion_toast_bounce.gif?raw=true) |
|--|--|--|
| ![motion_toast_from_left.gif](https://github.com/koukibadr/Motion-Toast/blob/main/example/motion_toast_from_left.gif?raw=true) | ![motion_toast_from_right.gif](https://github.com/koukibadr/Motion-Toast/blob/main/example/motion_toast_from_right.gif?raw=true) | ![top_top_animation.gif](https://github.com/koukibadr/Motion-Toast/blob/main/example/top_top_animation.gif?raw=true) |


  

## Features

  

- Animated toasts with animated icons
- Support dark and light mode
- Built-in types (Success, Warning, Error, Info, Delete)
- Possibility to design your own toast
- Different color themes (mutliple colors support)
- Support null safety
- Heartbeat animations
- Full customized text
- Built in animations
- Customize toast layout (LTR/RTL)
- Customize toast duration
- Customize Motion toast position (Center, Bottom, Top)
- Support long text
- Background style customization
- Display simultaneous toasts
- Customizable barrier color
- Enable dismiss when toast is displayed (top, center, bottom)
- Responsive toast according to device size
- Customizable width and height
- Customizable box constraints
- Customizable toast padding
- Customizable border display
- Customizable sidebar widget display
  

## Getting Started

  

In order to add motion toast to your project add this line to your `pubspec.yaml` file

```yaml
dependencies:
	motion_toast: ^2.7.8
```

  

Or you can reference the main repository directly by adding those lines

  

```yaml
dependencies:
	motion_toast:
		git: https://github.com/koukibadr/Motion-Toast.git

```

  

## Attributes

  
  

```dart

/// the text widget used for description message
final  Widget description;

/// The title of the motion toast
/// if it's null it will not be rendered in the widget
final  Widget? title;

/// The motion toast type possible values:
/// sucess
/// error
/// warning
/// info
/// delete
/// custom
late  final  MotionToastType motionToastType;

  

/// The motion toast icon, for types other than custom
/// the icon will get the default type icon
/// if [motionToastType] set to [MotionToastType.custom] the icon parameter is required
late  final  IconData icon;

/// The motion toast background color
/// if `motionToastType == MOTION_TOAST_TYPE.CUSTOM` color parameter is required
/// else the color will get the default type color from [motionToastColors]
late  final  Color primaryColor;

/// Color applied on the motion toast side widget (sidebar) and the icon
/// if it's null secondary color will be the primary color
/// can be customized when using the default constructor
late  final  Color? secondaryColor;


/// the type of the background that will be applied on the motion toast content
/// available values:
/// - solid: the primary color will be applied as it is on the content background
/// - transparent: an opacity will be added to the primary color
/// - lighter: a white background added to the motion toast with little opacity added to the primary color
late  final  BackgroundType backgroundType;


/// The design type icon (Material design or Cupertino)
/// if [motionToastType] set to [MOTION_TOAST_TYPE.CUSTOM]  [iconType] will not be used
/// possible values
/// MATERIAL_DESIGN,
/// CUPERTINO
late  final  IconType? iconType;

/// The motion toast width by default it's set to 250
final  double? width;

/// define the height of the motion toast
final  double? height;

/// The constraint of the motion toast to size itself to the content
/// for responsive design
/// If it's `null`, then [width] and [height] will be used as it is.
final  BoxConstraints? constraints;

/// the motion toast icon size
/// by default it's 40
final  double iconSize;


/// disable or enable the heartbeat animation on the icon
/// by default the animation is enabled
final  bool enableAnimation;

/// The layout ToastOrientation (from right to left or from left to right)
/// {
/// LTR,
/// RTL
/// }
final  ToastOrientation layoutOrientation;

  

/// The type of animation, by default it's [AnimationType.fromBottom]
/// {
/// FROM_BOTTOM,
/// FROM_LEFT,
/// FROM_RIGHT
final  AnimationType animationType;


/// the Duration of the toast animation
/// by default it's 1.5 seconds
final  Duration animationDuration;

/// How long the toast will be shown
/// by default it's 3 seconds.
final  Duration toastDuration;

/// The toast animation curve
/// by default it's `Curves.ease`
final  Curve animationCurve;

/// The position where the motion toast will be displayed
/// possible values
/// CENTER,
/// TOP,
/// BOTTOM
final  MotionToastPosition position;

/// Define the border radius of the toast
/// by default it's 20
final  double borderRadius;

/// Function invoked when the toast is closed
final  Function? onClose;

/// define whether the motion toast can be dismissed or not
/// applied on bottom motion toast
final  bool dismissable;

/// The barrier color applied to the dialog display
/// by default the barrier is transparent [Colors.transparent]
final  Color barrierColor;

///padding added to the main widget motion taost
///by default the padding is set to 0
final  EdgeInsets padding;

/// define whether the borders are rendered or not
  /// by default  `= false`
  final bool displayBorder;

  /// define whether the side bar is displayed or not
  /// default `= true`
  final bool displaySideBar;

```

  
  

-  **When creating you custom toast you don't have to use `iconType` it will not be used when rendering the toast**

-  **if `secondaryColor` not defined sidebar and icon will be rendered with `primaryColor`**

  
  

if `constraint` and `width` and `height` are not defined the toast will be displayed with

```

BoxConstraints(
	maxWidth: MediaQuery.of(context).size.width * 0.75,
	minWidth: 200,
	maxHeight: 100,
)

```

  

otherwise if `width` and `height` are defined the `constraints` attribute will be ignored

and if you define `width` you need to define height also and vice versa

  

## Implementation

  

-  **Success Motion Toast**

  

```dart

MotionToast.success(
	title:  Text("Success Motion Toast"),
	description:  Text("Example of success motion toast"),
).show(context);

```

  

-  **Warning Motion Toast**

  

```dart

MotionToast.warning(
	title:  Text("Warning Motion Toast"),
	description:  Text("This is a Warning")
).show(context);

```

  

-  **Error Motion Toast**

  

```dart

MotionToast.error(
	title:  Text("Error"),
	description:  Text("Please enter your name")
).show(context);

```


-  **Info Motion Toast**

  

```dart

MotionToast.info(
	title:  Text("Info Motion Toast"),
	description:  Text("Example of Info Toast")
).show(context);

```

  

-  **Delete Motion Toast**

  

```dart
MotionToast.delete(
	title:  Text("Deleted"),
	description:  Text("The item is deleted")
).show(context);

```

  

-  **Custom Motion Toast**

  

To create your custom toast just use the default constructor,

**`icon`  `description` and `color` are required**

  

```dart

MotionToast(
	icon:  Icons.alarm,
	primaryColor:  Colors.pink,
	title:  Text("Custom Toast"),
	description:  Text("You can customize the toast!"),
	width:  300,
	height:  100,
).show(context);

```

  

-  **Right-Designed Motion Toast**

  

To change the toast layout you need to use `layoutOrientation`,

**`icon`  `description`** and **`color`** are required

  

```dart
MotionToast.success(
	title:  Text("من اليمين"),
	description:  Text("هذا مثال بالعربية"),
	layoutOrientation:  ToastOrientation.rtl,
	animationType:  AnimationType.fromRight,width:  300,
).show(context);
```

  

-  **Top-displayed Motion Toast**

  

To change the display position of the motion toast use `position` attribute

  

```dart

MotionToast(
	icon:  Icons.zoom_out,
	color:  Colors.deepOrange,
	title:  Text("Top Motion Toast"),
	description:  Text("Another motion toast example"),
	position: MotionToastPosition.top,
	animationType:  AnimationType.fromTop,
).show(context);

```

  

-  **Center-displayed Motion Toast**

  

```dart

  

MotionToast(
	icon:  Icons.zoom_out,
	color:  Colors.deepOrange,
	title:  Text("Center Motion Toast"),
	description:  Text("Another motion toast example"),
	position:  MotionToastPosition.center
).show(context);

```


-  **Using onClose parameter** (display two successive toasts)

  

```dart
MotionToast.success(
	title:  Text("User Data"),
	description:  Text("Your data has been deleted"),
	onClose: (){
		MotionToast.error(
			title:  Text("User Data"),
			description:  Text("Your data has been deleted"),
		).show(context);
	},
).show(context);

```

  

-  **Two-Colors Motion Toast**

  

```dart

MotionToast(
	icon:  Icons.zoom_out,
	primaryColor:  Colors.orange[500]!,
	secondaryColor:  Colors.grey,
	backgroundType:  BackgroundType.solid,
	title:  Text('Two Color Motion Toast'),
	description:  Text('Another motion toast example'),
	position:  MotionToastPosition.top,
	animationType:  AnimationType.fromTop,
	height:  100,
	width:  300,
).show(context);

```

  

<p  align="center">
<img  src="https://github.com/koukibadr/Motion-Toast/blob/main/example/two_color_motion_toast.png?raw=true"  width="250"/>
</p>

  

-  **Transparent background motion toast**

  

```dart

MotionToast(
	icon:  Icons.zoom_out,
	primaryColor:  Colors.grey[400]!,
	secondaryColor:  Colors.yellow,
	backgroundType:  BackgroundType.transparent,
	title:  Text('Two Color Motion Toast'),
	description:  Text('Another motion toast example'),
	position:  MotionToastPosition.center,
	height:  100,
	width:  300,
).show(context);

```

<p  align="center">
<img  src="https://github.com/koukibadr/Motion-Toast/blob/main/example/transparent_motion_toast.png?raw=true"  width="250"/>
</p>

  

-  **Motion toast without sidebar and with border**

  

```dart

MotionToast(
	icon:  Icons.zoom_out,
	primaryColor:  Colors.orange[500]!,
	secondaryColor:  Colors.grey,
	backgroundType:  BackgroundType.solid,
	title:  Text('Two Color Motion Toast'),
	description:  Text('Another motion toast example'),
	displayBorder: true,
	displaySideBar: false,
).show(context);

```

-  **Dismiss the toast from your UI screen**

  

```dart

MotionToast toast = MotionToast(
	icon:  Icons.zoom_out,
	primaryColor:  Colors.orange[500]!,
	secondaryColor:  Colors.grey,
	backgroundType:  BackgroundType.solid,
	title:  Text('Two Color Motion Toast'),
	description:  Text('Another motion toast example'),
	displayBorder: true,
	displaySideBar: false,
).show(context);
toast.dismiss();

```


## Contribution

  

Of course the project is open source, and you can contribute to it [repository link](https://github.com/koukibadr/Motion-Toast)

  

- If you **found a bug**, open an issue.

- If you **have a feature request**, open an issue.

- If you **want to contribute**, submit a pull request.
  

## Contributors



<a  href = "https://github.com/koukibadr/Motion-Toast/graphs/contributors">

<img  src = "https://contrib.rocks/image?repo=koukibadr/Motion-Toast"/>

</a>
