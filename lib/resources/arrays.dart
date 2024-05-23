/// Type of motion toast to show.
enum MotionToastType { success, error, warning, info, delete, custom }

/// The design of the toast.
enum IconType { materialDesign, cupertino }

/// Text direction used to determine which direction to draw the toast
enum ToastOrientation { ltr, rtl }

/// The fade in animation direction of the toast.
enum AnimationType { fromBottom, fromLeft, fromRight, fromTop }

/// The position of the toast on the screen.
enum MotionToastPosition { center, bottom, top }

/// The appearance of the background of the toast.
enum BackgroundType { transparent, solid, lighter }
