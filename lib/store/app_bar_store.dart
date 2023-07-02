import 'package:mobx/mobx.dart';

part 'app_bar_store.g.dart';

class AppBarStore = _AppBarStore with _$AppBarStore;


abstract class _AppBarStore with Store{

  @observable
  double scrollOffset = 0;

  @action
  void setScrollOffset(double offset) => scrollOffset = offset;

}