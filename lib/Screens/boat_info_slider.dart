import 'package:flutter/material.dart';

import '../CustomeWidget/colors.dart';
import '../CustomeWidget/list.dart'; // Ensure your image list is imported correctly.

class BoatInfoSlider extends StatefulWidget {
  const BoatInfoSlider({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BoatInfoSliderState createState() => _BoatInfoSliderState();
}

class _BoatInfoSliderState extends State<BoatInfoSlider> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: screenHeight * 0.45,
              width: screenWidth,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: boatimg.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        child: Image.asset(
                          boatimg[index],
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                  Positioned(
                    bottom: screenHeight * 0.015,
                    left: screenWidth * 0,
                    right: screenWidth * 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(images.length, (index) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: _currentPage == index ? 8 : 8,
                          height: _currentPage == index ? 8 : 8,
                          decoration: BoxDecoration(
                            color: _currentPage == index
                                ? Colors.white
                                : Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        );
                      }),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.06,
                    left: screenWidth * 0.04,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColors.whiteColor,
                        backgroundImage: AssetImage(
                          'assets/images/arrow_back.png',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: screenHeight * 0.06,
                    left: screenWidth * 0.85,
                    child: InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColors.whiteColor,
                        backgroundImage: AssetImage(
                          'assets/images/share.png',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
