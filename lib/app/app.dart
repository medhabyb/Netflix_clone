import 'package:netflix_clone/ui/views/start_up/start_up_view_model.dart';

import '../ui/views/start_up/start_up_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [MaterialRoute(page: StartUpViewModel, initial: true)],
  dependencies: [],
  logger: StackedLogger(),
)
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
