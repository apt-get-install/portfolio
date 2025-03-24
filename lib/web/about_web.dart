import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  urlLancher(String imgPath, String url) {
    return IconButton(
      icon: SvgPicture.asset(
        imgPath,
        color: Colors.white,
        width: 35.0,
      ),
      onPressed: () async {
        await launchUrl(Uri.parse(url));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    var heightDevice = MediaQuery.of(context).size.height;
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

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 72,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/profile.png"),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const SansBold(
              text: "SooHo Choi",
              size: 30.0,
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLancher("assets/instagram.svg", "https://www.naver.com"),
                urlLancher("assets/twitter.svg", "https://www.naver.com"),
                urlLancher(
                  "assets/github.svg",
                  "https://www.github.com/apt-get-install",
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: const Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb(title: "Home", route: "/"),
            Spacer(),
            TabsWeb(title: "Works", route: "/works"),
            Spacer(),
            TabsWeb(title: "Blog", route: "/blog"),
            Spacer(),
            TabsWeb(title: "About", route: "/about"),
            Spacer(),
            TabsWeb(title: "Contact", route: "/contact"),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          // first section
          // ignore: sized_box_for_whitespace
          SizedBox(
            height: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SansBold(
                      text: "About Me",
                      size: 40,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Sans(
                      text: "제조 개발자 입니다. 블라블라 ",
                      size: 15,
                    ),
                    const Sans(
                      text: "제조 개발자 입니다. 블라블라 ",
                      size: 15,
                    ),
                    const Sans(
                      text: "제조 개발자 입니다. 블라블라 ",
                      size: 15,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: const EdgeInsets.all(7.0),
                          child: const Sans(
                            text: "Spring Framework",
                            size: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: const EdgeInsets.all(7.0),
                          child: const Sans(
                            text: "Java",
                            size: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: const EdgeInsets.all(7.0),
                          child: const Sans(
                            text: "Vue.js",
                            size: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: const EdgeInsets.all(7.0),
                          child: const Sans(
                            text: "Oracle",
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundImage: AssetImage("assets/profile.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // second page
          // ignore: sized_box_for_whitespace
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AnimatedCard(
                imagePath: "assets/webL.png",
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: const Column(
                  children: [
                    SansBold(text: "Web Dev", size: 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(text: "웹 잘해용", size: 15.0),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: widthDevice / 3,
                child: const Column(
                  children: [
                    SansBold(text: "App Dev", size: 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(text: "App 잘해용", size: 15.0),
                  ],
                ),
              ),
              const AnimatedCard(
                imagePath: "assets/app.png",
                height: 250.0,
                width: 250.0,
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AnimatedCard(
                imagePath: "assets/firebase.png",
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: const Column(
                  children: [
                    SansBold(text: "Back Dev", size: 30.0),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(text: "Back 잘해용", size: 15.0),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
