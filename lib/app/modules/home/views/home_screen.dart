import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:goodluv/app/resources/colors.dart';
import 'package:goodluv/app/widgets/custom_button.dart';
import 'package:goodluv/app/widgets/custom_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.effectDark,
      backgroundColor: Color(0xFF1B1E31),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height * 0.035),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu, color: Colors.white),
                ),
                Text(
                  'Welcome Sarah!',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications, color: Colors.white),
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/images/pic4.jpg'),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.02),
            CustomTextField(
              hintText: 'Search',
              prefixIconColor: Colors.white,
              hintStyle: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
              prefixIcon: Icons.search,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: AppColors.primaryColor),
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            Text(
              "Explore Matches",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            SizedBox(
              height: Get.height * 0.1,
              width: Get.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: Get.width * 0.7,
                    height: Get.height * 0.1,
                    margin: const EdgeInsets.only(right: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF3A4D58),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage('assets/images/pic4.jpg'),
                        ),
                        SizedBox(width: Get.width * 0.02),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Sarah, 28',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Spacer(),
                                  Icon(
                                    FontAwesomeIcons.solidComment,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              CustomButton(
                                ontap: () {},
                                height: 36,
                                width: Get.width * 0.25,
                                isLoading: false.obs,
                                child: Text(
                                  'View Profile',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: Get.height * 0.02),
            Expanded(
              child: Center(
                child: Image.asset("assets/images/trr.png", fit: BoxFit.cover),
              ),
            ),

            SizedBox(height: Get.height * 0.2),
          ],
        ),
      ),
    );
  }
}
