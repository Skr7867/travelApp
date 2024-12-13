import 'package:flutter/material.dart';
import 'package:travelapp/CustomeWidget/responsive_padding.dart';

import '../CustomeWidget/colors.dart';

class GenderDropdown extends StatefulWidget {
  const GenderDropdown({super.key});

  @override
  State<GenderDropdown> createState() => _GenderDropdownState();
}

class _GenderDropdownState extends State<GenderDropdown> {
  final List<String> _genders = ['Male', 'Female'];
  String? _selectedGender; // Initially no gender selected

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsivePadding.customPadding(
        context,
      ),
      child: Column(
        children: [
          DropdownButtonFormField<String>(
            value: _selectedGender,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            ),
            hint: const Text(
              'Male',
              style: TextStyle(
                  color: AppColors.rateColor,
                  fontSize: 14,
                  fontFamily: 'mont',
                  fontWeight: FontWeight.w300),
            ),
            icon: const Icon(Icons.arrow_drop_down),
            items: _genders.map((String gender) {
              return DropdownMenuItem<String>(
                value: gender,
                child: Text(gender),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedGender = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
