import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../search/search_view.dart';
import '../start_up/start_up_view.dart';
import './home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (HomeViewModel model) async {
          await model.init();
        },
        builder: (
          BuildContext context,
          HomeViewModel model,
          Widget? child,
        ) {
          return Scaffold(
            body: getViewForIndex(model.currentIndex),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              currentIndex: model.currentIndex,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[800],
              onTap: model.setIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    //color: model.currentIndex == 0 ? Colors.red : Colors.black,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    //color: model.currentIndex == 1 ? Colors.red : Colors.black,
                  ),
                  label: 'Search',
                ),
              ],
            ),
          );
        });
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return StartUpView();
      case 1:
        return SearchView();
      default:
        return StartUpView();
    }
  }
}
