import 'package:program_valve/model/valve_model.dart';
import '../core/database_helper/Repository.dart';
 import 'package:program_valve/model/valve_model.dart';
class ValveService{
  late Repository _repository;
  ValveService()
  {
    _repository = Repository();
  }
  //Save User
  saveValve(Valve valve) async{
    return await _repository.insertData("valve", valve.ValveMap());
  }
  UpdateValve(Valve valve) async{
    return await _repository.updateData('valve', valve.ValveMap());
  }
  //Read All User
  readAllValve() async{
    return await _repository.readData('valve');
  }

  deleteValve(valveid) async {
    return await _repository.deleteDataById('valve', valveid);
  }
}