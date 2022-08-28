import 'package:flutter/material.dart';
import 'package:plant_app_zero/constants.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recommend_plants.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchbox(size: size),
          TitleWithMoreBtn(
            title: 'Recommended',
            press: () {},
          ),
          const RecommendPlants(),
          TitleWithMoreBtn(
            title: 'Featured Plants',
            press: () {},
          ),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
