import 'package:program_valve/ui/dashboard/dashboard_view.dart';
import 'package:program_valve/ui/valve_Settings/valvesettings.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(routes: [
MaterialRoute(page: DashboarView,initial: true),
MaterialRoute(page: ValveSettingsView),
])


class APP{}