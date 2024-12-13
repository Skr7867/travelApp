import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/CustomeWidget/custome_elevated_button.dart';
import 'package:travelapp/CustomeWidget/responsive_padding.dart';
import 'package:travelapp/Screens/boat_info_slider.dart';

import '../CustomeWidget/colors.dart';

class BoatScreen extends StatefulWidget {
  const BoatScreen({super.key});

  @override
  State<BoatScreen> createState() => _BoatScreenState();
}

class _BoatScreenState extends State<BoatScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.45,
              child: const BoatInfoSlider(),
            ),
            Padding(
              padding:
                  ResponsivePadding.customPadding(context, left: 3, top: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Assam Travel service',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'mont',
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                    ),
                  ),
                  const Text(
                    'This hotel features air-conditioned cabins, plush seating, and an onboard dining area serving delicious local cuisine.',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'mont',
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  const Text(
                    'Wed, Jun20 - 2 Passengers',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'mont',
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  DottedLine(
                    dashColor: Colors.grey.shade500,
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  const Text(
                    'Amenities',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'mont',
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  const Text(
                    '  • Clean Restrooms',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'mont',
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  const Text(
                    '  • Comfortable Sitting arrangements',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'mont',
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  const Text(
                    '  • Onboarding Dining',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'mont',
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  const Text(
                    'Safety Features',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'mont',
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  DottedLine(
                    dashColor: Colors.grey.shade500,
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  const Text(
                    '  • Live jackets provided to all passengers.',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'mont',
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  const Text(
                    '  • Emergency medical kit onboard.',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'mont',
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  DottedLine(
                    dashColor: Colors.grey.shade500,
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  const Text(
                    'Special notes',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'mont',
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  const Text(
                    '  • Please arrive 30 minutes before departure.',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'mont',
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  const Text(
                    '  • Carry a valid ID for verification.',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'mont',
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.07,
            ),
            CustomElevatedButton(
              height: screenHeight * 0.06,
              width: screenWidth * 0.8,
              radius: 25,
              color: AppColors.btnColor,
              text: 'Go to passenger details',
              textStyle: const TextStyle(
                  color: AppColors.btntextColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  fontFamily: 'mont'),
              onPressed: () {
                Navigator.pushNamed(context, '/passengersinfo');
              },
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
