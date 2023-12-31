<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->



## Features



## Installing

### 1. Depend on it

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  stack_gradient_card: ^0.0.1
```

### 2. Install it

You can install packages from the command line:

with `pub`:

```bash
pub get
```

with `Flutter`:

```bash
flutter pub get
```

### 3. Import it

Now in your `Dart` code, you can use:

```dart
import 'package:stack_gradient_card/stack_gradient_card';
```

# Usage

`stack_gradient_card` is a widget that gives you image, like button, elevated button and color to choose to make it more beautiful.
When you want to add a card simply use it like:

```dart
StackCard(
              gradientColors: [Colors.grey, Colors.black],
              name: 'Virat',
              imageUrl:
                  'https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcTxtdTAGf3obR31GaqP0LrXhTittDPioE0Vd4YKrvpiYh_GOSAKgtgybCle6jBSry-T56yloU16PxwPsPY',
              actionText: 'Action',
              actionColor: Colors.black,
              onPressed: () {
                // Define the action when the button is pressed
              },
            ),
```
