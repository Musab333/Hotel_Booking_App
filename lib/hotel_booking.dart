
import 'package:flutter/material.dart';
import 'package:hotel_booking_app/views/screens/home_screen.dart';
import 'package:hotel_booking_app/views/shared/gen/colors.gen.dart';
import 'package:hotel_booking_app/views/shared/gen/fonts.gen.dart';

class HotelApp extends StatelessWidget {
  const HotelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel Booking App UI',
      theme: ThemeData(
        fontFamily: FontFamily.workSans,
        primarySwatch: ColorName.primarySwatch,
      ),
      home: const HomeScreen(),
    );
  }
}