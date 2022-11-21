import 'package:netflix_clone/core/Class/films.dart';
import 'package:netflix_clone/ui/views/start_up/start_up_view_model.dart';
import 'package:stacked_services/stacked_services.dart';

import '../ui/views/start_up/start_up_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView, initial: true),
  ],
  dependencies: [
    Singleton(classType: Films),
    Singleton(classType: NavigationService),
  ],
  logger: StackedLogger(),
)
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
