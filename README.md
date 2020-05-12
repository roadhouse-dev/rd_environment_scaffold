# RdEnvironmentScaffold

A Flutter Library to build and customize the Flutter's scaffold widget, which show environment banner.  

## How to use

Import the package
  
```dart
  rd_environment_scaffold:
    git:
     url: 'https://github.com/roadhouse-dev/rd_environment_scaffold.git'
```

1- Add the following import to your Dart code:
```dart
import 'package:rd_environment_scaffold/rd_environment_scaffold.dart';

```
2- Use like Scaffold, on top on that you can set build type, it wil show different banner, if build type is BuildType.stage or BuildType.uat. 
```dart
class StagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RdEnvironmentScaffold(
      buildType: BuildType.stage,
      appBar: AppBar(title: Text('Stage Page')),
      body: Center(
        child: Text(
          'This is stage Page',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
```
