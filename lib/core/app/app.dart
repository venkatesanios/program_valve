import 'package:program_valve/ui/dashboard/dashboard_view.dart';
import 'package:program_valve/ui/valve_Settings/valvesettings_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(routes: [
MaterialRoute(page: DashboarView,initial: true),
MaterialRoute(page: ValveSettingsView),
//MaterialRoute(page: DashboarView()),
])


class APP{}