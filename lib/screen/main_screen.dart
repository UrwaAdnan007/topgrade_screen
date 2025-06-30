import 'package:flutter/material.dart';
import 'package:top_grade_page/widgets/custom_card.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 15,
              child: SizedBox(
                width: screenWidth,
                height: screenHeight * 0.015,
                child: Image.asset(
                  'assets/images/logo_img.png',

                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              flex: 70,
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(30.0),
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 1.0,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  CustomCard(
                    color: Colors.red,
                    icon: Icons.person,
                    text: 'I Am Admin',
                    onPressed: () {},
                  ),
                  CustomCard(
                    color: Colors.green,
                    icon: Icons.maps_home_work_rounded,
                    text: 'Campus Login',
                    onPressed: () {},
                  ),
                  CustomCard(
                    color: const Color.fromARGB(255, 8, 65, 151),
                    icon: Icons.people,
                    text: 'I Am Staff',
                    onPressed: () {},
                  ),
                  CustomCard(
                    color: Colors.blue,
                    icon: Icons.settings,
                    text: 'Super Admin',
                    onPressed: () {},
                  ),
                  CustomCard(
                    color: const Color.fromARGB(255, 243, 223, 43),
                    icon: Icons.school,
                    text: 'I Am Student',
                    onPressed: () {},
                  ),
                  CustomCard(
                    color: Colors.grey[800]!,
                    icon: Icons.groups,
                    text: 'I Am Parent',
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 15,
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Other \nOptions',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.07),
                    Icon(Icons.share, size: 30, color: Colors.blue),
                    SizedBox(width: screenWidth * 0.07),
                    Icon(Icons.language_rounded, size: 30, color: Colors.blue),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
