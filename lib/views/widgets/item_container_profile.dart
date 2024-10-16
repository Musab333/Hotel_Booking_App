  import 'package:flutter/material.dart';
import 'package:hotel_booking_app/views/widgets/app_text.dart';

Widget itemContainerProfile(
    IconData icon,
    String text,
    Function()? onTop,
  ) {
    return GestureDetector(
      onTap: onTop,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Icon(
                icon,
                //color: colorIcon = Colors.black54,
              ),
              SizedBox(width: 20.0),
              AppText.medium(
                text,
                color: Colors.black54,
              ),
            ],
          ),
        ),
      ),
    );
  }
