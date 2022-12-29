import 'package:pinput/pinput.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpScreen(),
    );
  }
}

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: ((context, child) {
      return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 180, 208, 231),
                Colors.white,
                Color.fromARGB(255, 231, 227, 198),
                Colors.white,
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              const Icon(
                Icons.arrow_back,
                size: 20,
                color: Color.fromARGB(255, 59, 29, 141),
              ),
              SizedBox(height: 200.h),
              Row(
                children: [
                  SizedBox(
                    width: 115.h,
                  ),
                  Text(
                    'Verify',
                    style: TextStyle(
                        color: const Color.fromRGBO(51, 25, 107, 1),
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Text('Please enter the 4-digit code \n sent to your number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: const Color.fromRGBO(100, 82, 144, 1),
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                child: Pinput(
                  length: 4,
                  defaultPinTheme: PinTheme(
                    height: 60.0,
                    width: 60.0,
                    textStyle: GoogleFonts.urbanist(
                      fontSize: 24.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.5),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(children: [
                SizedBox(
                  width: 90.w,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.r))),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Colors.pink, Colors.purple]),
                        borderRadius: BorderRadius.circular(35.r)),
                    child: Container(
                      width: 180.w,
                      height: 60.h,
                      alignment: Alignment.center,
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                  ),
                )
              ]),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 120.w,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: GradientText(
                          'Resend OTP',
                          style: TextStyle(
                              fontSize: 25.sp, fontWeight: FontWeight.w500),
                          colors: const [
                            Colors.pink,
                            Colors.deepPurple,
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }));
  }
}
