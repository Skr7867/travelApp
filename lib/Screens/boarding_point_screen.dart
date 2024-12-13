import 'package:flutter/material.dart';
import 'package:travelapp/CustomeWidget/list.dart';
import 'package:travelapp/CustomeWidget/responsive_padding.dart';

import '../CustomeWidget/colors.dart';
import 'image_slider.dart';

class BoardingPointScreen extends StatefulWidget {
  const BoardingPointScreen({super.key});

  @override
  State<BoardingPointScreen> createState() => _BoardingPointScreenState();
}

class _BoardingPointScreenState extends State<BoardingPointScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: AppColors.whiteColor,
        ),
        title: Row(
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Boarding Point',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'mont',
                    color: AppColors.whiteColor,
                  ),
                ),
                Text(
                  'Wed,June 20. 2 Passenger',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'mont',
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
            SizedBox(width: screenWidth * 0.09),
            Container(
                height: screenHeight * 0.045,
                width: screenWidth * 0.22,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: AppColors.whiteColor),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Modify',
                      style: TextStyle(
                        fontSize: 11,
                        color: AppColors.whiteColor,
                        fontFamily: 'mont',
                      ),
                    ))),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.06,
            width: screenWidth,
            decoration: const BoxDecoration(
              color: AppColors.whiteColor,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black45,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 0.5))
              ],
            ),
            child: Padding(
              padding:
                  ResponsivePadding.customPadding(context, top: 1, left: 5),
              child: const Text(
                'Showing available boats',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'mont',
                    color: AppColors.textColor),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                itemCount: images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 1,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 1.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return ImageSlider();
                }
                // Expanded(child: ImageSlider()),
                ),
          )
        ],
      ),
    );
  }
}
