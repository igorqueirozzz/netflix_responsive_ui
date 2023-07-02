
 import 'package:get_it/get_it.dart';
import 'package:netflix_responsive_ui/store/app_bar_store.dart';

void initServices(){
  GetIt.I.registerSingleton<AppBarStore>(AppBarStore());
}