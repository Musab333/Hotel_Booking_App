import 'package:flutter/material.dart';
import 'package:hotel_booking_app/views/widgets/custom_nav_bar.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavBar(index: 2),
      body: SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
