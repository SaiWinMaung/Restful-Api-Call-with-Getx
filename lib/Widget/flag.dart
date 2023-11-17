import 'package:flutter/material.dart';
import 'package:restfulapicallwithgetx/Model/country.dart';

import 'package:velocity_x/velocity_x.dart';

class Flag extends StatelessWidget {
  final Country country;
  const Flag({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Vx.gray300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              country.flags.png,
            ),
            country.name.common.text.gray700.make().p8(),
          ],
        ),
      ),
    );
  }
}
