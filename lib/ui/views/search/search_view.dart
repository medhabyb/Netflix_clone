import 'package:flutter/material.dart';
import 'package:netflix_clone/ui/views/search/widget/filmitem.dart';
import 'package:searchable_listview/searchable_listview.dart';
import 'package:stacked/stacked.dart';

import '../../../core/Class/films.dart';
import '../start_up/widgets/flist.dart';
import './search_view_model.dart';

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.reactive(
      viewModelBuilder: () => SearchViewModel(),
      onModelReady: (SearchViewModel model) async {
        await model.init();
      },
      builder: (
        BuildContext context,
        SearchViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          //extendBodyBehindAppBar: true,
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.3),
          ),
          body: Padding(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: SearchableList<Films>(
              style: const TextStyle(fontSize: 25),
              initialList: filmsList,
              builder: (Films film) => FilmItem(f: film),

              filter: (value) => filmsList
                  .where(
                    (element) =>
                        element.filmName!.toLowerCase().contains(value),
                  )
                  .toList(),
              // emptyWidget: const EmptyView(),
              inputDecoration: InputDecoration(
                contentPadding: EdgeInsets.all(1),
                hintText: "Search",
                filled: true, //<-- SEE HERE
                fillColor: Colors.grey[600],
                labelStyle: const TextStyle(color: Colors.grey),
                floatingLabelStyle: const TextStyle(color: Colors.blueAccent),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  //borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
