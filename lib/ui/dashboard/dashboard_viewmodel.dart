import 'package:program_valve/core/mixin/navigation_mixin.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel with NavigationMixin{

  DashboardViewModel();
  List<String> get  programNameList => ["Program 1"," Program 2","Program 3","Program 4","Program 5","Program 6"];
  List<String> get  drawernameList => ["Home","","Settings","About"];

}