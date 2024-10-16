import 'package:flutter/material.dart';
import 'package:hotel_booking_app/views/screens/profile_screen.dart';
import 'package:hotel_booking_app/views/shared/gen/assets.gen.dart';
import 'package:hotel_booking_app/views/widgets/app_text.dart';
import 'package:hotel_booking_app/views/widgets/material_button_custom.dart';
import 'package:hotel_booking_app/views/widgets/text_form_field_custom.dart';

// ignore: must_be_immutable
class EditProfilScreen extends StatelessWidget {
  EditProfilScreen({super.key});
  TextEditingController nameTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: CustomNavBar(index: 3),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButton(
                  color: Colors.black54,
                  onPressed: () {
                    MaterialPageRoute(
                      builder: ((context) => ProfileScreen()),
                    );
                  },
                ),
                SizedBox(height: 20.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: Assets.image.photo.provider(),
                    ),
                    SizedBox(height: 30.0),
                    _textLabel('Username'),
                    SizedBox(height: 20.0),
                    TextFormFieldWidget(
                      textController: nameTextEditingController,
                      text: 'Kiita Valezka',
                      keyPadType: TextInputType.name,
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                      isPassword: false,
                    ),
                    SizedBox(height: 20.0),
                    _textLabel('Password'),
                    SizedBox(height: 20.0),
                    TextFormFieldWidget(
                      textController: nameTextEditingController,
                      text: '**********',
                      keyPadType: TextInputType.name,
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      isPassword: true,
                    ),
                    SizedBox(height: 20.0),
                    _textLabel('Location'),
                    SizedBox(height: 20.0),
                    TextFormFieldWidget(
                      textController: nameTextEditingController,
                      text: 'Omdoarman, Sudan',
                      keyPadType: TextInputType.name,
                      prefixIcon: Icon(
                        Icons.location_on,
                      ),
                      isPassword: false,
                    ),
                    SizedBox(height: 30.0),
                    MaterialButtonWidget(
                      text: 'Apple',
                      icon: Icons.check_circle_outline,
                      onPressed: () {},
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Align _textLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: AppText.medium(
        text,
        color: Colors.black54,
        fontSize: 20,
      ),
    );
  }
}
