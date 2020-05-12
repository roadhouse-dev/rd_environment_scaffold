import 'package:flutter/material.dart';
import 'package:rd_environment_scaffold/src/build_type.dart';
import 'package:rd_environment_scaffold/src/resource/images.dart';

class EnvironmentBanner extends StatelessWidget {
  //[body] is main UI
  final Widget body;
  ///[buildType] can be null.
  ///The banner image wil show up only if it's [BuildType.stage] and [BuildType.uat]
  final BuildType buildType;

  EnvironmentBanner({
    this.body,
    this.buildType,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        if (buildType != null && buildType != BuildType.prod)
          Align(
            alignment: Alignment.bottomRight,
            child: Image(
              image: AssetImage(
                  buildType == BuildType.stage
                      ? Images.stageIcon
                      : Images.uatIcon,
                  package: 'rd_environment_scaffold'),
              width: 70,
              fit: BoxFit.contain,
            ),
          ),
        body,
      ],
    );
  }
}
