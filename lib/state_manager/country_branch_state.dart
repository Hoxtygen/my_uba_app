import 'dart:collection';
import 'package:flutter/material.dart';
import '../constants/data.dart';
import '../shared/branch_location_model.dart';


class CountrySelection extends ChangeNotifier {
  final List<BranchLocationModel> _branches = bankLocations;
  int _selectedCountryIndex = 0;

  UnmodifiableListView<BranchLocationModel> get branches => UnmodifiableListView(_branches);

  int get selectedCountryIndex => _selectedCountryIndex;

  void setSelectedIndex (int countryIndex) {
    if(countryIndex== _selectedCountryIndex){
      return;
    }
    _selectedCountryIndex = countryIndex;
    notifyListeners();
  }

}