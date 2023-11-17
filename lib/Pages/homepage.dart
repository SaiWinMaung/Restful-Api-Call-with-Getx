import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restfulapicallwithgetx/Controller/countrycontroller.dart';
import 'package:restfulapicallwithgetx/Pages/searchpage.dart';
import 'package:restfulapicallwithgetx/Widget/flag.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final countryC = Get.put(CountryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton.icon(
          onPressed: () {
            Get.to(SearchPage());
          },
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          label: Text(
            'Search Country Flag',
            style: TextStyle(color: Colors.white),
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () {
                if (countryC.isLoading.value) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: countryC.countryList.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Flag(
                        country: countryC.countryList[index],
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
