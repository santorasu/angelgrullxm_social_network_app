import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';

class CountryPickerWidget extends StatelessWidget {
  final String? initialCountryCode;
  final Function(String) onCountrySelected;

  const CountryPickerWidget({
    super.key,
    this.initialCountryCode,
    required this.onCountrySelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _openCountryPickerDialog(context),
      child: Row(
        children: [
          Text(
            initialCountryCode != null ? "+$initialCountryCode" : 'BN +880',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  // Function to open the country picker dialog
  void _openCountryPickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.pink),
        child: CountryPickerDialog(
          titlePadding: const EdgeInsets.all(8.0),
          searchCursorColor: Colors.pinkAccent,
          searchInputDecoration: const InputDecoration(hintText: 'Search...'),
          isSearchable: true,
          title: const Text('Select your phone code'),
          onValuePicked: (Country country) {
            // Pass the selected country phone code back to the parent widget
            onCountrySelected(country.phoneCode);
          },
          itemBuilder: _buildDialogItem,
          priorityList: [
            CountryPickerUtils.getCountryByIsoCode('TR'),
            CountryPickerUtils.getCountryByIsoCode('US'),
          ],
        ),
      ),
    );
  }

  // Widget to build each item in the country picker dialog
  Widget _buildDialogItem(Country country) => Row(
    children: <Widget>[
      CountryPickerUtils.getDefaultFlagImage(country),
      const SizedBox(width: 8.0),
      Text("+${country.phoneCode}"), // Display the country phone code
      const SizedBox(width: 8.0),
      Flexible(child: Text(country.name)), // Display the country name
    ],
  );
}
