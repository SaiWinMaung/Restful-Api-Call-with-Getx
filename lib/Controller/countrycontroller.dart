// ignore_for_file: unnecessary_null_comparison

import 'package:get/get.dart';
import 'package:restfulapicallwithgetx/Database/countryapi.dart';
import 'package:restfulapicallwithgetx/Model/country.dart';

class CountryController extends GetxController {
  var isLoading = true.obs;
  var countryList = <Country>[].obs;

  @override
  void onInit() {
    fetchCountry();
    super.onInit();
  }

  void fetchCountry() async {
    try {
      isLoading(true);
      var countries = await ApiService.fetchCountry();
      if (countries != null) {
        countryList.value = countries;
      }
    } finally {
      isLoading(false);
    }
  }
}
