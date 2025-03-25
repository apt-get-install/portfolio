import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

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
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(
            size: 35,
            color: Colors.black,
          ),
        ),
        endDrawer: const DrawerMobile(),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: ListView(
            children: [
              const CircleAvatar(
                radius: 117.0,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 115.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 110.0,
                    backgroundImage: AssetImage(
                      "assets/profile.png",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SansBold(text: "About Me", size: 35),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Sans(text: "Hello 전 최수호에요. 웹개발자 제조에요", size: 15),
                    const Sans(text: "제조 도메인으로 일했구, MES를 주로 했어요", size: 15),
                    const Sans(text: "Java, Spring이 주 기술 스택이에요", size: 15),
                    const SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      spacing: 7.0,
                      runSpacing: 7.0,
                      children: [
                        tealContainer("Java"),
                        tealContainer("Spring"),
                        tealContainer("React"),
                        tealContainer("Flutter"),
                        tealContainer("Dart"),
                        tealContainer("Python"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),

              // web dev, second section
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCard(
                    imagePath: "assets/webL.png",
                    width: 200,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold(text: "Web Dev", size: 20),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              const Sans(text: "웹개발 이거이거했어요", size: 15),

              // app dev, third section
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCard(
                    imagePath: "assets/app.png",
                    width: 200,
                    reverse: true,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold(text: "App Dev", size: 20),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              const Sans(text: "앱개발 이거이거했어요", size: 15),

              // Back-end dev, fourth section
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AnimatedCard(
                    imagePath: "assets/firebase.png",
                    width: 200,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold(text: "Back-end Dev", size: 20),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              const Sans(text: "백엔드 이거이거했어요", size: 15),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
