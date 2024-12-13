import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/CustomeWidget/custome_elevated_button.dart';
import 'package:travelapp/CustomeWidget/responsive_padding.dart';
import 'package:travelapp/Screens/travel_info.dart';

import '../CustomeWidget/colors.dart';

class PassengersDetails extends StatefulWidget {
  const PassengersDetails({super.key});

  @override
  State<PassengersDetails> createState() => _PassengersDetailsState();
}

class _PassengersDetailsState extends State<PassengersDetails> {
  int totalPrice = 0; // Initialize total price to 0
  List<bool> isClickedList = [
    false,
    false,
    false,
  ];
  // Track state of each button
  List<int> countList = [0, 0, 0];

  List<int> itemCounts = [0, 0, 0]; // Track item counts for each button
  List<bool> isMealClickedList = [
    false,
    false,
    false
  ]; // Track state of each button

  List<int> countList1 = [0, 0]; // Tracks counts for buttons
  List<bool> isClickedList1 = [
    false,
    false
  ]; // Tracks whether buttons are clicked

  bool isclicked = false;
  bool ismealclicked = false;
  int itemcount = 0;
  int count = 0;

  void addPrice(int buttonIndex) {
    // Determine the price based on the button index
    int price = (buttonIndex == 0) ? 1500 : 50;

    if (countList1[buttonIndex] == 1) {
      setState(() {
        totalPrice += price;
      });
    }
  }

  void addPrice1(int price, int buttonIndex) {
    if (countList[buttonIndex] == 1) {
      setState(() {
        totalPrice += price;
      });
    }
  }

  void addItemPrice(int price, bool isAddClick, int index) {
    setState(() {
      if (isAddClick) {
        totalPrice += price;
        itemCounts[index]++; // Increase the item count for the specific button
      } else {
        if (totalPrice >= price && itemCounts[index] > 0) {
          totalPrice -= price;
          itemCounts[
              index]--; // Decrease the item count for the specific button
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Adds-Ons',
          style: TextStyle(
              fontSize: 18, fontFamily: 'mont', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: AppColors.whiteColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.cancel_outlined),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenHeight * 0.03,
            ),
            const TravelInfo(),
            SizedBox(
              height: screenHeight * 0.02,
            ),
            Padding(
              padding: ResponsivePadding.customPadding(context, left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Additional services',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                      fontFamily: 'mont',
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  const Text(
                    'Transportation Options',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                      fontFamily: 'mont',
                    ),
                  ),
                  const Text(
                    'Cab service pickUp and dropOff at Station; driver details will be shared via WhatsApp.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.rateColor,
                      fontFamily: 'mont',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Private Car (4 Seater)',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'mont',
                              color: AppColors.textColor,
                            ),
                          ),
                          const Text(
                            '₹ 500',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.rateColor,
                              fontFamily: 'mont',
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          const Text(
                            'Private Car (7 Seater)',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'mont',
                                color: AppColors.textColor),
                          ),
                          const Text(
                            '₹ 500',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.rateColor,
                              fontFamily: 'mont',
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          const Text(
                            'Shared Rides',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'mont',
                                color: AppColors.textColor),
                          ),
                          const Text(
                            '₹ 500',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.rateColor,
                              fontFamily: 'mont',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenWidth * 0.3,
                      ),
                      Column(
                        children: List.generate(3, (index) {
                          return Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                child: IconButton(
                                  color: AppColors.whiteColor,
                                  onPressed: () {
                                    setState(() {
                                      countList[index] += 1;
                                      if (countList[index] == 1) {
                                        addPrice1(500, index);
                                      }
                                      isClickedList[index] =
                                          !isClickedList[index];
                                    });
                                  },
                                  icon: isClickedList[index]
                                      ? const Icon(Icons.done)
                                      : const Icon(Icons.add),
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                            ],
                          );
                        }),
                      ),
                    ],
                  ),
                  const Text(
                    'Meal Selection',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                      fontFamily: 'mont',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Private Car (4 Seater)',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'mont',
                              color: AppColors.textColor,
                            ),
                          ),
                          const Text(
                            '₹ 500',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.rateColor,
                              fontFamily: 'mont',
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          const Text(
                            'Private Car (7 Seater)',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'mont',
                                color: AppColors.textColor),
                          ),
                          const Text(
                            '₹ 500',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.rateColor,
                              fontFamily: 'mont',
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          const Text(
                            'Shared Rides',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'mont',
                                color: AppColors.textColor),
                          ),
                          const Text(
                            '₹ 500',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.rateColor,
                              fontFamily: 'mont',
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: List.generate(3, (index) {
                          return Padding(
                            padding: ResponsivePadding.customPadding(context,
                                left: 2, right: 3, top: 3),
                            child: Container(
                              height: screenHeight * 0.04,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMealClickedList[index] = true;
                                  });
                                },
                                child: isMealClickedList[index]
                                    ? Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              addItemPrice(500, true, index);
                                            },
                                            icon: Padding(
                                              padding: ResponsivePadding
                                                  .customPadding(context,
                                                      bottom: 5),
                                              child: const Icon(
                                                Icons.add,
                                                color: AppColors.whiteColor,
                                                size: 15,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '${itemCounts[index]}',
                                            style: const TextStyle(
                                              color: AppColors.whiteColor,
                                              fontFamily: 'mont',
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              addItemPrice(500, false, index);
                                            },
                                            icon: const Icon(
                                              Icons.remove,
                                              size: 15,
                                              color: AppColors.whiteColor,
                                            ),
                                          ),
                                        ],
                                      )
                                    : Padding(
                                        padding:
                                            ResponsivePadding.customPadding(
                                                context,
                                                left: 5,
                                                right: 5,
                                                top: 0.7),
                                        child: const Text(
                                          'Add',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'mont',
                                            color: AppColors.whiteColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                              ),
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                  const Text(
                    'Other Recommdations',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                      fontFamily: 'mont',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Tour Guide',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'mont',
                              color: AppColors.textColor,
                            ),
                          ),
                          const Text(
                            '₹ 1,500',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.rateColor,
                              fontFamily: 'mont',
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          const Text(
                            'Insurance',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'mont',
                                color: AppColors.blackColor),
                          ),
                          const Text(
                            'Add just ₹ 50 per passenger get :',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.rateColor,
                              fontFamily: 'mont',
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          const Text(
                            'Insurance Coverage',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'mont',
                                color: AppColors.textColor),
                          ),
                          const Text(
                            ' Upto ₹ 70,000 on hospitalization & \n upto ₹ 5,00,000 in case of Death/PTD',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.rateColor,
                              fontFamily: 'mont',
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            ResponsivePadding.customPadding(context, bottom: 6),
                        child: Column(
                          children: List.generate(2, (index) {
                            return Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  child: IconButton(
                                    color: AppColors.whiteColor,
                                    onPressed: () {
                                      setState(() {
                                        countList1[index] += 1;
                                        if (countList1[index] == 1) {
                                          addPrice(
                                              index); // Pass the index to decide the price
                                        }
                                        isClickedList1[index] =
                                            !isClickedList1[index];
                                      });
                                    },
                                    icon: isClickedList1[index]
                                        ? const Icon(Icons.done)
                                        : const Icon(Icons.add),
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.02,
                                ),
                              ],
                            );
                          }),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  DottedLine(
                    dashColor: Colors.grey.shade400,
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  const Text(
                    'Bill Breakdown',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor,
                      fontFamily: 'mont',
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/profile.png',
                        color: Colors.blue,
                        height: screenHeight * 0.02,
                      ),
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      const Text(
                        '2 Passenger',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textColor,
                          fontFamily: 'mont',
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: ResponsivePadding.customPadding(context,
                        left: 9, right: 5),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '• Adult 1',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'mont',
                              ),
                            ),
                            Text(
                              '• Child 1 (age 3 to 10)',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'mont',
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text('₹ 1,500'),
                            Text('₹ 1,000'),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            DottedLine(
              dashColor: Colors.grey.shade400,
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Row(
              children: [
                const Text(
                  'Total',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'mont'),
                ),
                const Text(
                  '(tax included)',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'mont',
                    color: AppColors.rateColor,
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.35,
                ),
                Text(
                  '₹ $totalPrice',
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'mont'),
                )
              ],
            ),
            SizedBox(
              height: screenHeight * 0.07,
            ),
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
                  Navigator.pushNamed(context, '/sucessful');
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
