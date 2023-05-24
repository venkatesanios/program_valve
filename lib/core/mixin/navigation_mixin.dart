import 'package:program_valve/core/app/app.router.dart';
import 'package:program_valve/service/locator.dart';
import 'package:stacked_services/stacked_services.dart';

mixin NavigationMixin{
  final _navigationService = locator<NavigationService>();
  void goBack({dynamic result}) => _navigationService.back(result: result);
  void goTo(String routeName) => _navigationService.navigateTo(routeName);
  void goToValveSettings() => _navigationService.navigateTo(Routes.valveSettingsView);
}


