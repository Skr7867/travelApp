import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/Screens/info_container.dart';

import '../CustomeWidget/colors.dart';
import '../CustomeWidget/custome_elevated_button.dart';
import '../CustomeWidget/responsive_padding.dart';

class PassengersInfo extends StatefulWidget {
  const PassengersInfo({super.key});

  @override
  State<PassengersInfo> createState() => _PassengersInfoState();
}

class _PassengersInfoState extends State<PassengersInfo> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 80,
        backgroundColor: AppColors.bgColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.02),
            Center(
              child: Container(
                height: screenHeight * 0.23,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: AppColors.greyColor),
                ),
                child: Padding(
                  padding: ResponsivePadding.customPadding(context,
                      left: 3, right: 3, top: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Assam Travel service',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'mont',
                            fontWeight: FontWeight.w600,
                            color: AppColors.textColor),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '7:00 AM',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'mont',
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor),
                          ),
                          Image.asset('assets/images/train.png'),
                          const Text(
                            '3:00 PM',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'mont',
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'From',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'mont',
                                color: AppColors.textColor),
                          ),
                          Padding(
                            padding: ResponsivePadding.customPadding(context,
                                right: 10),
                            child: const Text(
                              'To',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'mont',
                                  color: AppColors.textColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      DottedLine(
                        dashColor: Colors.grey.shade300,
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/profile.png',
                            height: screenHeight * 0.02,
                          ),
                          SizedBox(
                            width: screenWidth * 0.02,
                          ),
                          const Text(
                            '2 Seats',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'mont',
                                fontWeight: FontWeight.w600,
                                color: AppColors.textColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.026,
            ),
            Container(
              height: screenHeight * 0.2,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: AppColors.redColor,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 6.0,
                    offset: Offset(2, 5),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: AppColors.greyColor),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: ResponsivePadding.customPadding(context,
                        left: 2, right: 2, top: 2),
                    child: const Text(
                      'Your ticket information will be sent on this number',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'mont',
                          color: AppColors.whiteColor),
                    ),
                  ),
                  Padding(
                    padding: ResponsivePadding.customPadding(context,
                        left: 3, top: 3),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/profile.png',
                          height: screenHeight * 0.02,
                          color: AppColors.whiteColor,
                        ),
                        SizedBox(
                          width: screenWidth * 0.02,
                        ),
                        const Text(
                          '91911234589',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'mont',
                              fontWeight: FontWeight.w600,
                              color: AppColors.whiteColor),
                        ),
                        SizedBox(
                          width: screenWidth * 0.32,
                        ),
                        Container(
                          height: screenHeight * 0.03,
                          width: screenWidth * 0.18,
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              'Edit',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'mont',
                                  color: AppColors.redColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            const InfoContainer(),
            SizedBox(height: screenHeight * 0.08),
            Center(
              child: CustomElevatedButton(
                height: screenHeight * 0.06,
                width: screenWidth * 0.8,
                radius: 25,
                color: AppColors.btnColor,
                text: 'Continue',
                textStyle: const TextStyle(
                    color: AppColors.btntextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    fontFamily: 'mont'),
                onPressed: () {
                  Navigator.pushNamed(context, '/passengers');
                },
              ),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            )
          ],
        ),
      ),
    );
  }
}
