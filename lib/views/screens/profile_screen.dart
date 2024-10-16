import 'package:flutter/material.dart';
import 'package:hotel_booking_app/views/screens/edit_profil_screen.dart';
import 'package:hotel_booking_app/views/shared/gen/assets.gen.dart';
import 'package:hotel_booking_app/views/widgets/app_text.dart';
import 'package:hotel_booking_app/views/widgets/custom_icon_container.dart';
import 'package:hotel_booking_app/views/widgets/custom_nav_bar.dart';
import 'package:hotel_booking_app/views/widgets/item_container_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomNavBar(index: 3),
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Row(
                  children: [
                    Spacer(),
                    CustomIconButton(
                      icon: Assets.icon.notification.svg(height: 25),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: Assets.image.photo.provider(),
                    ),
                    SizedBox(height: 10.0),
                    AppText.large(
                      'Kiita Valezka',
                      color: Colors.black54,
                    ),
                    // AppText.large(
                    //   'Kiita Valezka',
                    //   color: Colors.black12,
                    // ),
                    SizedBox(height: 40.0),
                    itemContainerProfile(
                      Icons.person,
                      'Edit Profile',
                      () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => EditProfilScreen()),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20.0),
                    itemContainerProfile(
                      Icons.lock,
                      'Change Password',
                      () {},
                    ),
                    SizedBox(height: 20.0),
                    itemContainerProfile(
                      Icons.mark_as_unread,
                      'Bookmark',
                      () {},
                    ),
                    SizedBox(height: 20.0),
                    itemContainerProfile(
                      Icons.location_on,
                      'My Location',
                      () {},
                    ),
                    SizedBox(height: 20.0),
                    itemContainerProfile(
                      Icons.logout,
                      'Logout',
                      () {},
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
