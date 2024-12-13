import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../CustomeWidget/colors.dart';
import '../CustomeWidget/responsive_padding.dart';

class TravelInfo extends StatefulWidget {
  const TravelInfo({super.key});

  @override
  State<TravelInfo> createState() => _TravelInfoState();
}

class _TravelInfoState extends State<TravelInfo> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
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
                    padding:
                        ResponsivePadding.customPadding(context, right: 10),
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
                  Padding(
                    padding: ResponsivePadding.customPadding(context, left: 45),
                    child: const Text(
                      '₹ 2,500',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'mont',
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
