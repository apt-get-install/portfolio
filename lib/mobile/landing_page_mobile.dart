import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  tealContainer(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          style: BorderStyle.solid,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: const EdgeInsets.all(7.0),
      child: Text(
        text,
        style: GoogleFonts.openSans(fontSize: 15),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          size: 35,
          color: Colors.black,
        ),
      ),
      endDrawer: const DrawerMobile(),
      body: ListView(
        children: [
          // First Section
          const CircleAvatar(
            radius: 117.0,
            backgroundColor: Colors.tealAccent,
            child: CircleAvatar(
              radius: 115.0,
              backgroundImage: AssetImage('assets/profile.png'),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      child: const SansBold(text: "안녕하세요! 저는,", size: 15),
                    ),
                    const SansBold(text: "최수호", size: 40.0),
                    const SansBold(text: "Spring 웹 개발자 입니다.", size: 20.0),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9.0,
                      children: [
                        Icon(Icons.email),
                        Icon(Icons.call),
                        Icon(Icons.location_pin),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9.0,
                      children: [
                        Sans(
                          text: "ekr7777777@gmail.com",
                          size: 15,
                        ),
                        Sans(
                          text: "010-5094-4855",
                          size: 15,
                        ),
                        Sans(
                          text: "Anyang, South Korea",
                          size: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          // About Me, Second Section
          // Padding(
          //   padding: const EdgeInsets.symmetric(
          //     horizontal: 20.0,
          //   ),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       const SansBold(text: "About Me", size: 35),
          //       const Sans(text: "Hello 전 최수호에요. 웹개발자 제조에요", size: 15),
          //       const Sans(text: "제조 도메인으로 일했구, MES를 주로 했어요", size: 15),
          //       const Sans(text: "Java, Spring이 주 기술 스택이에요", size: 15),
          //       const SizedBox(
          //         height: 10,
          //       ),
          //       Wrap(
          //         spacing: 7.0,
          //         runSpacing: 7.0,
          //         children: [
          //           tealContainer("Java"),
          //           tealContainer("Spring"),
          //           tealContainer("React"),
          //           tealContainer("Flutter"),
          //           tealContainer("Dart"),
          //           tealContainer("Python"),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          // const SizedBox(
          //   height: 60,
          // ),
          // // What I do, Third Section
          // const Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     SansBold(text: "What I do?", size: 35),
          //     AnimatedCard(
          //       imagePath: "assets/webL.png",
          //       text: "Web Dev",
          //       width: 300,
          //     ),
          //     SizedBox(
          //       height: 35.0,
          //     ),
          //     AnimatedCard(
          //       imagePath: "assets/app.png",
          //       text: "App Dev",
          //       width: 300,
          //       fit: BoxFit.contain,
          //       reverse: true,
          //     ),
          //     SizedBox(
          //       height: 35.0,
          //     ),
          //     AnimatedCard(
          //       imagePath: "assets/firebase.png",
          //       text: "Back Dev",
          //       width: 300,
          //     ),
          //     SizedBox(
          //       height: 60.0,
          //     ),

          //     // Contact Fourth Section
          //     // Wrap(
          //     //   runSpacing: 20.0,
          //     //   spacing: 20.0,
          //     //   alignment: WrapAlignment.center,
          //     //   children: [
          //     //     const SansBold(text: "Contct Me", size: 35.0),
          //     //     TextForm(
          //     //       heading: "First Name",
          //     //       containerWidth: widthDevice / 1.4,
          //     //       hintText: "Please type your first name",
          //     //     ),
          //     //     TextForm(
          //     //       heading: "Last Name",
          //     //       containerWidth: widthDevice / 1.4,
          //     //       hintText: "Please type your last name",
          //     //     ),
          //     //     TextForm(
          //     //       heading: "Email",
          //     //       containerWidth: widthDevice / 1.4,
          //     //       hintText: "Please type your Email",
          //     //     ),
          //     //     TextForm(
          //     //       heading: "Phone Number",
          //     //       containerWidth: widthDevice / 1.4,
          //     //       hintText: "Please type your Phone Number",
          //     //     ),
          //     //     TextForm(
          //     //       heading: "Message",
          //     //       containerWidth: widthDevice / 1.4,
          //     //       hintText: "Message",
          //     //       maxLines: 10,
          //     //     ),
          //     //     MaterialButton(
          //     //       onPressed: () {},
          //     //       shape: RoundedRectangleBorder(
          //     //         borderRadius: BorderRadius.circular(10.0),
          //     //       ),
          //     //       height: 60.0,
          //     //       minWidth: widthDevice / 2.2,
          //     //       color: Colors.tealAccent,
          //     //       child: const SansBold(text: "Submit", size: 20.0),
          //     //     ),
          //     //   ],
          //     // ),
          //     SizedBox(
          //       height: 20.0,
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
