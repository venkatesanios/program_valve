

class Valve{
  int? id;
  int? programid;
  String? valvename;
  String? programname;
  String? set1;
  String? set2;
  String? set3;
  String? set4;

  ValveMap()
  {
    var mapping= Map<String,dynamic>();
    mapping['id']=id;
    mapping['programid']=programid;
    mapping['programname']=programname;
    mapping['valvename']=valvename;
    mapping['set1']=set1;
    mapping['set2']=set2;
    mapping['set3']=set3;
    mapping['set4']=set4;
    return mapping;
  }




}