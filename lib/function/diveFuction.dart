import 'package:flutter/cupertino.dart';

import '../models/driverModel.dart';

ValueNotifier< List<DriverDataModel>> detailsList = ValueNotifier([]);

void addDriveDetiles(DriverDataModel value){
  detailsList.value.add(value);
  print(value.toString());
  detailsList.notifyListeners();
}