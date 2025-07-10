import 'package:angelgrullxm_social_network_app/src/core/constant/app_padding.dart';
import 'package:angelgrullxm_social_network_app/src/feature/common_widgets/custom_bottom.dart';
import 'package:angelgrullxm_social_network_app/src/feature/screen/auth/verify_otp_code_screen/presentation/verify_otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../mission/widgets/custom_app_bar_screen.dart';
import '../widgets/country_picker.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  PhoneNumberScreenState createState() => PhoneNumberScreenState();
}

class PhoneNumberScreenState extends State<PhoneNumberScreen> {
  String? countryCode;

  final TextEditingController _phoneNumberTEController =
      TextEditingController();
  final GlobalKey<void> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.allPagePadding(),
      child: Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Text(
                'Can we get your\nnumber?',
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 24.h),
              Form(
                autovalidateMode: AutovalidateMode.always,
                key: _formKey,
                child: Row(
                  children: [
                    CountryPickerWidget(
                      initialCountryCode: countryCode,
                      onCountrySelected: (selectedCountryCode) {
                        setState(() {
                          countryCode = selectedCountryCode;
                        });
                      },
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: TextFormField(
                        controller: _phoneNumberTEController,
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                        decoration: InputDecoration(
                          hintText: 'Enter your number',
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 16.sp,
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your number';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 28.h),

              Text(
                "We'll text you a code to verify you're really you. Message and data rates may apply.",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'What happens if your number changes?',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffFC236E),
                ),
              ),

              SizedBox(height: 111.h),
              Center(
                child: CustomButton(
                  text: 'Next',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerifyOtpScreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
