import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import './start_up_view_model.dart';

class StartUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      viewModelBuilder: () => StartUpViewModel(),
      onModelReady: (StartUpViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        StartUpViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'StartUpView',
            ),
          ),
        );
      },
    );
  }
}
