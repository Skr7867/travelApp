import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/CustomeWidget/custom_textfiled.dart';
import 'package:travelapp/CustomeWidget/responsive_padding.dart';
import 'package:travelapp/Screens/gender.dart';

import '../CustomeWidget/colors.dart';
import '../CustomeWidget/controller.dart';

class InfoContainer extends StatefulWidget {
  const InfoContainer({super.key});

  @override
  State<InfoContainer> createState() => _InfoContainerState();
}

class _InfoContainerState extends State<InfoContainer> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.7,
      width: screenWidth * 0.9,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.greyColor, width: 1),
      ),
      child: Padding(
        padding:
            ResponsivePadding.customPadding(context, left: 5, right: 6, top: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Passenger Details',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'mont',
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            const Text(
              'Passenger 1',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'mont',
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            const Text(
              'Enter full name',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'mont',
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w600),
            ),
            CommonTextField(
              controller: name1Controller,
              hintText: 'Enter your name',
              textInputAction: TextInputAction.next,
            ),
            const Text(
              'Enter name as per Adhar',
              style: TextStyle(
                  fontSize: 14, fontFamily: 'mont', color: AppColors.rateColor),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      'Enter Your age',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'mont',
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: screenWidth * 0.35,
                      child: CommonTextField(
                        controller: age1Controller,
                        hintText: 'Enter age',
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: ResponsivePadding.customPadding(context, left: 7),
                    child: const Column(
                      children: [
                        Text(
                          'Gender',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'mont',
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600),
                        ),
                        GenderDropdown()
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            DottedLine(
              dashColor: Colors.grey.shade400,
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            const Text(
              'Passenger 2',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'mont',
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            const Text(
              'Enter full name',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'mont',
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w600),
            ),
            CommonTextField(
              controller: name2Controller,
              hintText: 'Enter your name',
              textInputAction: TextInputAction.next,
            ),
            const Text(
              'Enter name as per Adhar',
              style: TextStyle(
                  fontSize: 14, fontFamily: 'mont', color: AppColors.rateColor),
            ),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      'Enter Your age',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'mont',
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: screenWidth * 0.35,
                      child: CommonTextField(
                        controller: age2Controller,
                        hintText: 'Enter age',
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: ResponsivePadding.customPadding(context, left: 7),
                    child: const Column(
                      children: [
                        Text(
                          'Gender',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'mont',
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600),
                        ),
                        GenderDropdown()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
