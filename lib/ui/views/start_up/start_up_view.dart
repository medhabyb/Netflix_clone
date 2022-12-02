import 'package:flutter/material.dart';
import 'package:netflix_clone/ui/views/start_up/widgets/continue.dart';
import 'package:netflix_clone/ui/views/start_up/widgets/flist.dart';
import 'package:signed_spacing_flex/signed_spacing_flex.dart';
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
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.black,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(54.0),
            child: AppBar(
              backgroundColor: Colors.black.withOpacity(0.3),
              elevation: 0,
              flexibleSpace: Container(
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black.withOpacity(0.1), Colors.black],
                )),
              ),
              title: Container(
                margin: EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      child: ClipRRect(
                        //borderRadius: BorderRadius.circular(20),
                        child: Image.asset(model.path),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          size: 30,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          child: ClipRRect(
                            //borderRadius: BorderRadius.circular(20),
                            child:
                                Image.asset('assets/images/Netflix-avatar.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Container(
            child: SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(
                    child: SignedSpacingColumn(
                      spacing: -410,
                      stackingOrder: StackingOrder.lastOnTop,
                      children: [
                        Container(
                          //borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/images/1899.jpg'),
                        ),
                        Container(
                          //color: Colors.black12.withOpacity(0.3),
                          height: 40,
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Spacer(),
                              Text(
                                "Tv shows",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Spacer(),
                              Text(
                                "Movies",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Spacer(),
                              Text(
                                "Browser",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 289,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.black.withOpacity(0.8),
                  ),
                  Container(
                    height: 86,
                    //color: Colors.black.withOpacity(0.99),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black.withOpacity(0.5), Colors.red],
                    )),
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Mind-bending*Omnious*Action",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 3,
                          ),
                          Column(children: [
                            Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.black,
                            ),
                            Text(
                              "My list",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ]),
                          Container(
                            height: 25,
                            margin: EdgeInsets.only(bottom: 0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black),
                                onPressed: (() {
                                  print("object");
                                }),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.play_arrow,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Play",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    ),
                                  ],
                                )),
                          ),
                          Column(children: [
                            Icon(
                              Icons.info_outline,
                              size: 15,
                              color: Colors.black,
                            ),
                            Text(
                              "Info",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ]),
                          SizedBox(
                            width: 3,
                          ),
                        ],
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Continue Watching",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        //color: Colors.red,
                        height: 120,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: model.gfilms.length,
                            itemBuilder: (context, int index) {
                              return Continue(
                                path: model.gfilms[index].path!,
                              );
                            }),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "New on netflix",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        //color: Colors.red,
                        height: 200,
                        child: ListView.builder(
                            reverse: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: model.gfilms.length,
                            itemBuilder: (context, int index) {
                              return Flimlists(
                                path: model.gfilms[index].path!,
                              );
                            }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
