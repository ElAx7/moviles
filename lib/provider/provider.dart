import 'package:flutter/material.dart';

class ForageDataProvider with ChangeNotifier {
  final List<ForageData> _forageDataList = [];

  List<ForageData> get forageDataList => _forageDataList;

  void saveData({
    required String name,
    required String location,
    required bool isChecked,
    required String notes,
  }) {
    _forageDataList.add(
      ForageData(
        name: name,
        location: location,
        isChecked: isChecked,
        notes: notes,
      ),
    );
    notifyListeners();
  }

  void deleteData(ForageData forageData) {
    _forageDataList.remove(forageData);
    notifyListeners();
  }

  void clearData() {
    _forageDataList.clear();
    notifyListeners();
  }
}

class ForageData {
  final String name;
  final String location;
  final bool isChecked;
  final String notes;

  ForageData({
    required this.name,
    required this.location,
    required this.isChecked,
    required this.notes,
  });
}
