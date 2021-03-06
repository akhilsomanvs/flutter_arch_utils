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

## Usage

Add dependency

```yaml
flutter_arch_utils:
    git:
      url: https://github.com/akhilsomanvs/flutter_arch_utils.git
```
Add the following in main.dart

```dart
// Add this function
Future<void> _ensureScreenSize(window) async {
  return window.viewConfiguration.geometry.isEmpty
      ? Future.delayed(
             const Duration(milliseconds: 10),
             () => _ensureScreenSize(window)
         )
      : Future.value();
}

void main() async {
  final window = WidgetsFlutterBinding.ensureInitialized().window;
  await _ensureScreenSize(window);
  runApp(const MyApp());
}
```

And in main() method, wrap the MaterialApp inside SizeConfigParentWidget 

```dart
return SizeConfigParentWidget(
  designSize: const Size(375, 812), //change to the width and height of your designs/prototype. Values are scaled or calculated based on this size value.
  builder: (context, constraints, orientation) => MaterialApp(
    title: 'App Name',
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ),
);
```

Inside your UI you can use

```dart
SizedBox(
  width: 100.hdp(), // Horizontal values
  height: 200.vdp(), //vertical values
  child: Text("Text",style:TextStyle(fontSize: 16.sp())), // Text Size
)
```
