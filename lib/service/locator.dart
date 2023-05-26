import 'package:get_it/get_it.dart';
import 'package:program_valve/service/database_service.dart';
import 'package:stacked_services/stacked_services.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async{
  locator.registerLazySingleton(() => NavigationService());
  var dbConnection = await DataBaseService.init();
  locator.registerLazySingleton(() =>  dbConnection);
}
