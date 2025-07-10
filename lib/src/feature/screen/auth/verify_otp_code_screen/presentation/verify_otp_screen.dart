import 'package:angelgrullxm_social_network_app/src/feature/common_widgets/custom_bottom.dart';
import 'package:angelgrullxm_social_network_app/src/feature/screen/auth/email_screen/presentation/email_screen.dart';
import 'package:angelgrullxm_social_network_app/src/feature/screen/auth/mission/widgets/custom_app_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final TextEditingController _otpTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String currentText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 121.h, horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your code',
              style: TextStyle(
                fontSize: 28.sp,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'poppins',
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Text(
                  '01616063007 ',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'poppins',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Resend action
                  },
                  child: Text(
                    'Resend?',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Color(0xffFC236E),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'poppins',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            PinCodeTextField(
              controller: _otpTEController,
              length: 4,
              obscureText: false,
              cursorColor: Color(0xffE9E9E9),
              animationType: AnimationType.fade,
              animationDuration: Duration(milliseconds: 300),
              onChanged: (value) {
                setState(() {
                  currentText = value;
                });
              },
              appContext: context,
              pinTheme: PinTheme(
                activeFillColor: Colors.white,
                selectedFillColor: Colors.white,
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 51.h,
                fieldWidth: 76.w,
                activeColor: Colors.white,
                inactiveColor: Colors.white,
                selectedColor: Colors.white,
              ),
              textStyle: TextStyle(color: Colors.white, fontSize: 16.sp),
            ),

            SizedBox(height: 198.h),

            Center(
              child: CustomButton(text: 'Next', onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EmailScreen()));
              }),
            ),
          ],
        ),
      ),
    );
  }
}
