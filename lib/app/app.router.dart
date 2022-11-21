// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart';
import 'package:netflix_clone/ui/views/start_up/start_up_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class Routes {
  static const startUpView = '/';

  static const all = <String>{startUpView};
}

class StackedRouter extends RouterBase {
  final _routes = <RouteDef>[
    RouteDef(
      Routes.startUpView,
      page: StartUpView,
    )
  ];

  final _pagesMap = <Type, StackedRouteFactory>{
    StartUpView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => StartUpView(),
        settings: data,
      );
    }
  };

  @override
  List<RouteDef> get routes => _routes;
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on NavigationService {
  Future<dynamic> navigateToStartUpViewModel([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
