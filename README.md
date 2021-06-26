
#  Motion Toast
![MOTION TOAST.gif](https://github.com/koukibadr/Motion-Toast/blob/main/MOTION%20TOAST.gif?raw=true)

**A new well designed toast with animations and  multiple built-in types**

| ![success_toast.gif](https://github.com/koukibadr/Motion-Toast/blob/main/success_toast.gif?raw=true) | ![warning_toast.gif](https://github.com/koukibadr/Motion-Toast/blob/main/warning_toast.gif?raw=true) | ![error_toast.gif](https://github.com/koukibadr/Motion-Toast/blob/main/error_toast.gif?raw=true) |
|--|--|--|
| ![info_toast.gif](https://github.com/koukibadr/Motion-Toast/blob/main/info_toast.gif?raw=true) | ![delete_toast.gif](https://github.com/koukibadr/Motion-Toast/blob/main/delete_toast.gif?raw=true) | ![custom_toast.gif](https://github.com/koukibadr/Motion-Toast/blob/main/custom_toast.gif?raw=true) |


##  Features

 - Animated toasts with animated icons
 - Built-in types (Success, Warning, Error, Info, Delete)
 - Possibility to design your own toast
 - Support null safety
 - Heartbeat animations
 - Full customized text

  

##  Getting Started

 In order to add motion toast to your project add this line to your `pubspec.yaml` file
 ```yaml
 dependencies:
	 motion_toast: ^1.0.0
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
| **descriptionStyle** | `TextStyle`| The text style applied on the description text | false | `TextStyle(color:  Colors.black)` |
| **titleStyle** | `TextStyle` | The text style applied on the title | false | `TextStyle(color:  Colors.black)` |
| **icon** | `IconData` | The toast icon | **required when creating a custom toast otherwise you don't have to pass it** | N/A |
| **color** | `Color` | The motion toast background color (applied on the background, icon and side bar) | **required when creating a custom toast otherwise you don't have to pass it** | N/A |
| **width** | `double` | The motion toast width | false | 250 |
| **iconSize** | `double` | The icon size | false | 40 |
| **iconType** | `ICON_TYPE` String | The design type of the icon (Material design or Cupertino) values: `ICON_TYPE.MATERIAL_DESIGN or ICON_TYPE.CUPERTINO` | false | `ICON_TYPE.MATERIAL_DESIGN` |
| **enableAnimation** | `boolean`| Whether enable or disable the animation applied on the icon (heartbeat animation) | false | true |

=> **When creating you custom toast you don't have to use `iconType` it will not be used when rendering the toast**


##  Implementation

 - **Success Motion Toast**
 ```dart
	 MotionToast.success(
			 title:  "Success Motion Toast",
			 titleStyle:  TextStyle(fontWeight:  FontWeight.bold),
			 description:  "Example of success motion toast",
			 descriptionStyle:  TextStyle(fontSize:  12),
			 width:  300,
	).show(context);
 ```


 - **Warning Motion Toast**
 ```dart
	 MotionToast.warning(
			 title:  "Warning Motion Toast",
			 titleStyle:  TextStyle(fontWeight:  FontWeight.bold),
			 description:  "This is a Warning"
	).show(context);
 ```

 - **Error Motion Toast**
 ```dart
	 MotionToast.error(
			 title:  "Error",
			 titleStyle:  TextStyle(fontWeight:  FontWeight.bold),
			 description:  "Please enter your name"
	).show(context);
 ```


 - **Info Motion Toast**
 ```dart
	 MotionToast.info(
			 title:  "Info Motion Toast",
			 titleStyle:  TextStyle(fontWeight:  FontWeight.bold),
			 description:  "Example of Info Toast"
	).show(context);
 ```

 - **Delete Motion Toast**
 ```dart
	 MotionToast.delete(
			 title:  "Deleted",
			 titleStyle:  TextStyle(fontWeight:  FontWeight.bold),
			 description:  "The item is deleted"
	).show(context);
 ```
 
 - **Custom Motion Toast**
 To create your custom toast just use the default constructor,
**`icon`  `description` and `color` are required**
 ```dart
	 MotionToast(
			 icon:  Icons.alarm,
			 color:  Colors.pink,
			 title:  "Custom Toast",
			 titleStyle:  TextStyle(fontWeight:  FontWeight.bold),
			 description:  "You can customize the toast!",
			 width:  300,
	).show(context);
 ```


##  Contribution

  

Of course the project is open source, and you can contribute to it [repository link](https://github.com/koukibadr/Motion-Toast)
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.