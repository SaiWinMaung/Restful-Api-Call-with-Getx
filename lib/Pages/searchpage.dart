import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.blueGrey,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 250,
                    child: TextField(
                      cursorColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Country Name',
                        hintStyle: TextStyle(color: Colors.white,),
                        
                      ),
                    ),
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          Center(child: Text('Search Country Flag')),
        ],
      ),
    );
  }
}