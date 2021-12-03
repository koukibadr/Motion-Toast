
#  Motion Toast

  

  

<p  align="center">
<img  src="https://github.com/koukibadr/Motion-Toast/blob/main/MOTION%20TOAST.gif?raw=true" width="350"/>
<br>
<b>A new well designed toast with animations and multiple built-in types</b>
</p>

  

  

| ![motion_toast_from_right.gif](https://github.com/koukibadr/Motion-Toast/blob/main/example/motion_toast_from_right.gif?raw=true) | ![motion_toast_bounce.gif](https://github.com/koukibadr/Motion-Toast/blob/main/example/motion_toast_bounce.gif?raw=true) |  
|--|--|
| ![center_motion_toast.gif](https://github.com/koukibadr/Motion-Toast/blob/main/example/center_motion_toast.gif?raw=true) | ![center_motion_toast_2.gif](https://github.com/koukibadr/Motion-Toast/blob/main/example/center_motion_toast_2.gif?raw=true) |
| ![top_left_animation.gif](https://github.com/koukibadr/Motion-Toast/blob/main/example/top_left_animation.gif?raw=true) | ![top_top_animation.gif](https://github.com/koukibadr/Motion-Toast/blob/main/example/top_top_animation.gif?raw=true) |

##  Features

-  Animated toasts with animated icons
-  Built-in types (Success, Warning, Error, Info, Delete)
-  Possibility to design your own toast
- Different color themes (mutliple colors support)
-  Support null safety
-  Heartbeat animations
-  Full customized text
-  Built in animations
-  Customize toast layout (LTR/RTL)
-  Customize toast duration
-  Customize Motion toast position (Center, Bottom, Top)
-  Support long text
- Background  style customization
- Customize dismission of the toast


##  Getting Started

  

In order to add motion toast to your project add this line to your `pubspec.yaml` file

```yaml
dependencies:
	motion_toast: ^2.0.0
```

  

Or you can reference the main repository directly by adding those lines

```yaml

dependencies:
	motion_toast:
		git: https://github.com/koukibadr/Motion-Toast.git
```

  

##  Attributes

| Name | Type | Description | Required | Default Value |
|--|--|--|--|--|
| **description** | `String` | The description text | true | N/A |
| **title** | `String` | The toast title | false | empty string |
| **descriptionStyle** | `TextStyle`| The text style applied on the description text | false | `TextStyle(color: Colors.black)` |
| **titleStyle** | `TextStyle` | The text style applied on the title | false | `TextStyle(color: Colors.black)` |
| **icon** | `IconData` | The toast icon | **required when creating a custom toast otherwise you don't have to pass it** | N/A |
| **primaryColor** | `Color` | The motion toast background color (applied on the background) | **required when creating a custom toast otherwise you don't have to pass it** | N/A |
| **width** | `double` | The motion toast width | false | 350 |
| **height** | `double` | The motion toast height | false | 80 |
| **iconSize** | `double` | The icon size | false | 40 |
| **iconType** | `ICON_TYPE` String | The design type of the icon (Material design or Cupertino) values: `ICON_TYPE.MATERIAL_DESIGN or ICON_TYPE.CUPERTINO` | false | `ICON_TYPE.MATERIAL_DESIGN` |
| **enableAnimation** | `boolean`| Whether enable or disable the animation applied on the icon (heartbeat animation) | false | true |
| **layoutOrientation** | `ORIENTATION`| the layout orientation of the toast (from left to right LTR or from right to left RTL | false | `ORIENTATION.LTR`|
| **animationType** | `ANIMATION`| the toast enter animation | false | `ANIMATION.FROM_BOTTOM`|
| **animationDuration** | `Duration`| the animation duration | false | `Duration(milliseconds: 1500)`|
| **toastDuration** | `Duration`| How much the toast will be shown | false | `Duration(seconds: 3)` |
| **animationCurve** | `Curves`| The toast animation curve | false | `Curves.ease` |
| **position** | `MOTION_TOAST_POSITION`| The position where the toast will be displayed (TOP, BOTTOM, CENTER) | false | `MOTION_TOAST_POSITION.BOTTOM` |
| **borderRadius** | `double`| define the radius of the toast | false | 20 |
| **onClose** | `Function`| function invoked once the toast in closed | false | null |
| **dismissable** | `bool`| define whether the toast can be dismissed or not (applied only on bottom motion taost) | false | false |
| **secondaryColor** | `Color`| Secondary color applied on the sidebar and the icon (available when using the default constructor) | false | null |
| **backgroundType** | `BACKGROUND_TYPE`| define the background style transparent, solid or lighter | false | `BACKGROUND_TYPE.lighter` |

-  **When creating you custom toast you don't have to use `iconType` it will not be used when rendering the toast**

-  **For bottom toast you can't set the animation `FROM_TOP` as well as for top displayed toast you can't set the animation to `FROM_BOTTOM`**

  

-  **for center motion toast it will be rendered without animations**
- **if `secondaryColor` not defined sidebar and icon will be rendered with `primaryColor`**
  

##  Implementation

  

-  **Success Motion Toast**

```dart
MotionToast.success(
	title:  "Success Motion Toast",
	titleStyle: TextStyle(fontWeight: FontWeight.bold),
	description:  "Example of success motion toast",
	descriptionStyle: TextStyle(fontSize:  12),
	width:  300
).show(context);
```

  

-  **Warning Motion Toast**

```dart
MotionToast.warning(
	title:  "Warning Motion Toast",
	titleStyle: TextStyle(fontWeight: FontWeight.bold),
	description:  "This is a Warning"
).show(context);
```

  

-  **Error Motion Toast**

```dart

MotionToast.error(
	title:  "Error",
	titleStyle: TextStyle(fontWeight: FontWeight.bold),
	description:  "Please enter your name"
).show(context);

```

  

-  **Info Motion Toast**

  

```dart

MotionToast.info(
	title:  "Info Motion Toast",
	titleStyle: TextStyle(fontWeight: FontWeight.bold),
	description:  "Example of Info Toast"
).show(context);
```

  

-  **Delete Motion Toast**

  

```dart
MotionToast.delete(
	title:  "Deleted",
	titleStyle: TextStyle(fontWeight: FontWeight.bold),
	description:  "The item is deleted"
).show(context);
```

  

-  **Custom Motion Toast**

To create your custom toast just use the default constructor,
**`icon`  `description` and `color` are required**

  

```dart

MotionToast(
	icon: Icons.alarm,
	primaryColor: Colors.pink,
	title:  "Custom Toast",
	titleStyle: TextStyle(fontWeight: FontWeight.bold),
	description:  "You can customize the toast!",
	width:  300
).show(context);
```

  

-  **Right-Designed Motion Toast**

To change the toast layout you need to use `layoutOrientation`,
**`icon`  `description`** and **`color`** are required

```dart
MotionToast.success(
	title:  "من اليمين",
	titleStyle: TextStyle(fontWeight: FontWeight.bold),
	description:  "هذا مثال بالعربية",
	descriptionStyle: TextStyle(fontSize:  12),
	layoutOrientation: ORIENTATION.RTL,
	animationType: ANIMATION.FROM_RIGHT,width:  300,
).show(context);

```

  

-  **Top-displayed Motion Toast**

To change the display position of the motion toast use `position` attribute

```dart
MotionToast(
	icon: Icons.zoom_out,
	color: Colors.deepOrange,
	title:  "Top Motion Toast",
	titleStyle: TextStyle(fontWeight: FontWeight.bold),
	description:  "Another motion toast example",
	position: MOTION_TOAST_POSITION.TOP,
	animationType: ANIMATION.FROM_TOP,
).show(context);

```

  

-  **Center-displayed Motion Toast**
```dart

MotionToast(
	icon: Icons.zoom_out,
	color: Colors.deepOrange,
	title:  "Center Motion Toast",
	titleStyle: TextStyle(fontWeight: FontWeight.bold),
	description:  "Another motion toast example",
	position: MOTION_TOAST_POSITION.CENTER
).show(context);
```

-  **Using onClose parameter** (display two successive toasts)

```dart
MotionToast.success(
	title:  "User Data",
	titleStyle: TextStyle(fontWeight: FontWeight.bold),
	description:  "Your data has been deleted",
	descriptionStyle: TextStyle(fontSize:  12),
	onClose: (){
		MotionToast.error(
			title:  "User Data",
			titleStyle: TextStyle(fontWeight: FontWeight.bold),
			description:  "Your data has been deleted",
			descriptionStyle: TextStyle(fontSize:  12),
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
	backgroundType:  BACKGROUND_TYPE.solid,
	title:  'Two Color Motion Toast',
	titleStyle:  TextStyle(fontWeight:  FontWeight.bold),
	description:  'Another motion toast example',
	position:  MOTION_TOAST_POSITION.top,
	animationType:  ANIMATION.fromTop,
	height:  100,
).show(context);
```

<p  align="center">
<img  src="https://github.com/koukibadr/Motion-Toast/blob/main/example/two_color_motion_toast.png?raw=true" width="250"/>
</p>

  -  **Transparent background motion toast**
```dart
MotionToast(
	icon:  Icons.zoom_out,
	primaryColor:  Colors.grey[400]!,
	secondaryColor:  Colors.yellow,
	backgroundType:  BACKGROUND_TYPE.transparent,
	title:  'Two Color Motion Toast',
	titleStyle:  TextStyle(
		fontWeight:  FontWeight.bold,
	),
	description:  'Another motion toast example',
	position:  MOTION_TOAST_POSITION.center,
	height:  100,
).show(context);
```

<p  align="center">
<img  src="https://github.com/koukibadr/Motion-Toast/blob/main/example/transparent_motion_toast.png?raw=true" width="250"/>
</p>
  

##  Contribution

  

Of course the project is open source, and you can contribute to it [repository link](https://github.com/koukibadr/Motion-Toast)

  

-  If you **found a bug**, open an issue.

-  If you **have a feature request**, open an issue.

-  If you **want to contribute**, submit a pull request.

  

##  Support The Community

If you like the package and want to support the dev team follow the donation link below.

Thanks for your support!

  

[![BuyMeACoffee on CocoaPods.org](https://camo.githubusercontent.com/2ef5c63105d22716d9d093d2c8b77cd7aa9d540b/68747470733a2f2f63646e2e6275796d6561636f666665652e636f6d2f627574746f6e732f76322f64656661756c742d79656c6c6f772e706e67)](https://www.buymeacoffee.com/koukibadr)