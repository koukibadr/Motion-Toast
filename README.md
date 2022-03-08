  

#  Motion Toast

  

  

  

<p  align="center">
<img  src="https://github.com/koukibadr/Motion-Toast/blob/main/MOTION%20TOAST.gif?raw=true"  width="350"/>
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
-  Different color themes (mutliple colors support)
-  Support null safety
-  Heartbeat animations
-  Full customized text
-  Built in animations
-  Customize toast layout (LTR/RTL)
-  Customize toast duration
-  Customize Motion toast position (Center, Bottom, Top)
-  Support long text
-  Background style customization
-  Customize dismission of the toast
-  Display simultaneous toasts

  
  

##  Getting Started

  

  

In order to add motion toast to your project add this line to your `pubspec.yaml` file

  

```yaml
dependencies:
	motion_toast: ^2.1.3
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
| **description** | `Text` | The description text | true | N/A |
| **title** | `Text` | The toast title | false | empty string |
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
| **dismissable** | `bool`| define whether the toast can be dismissed or not (applied only on bottom motion taost) | false | true |
| **secondaryColor** | `Color`| Secondary color applied on the sidebar and the icon (available when using the default constructor) | false | null |
| **backgroundType** | `BACKGROUND_TYPE`| define the background style transparent, solid or lighter | false | `BACKGROUND_TYPE.lighter` |


-  **When creating you custom toast you don't have to use `iconType` it will not be used when rendering the toast**
-  **For bottom toast you can't set the animation `FROM_TOP` as well as for top displayed toast you can't set the animation to `FROM_BOTTOM`**
-  **for center motion toast it will be rendered without animations**
-  **if `secondaryColor` not defined sidebar and icon will be rendered with `primaryColor`**

  

##  Implementation


-  **Success Motion Toast**
```dart
MotionToast.success(
	title:  Text("Success Motion Toast"),
	description:  Text("Example of success motion toast"),
	width:  300
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
	icon: Icons.alarm,
	primaryColor: Colors.pink,
	title:  Text("Custom Toast"),
	description:  Text("You can customize the toast!"),
	width:  300
).show(context);

```

-  **Right-Designed Motion Toast**

To change the toast layout you need to use `layoutOrientation`,
**`icon`  `description`** and **`color`** are required
```dart
MotionToast.success(
	title:  Text("من اليمين"),
	description:  Text("هذا مثال بالعربية"),
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
	title:  Text("Top Motion Toast"),
	description:  Text("Another motion toast example"),
	position: MOTION_TOAST_POSITION.TOP,
	animationType: ANIMATION.FROM_TOP,
).show(context);

```

-  **Center-displayed Motion Toast**

```dart

MotionToast(
	icon: Icons.zoom_out,
	color: Colors.deepOrange,
	title:  Text("Center Motion Toast"),
	description:  Text("Another motion toast example"),
	position: MOTION_TOAST_POSITION.CENTER
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
	icon: Icons.zoom_out,
	primaryColor: Colors.orange[500]!,
	secondaryColor: Colors.grey,
	backgroundType: BACKGROUND_TYPE.solid,
	title:  Text('Two Color Motion Toast'),
	description:  Text('Another motion toast example'),
	position: MOTION_TOAST_POSITION.top,
	animationType: ANIMATION.fromTop,
	height:  100,
).show(context);
```

<p  align="center">
<img  src="https://github.com/koukibadr/Motion-Toast/blob/main/example/two_color_motion_toast.png?raw=true"  width="250"/>
</p>

  

-  **Transparent background motion toast**

```dart

MotionToast(
	icon: Icons.zoom_out,
	primaryColor: Colors.grey[400]!,
	secondaryColor: Colors.yellow,
	backgroundType: BACKGROUND_TYPE.transparent,
	title:  Text('Two Color Motion Toast'),
	description:  Text('Another motion toast example'),
	position: MOTION_TOAST_POSITION.center,
	height:  100,
).show(context);

```
<p  align="center">
<img  src="https://github.com/koukibadr/Motion-Toast/blob/main/example/transparent_motion_toast.png?raw=true"  width="250"/>
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


##  Contributors
<a href = "https://github.com/koukibadr/Motion-Toast/graphs/contributors">
<img src = "https://contrib.rocks/image?repo=koukibadr/Motion-Toast"/>
</a>
