## [2.13.0] - 10/05/2025

**Changes**

- Enable slide animation for bottom and top for bottom and top centered toasts [PR#150](https://github.com/koukibadr/Motion-Toast/pull/150)
- Refactor deprecated color opacity [PR#151](https://github.com/koukibadr/Motion-Toast/pull/151)

## [2.12.1] - 17/03/2025

**Bug Fix**

- Resolve compilation error with `wihValues` when setting opacity value [Issue #134](https://github.com/koukibadr/Motion-Toast/issues/134)

## [2.12.0] - 16/03/2025

**Bug Fix**

- Update toast overlay height to support app usage when the toast is displayed [PR](https://github.com/koukibadr/Motion-Toast/pull/135) [Issue #134](https://github.com/koukibadr/Motion-Toast/issues/134)

**Enhancement**

- Update alignment, MotionToastPosition is refactored to use Alignment object [PR](https://github.com/koukibadr/Motion-Toast/pull/140) [Issue #126](https://github.com/koukibadr/Motion-Toast/issues/126)
- Support for custom alignment values

**Changes**

- Refactor: AnimationTypes values are renamed [PR](https://github.com/koukibadr/Motion-Toast/pull/141)

## [2.11.0] - 07/08/2024

**Enhancement**

- Remove content padding effect on motion toast sidebar widget
- Replace EdgeInsets type with EdgeInsetsGeometry type for wider options (Support of EdgeInsets and EdgeInsetsDirectional) [PR](https://github.com/koukibadr/Motion-Toast/pull/125)
- Update custom motion toast rendering to support width and height constraints for large screens

**Changes**

- Update layoutDirection from LayoutDirection enum to TextDirection dart class

## [2.10.0] - 25/04/2024

**Enhancement**

- Replace `backgroundType` with `opacity` double attribute
- Updated predefined themes colors, themes now have different primary and secondary colors

**Changes**

- Remove motion toast type parameter and replace it with direct theme initialization
- Remove `iconType` parameter
- `MotionToast.delete` marked as deprecated and will be removed in the next version

## [2.9.1] - 13/04/2024

- Update package documentation and pubspec description image

## [2.9.0] - 30/03/2024

- Rename `padding` to `margin`
- Add `contentPadding` attribute [Issues #116](https://github.com/koukibadr/Motion-Toast/issues/116)

## [2.8.0] - 21/01/2024

- Update motion toast display with Overlay instead of Navigator
- Fix center content issue [Issue #113](https://github.com/koukibadr/Motion-Toast/issues/113)

## [2.7.9] - 27/09/2023

- Update package license to MIT license

## [2.7.10] - 10/12/2023

- Add `resources/arrays.dart` file export [Issue link](https://github.com/koukibadr/Motion-Toast/issues/112)

## [2.7.8] - 29/06/2023

- Add dark mode support (special thanks to [kmalyshev](https://github.com/kmalyshev))

## [2.6.8] - 20/05/2023

- Fix toast dismiss callback bug: [issue](https://github.com/koukibadr/Motion-Toast/issues/100)

## [2.6.7] - 30/04/2023

- Fix auto dismiss issue

## [2.6.6] - 02/04/2023

- Add dismiss toast callback (hot fix for this [issue](https://github.com/koukibadr/Motion-Toast/issues/100) )

## [2.6.5] - 11/02/2023

- Fix material3 support issue for bottom toasts

## [2.6.4] - 27/11/2022

- Remove required rule from icon attribute
- Add border to motion toast content widget
- Add displayBorder attribute
- Add displaySideBar boolean attribute

## [2.5.4] - 13/11/2022

- Update package readme documentation

## [2.5.3] - 30/09/2022

- Update bottom and top position animation initialization
- Update package readme documentation

## [2.4.3] - 18/09/2022

- Add padding attribute to main widget

## [2.3.3] - 11/09/2022

- Fix auto dismiss bug

## [2.3.2] - 10/08/2022

- Fix pop issue with parent pop

## [2.3.1] - 30/07/2022

- Fix ontap close behavior in bottom toasts
- Update package examples

## [2.3.0] - 19/07/2022

- Support responsive UI
- Add constraints attribute

## [2.2.3] - 14/07/2022

- Fix description overflows horizontally
- Fix description overflows vertically
- Test to check if only toast pops and not the parent

## [2.2.2] - 12/07/2022

- removes warnings for Flutter < 3.0.0
- Updated dependencies

## [2.2.1] - 28/06/2022

- Convert title and description to widget type

## [2.2.0] - 27/06/2022

- Fix RTL long text display
- Fix bugs

## [2.1.9] - 04/06/2022

- Fix WidgetBiding warning
- rename package enums

## [2.1.8] - 26/05/2022

- Fix WidgetBiding warning
- rename package enums

## [2.1.7] - 25/05/2022

- Fix flutter 3 upgrade error

## [2.1.6] - 10/04/2022

- Fix toast dismiss bug
- Enhanced package documentation

## [2.1.5] - 25/03/2022

- Enable dismiss in top and center displayed toasts
- Dismiss customization for top and center displayed toasts
- Bug fixes

## [2.1.4] - 20/03/2022

- Add barrier color attribute
- Update code style declaration

## [2.1.3] - 08/03/2022

- Update dismissable default value

## [2.1.2] - 01/03/2022

- Update project documentation

## [2.1.1] - 28/01/2022

- Fix simultaneous toasts dismiss bug

## [2.1.0] - 15/01/2022

- Remove titleStyle attribute
- Remove descriptionStyle attribute
- Change title and description from String to Text widget
- Bug fixes

## [2.0.0] - 03/12/2021

- Two colors support
- multiple background style effects
- dismiss motion toast
- enhance performance

## [1.6.0] - 26/11/2021

- Fix display in a scaffold widget

## [1.5.0] - 29/09/2021

- Enhance motion toast dismiss

## [1.4.0] - 28/08/2021

- Add on close toast callback handler
- Bug fixes

## [1.3.0] - 31/07/2021

- Add support to long text in description
- Add responsive rendering to text

## [1.2.0] - 13/07/2021

- Add support to multiple displaying positions
- Add from top to bottom animation

## [1.1.0] - 01/07/2021

- Mutliple built-in animations

  - From left to right enter animation
  - From right to left enter animation
  - From bottom enter animation

- Possibility to change toast layout orientation LTR / RTL
- Possibility to change toast duration
- Possibility to change the animation rendering curve

## [1.0.0] - 26/06/2021

- Mutliple built-in designs

  - Success Toast
  - Warning Toast
  - Error Toast
  - Info Toast
  - Delete Toast

- Support custom toast design
- Support null safety
- Heartbeat animation on icon
