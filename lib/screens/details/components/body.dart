import 'package:flutter/material.dart';
import 'package:plant_app_zero/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          const TitleAndPrice(
            title: 'Angelica',
            country: 'Russia',
            price: 440,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                // child: Container(
                //   color: kPrimaryColor,
                //   child: TextButton(
                //     child: const Text(
                //       'Buy Now',
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 16,
                //         // backgroundColor: kPrimaryColor,
                //       ),
                //     ),
                //     onPressed: () {},
                //   ),
                // ),
                child: Container(
                  // padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                  decoration: const BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: TextButton(
                    child: const Text(
                      'Buy Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      // print('de');
                    },
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    // print('click me!');
                  },
                  child: const Text(
                    'Description',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: kDefaultPadding * 2,
          )
        ],
      ),
    );
  }
}
