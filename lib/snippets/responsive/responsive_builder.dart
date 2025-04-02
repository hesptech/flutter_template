import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ScreenTypeLayout.builder(
            mobile: (BuildContext context) =>
                buildMobileLayout(context, constraints),
            tablet: (BuildContext context) =>
                buildTabletLayout(context, constraints),
            desktop: (BuildContext context) =>
                buildDesktopLayout(context, constraints),
          );
        },
      ),
    );
  }

  Widget buildMobileLayout(
    BuildContext context,
    BoxConstraints constraints, 
  ) {
    return Container();
  }

  Widget buildTabletLayout(
    BuildContext context,
    BoxConstraints constraints, 
  ) {
    return Container();
  }


  Widget buildDesktopLayout(
    BuildContext context,
    BoxConstraints constraints, 
  ) {
    return Container();
  }  
}

