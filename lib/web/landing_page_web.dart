import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      // drawer: const DrawerWeb(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: const Row(
          children: [
            Spacer(
              flex: 20,
            ),
            TabsWeb(title: "Home", route: "/"),
            Spacer(),
            TabsWeb(title: "About", route: "/about"),
            Spacer(),
            TabsWeb(title: "Projects", route: "/projects"),
            Spacer(),
            // TabsWeb(title: "Blog", route: "/blog"),
            // Spacer(),
            // TabsWeb(title: "Contact", route: "/contact"),
            // Spacer(),
          ],
        ),
      ),
      body: Container(
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/laptop-01.jpg"),
        //     fit: BoxFit.cover,
        //     opacity: 0.15,
        //   ),
        // ),
        child: ListView(
          children: [
            // firtst page
            // ignore: sized_box_for_whitespace
            Container(
              height: heightDevice - 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          horizontal: 20.0,
                          vertical: 10.0,
                        ),
                        child: const SansBold(
                          text: "안녕하세요! 저는,",
                          size: 15,
                        ),
                      ),
                      // const SizedBox(
                      //   height: 15.0,
                      // ),
                      const Sans(
                        text: "최수호",
                        size: 60,
                      ),
                      const Sans(
                        text: "Java기반 Spring 웹 개발자 입니다.",
                        size: 20,
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.email,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Sans(
                            text: "apt-get-install@kakao.com",
                            size: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.call,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Sans(
                            text: "010-5094-4855",
                            size: 15,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Sans(
                            text: "Anyang, Republic of Korea",
                            size: 15,
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
            // Container(
            //   height: heightDevice / 1.5,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Image.asset(
            //         "assets/aboutme.jpg",
            //         width: 500.0,
            //         height: widthDevice / 1.9,
            //       ),
            //       const Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           SansBold(
            //             text: "About Me",
            //             size: 40,
            //           ),
            //           SizedBox(
            //             height: 15.0,
            //           ),
            //           Sans(
            //             text: "안녕하세요, 저는 Java기반 Spring 웹 개발자입니다.",
            //             size: 15,
            //           ),
            //           Sans(
            //             text: "MES 및 제조와 관련된 프로젝트를 주력으로 수행하였습니다.",
            //             size: 15,
            //           ),
            //           Sans(
            //             text: "직무와 상관 없이, 새로운 것을 배우는 것을 좋아합니다.",
            //             size: 15,
            //           ),
            //           Sans(
            //             text: "이 홈페이지는 Flutter를 공부하며, 만들었습니다.",
            //             size: 15,
            //           ),
            //           SizedBox(
            //             height: 10.0,
            //           ),
            //           Row(
            //             children: [
            //               SkillContainerWeb(text: "Java"),
            //               SizedBox(
            //                 width: 10.0,
            //               ),
            //               SkillContainerWeb(text: "Spring"),
            //               SizedBox(
            //                 width: 10.0,
            //               ),
            //               SkillContainerWeb(text: "JSP"),
            //               SizedBox(
            //                 width: 10.0,
            //               ),
            //               SkillContainerWeb(text: "Javascript"),
            //               SizedBox(
            //                 width: 10.0,
            //               ),
            //               SkillContainerWeb(text: "Vue.js"),
            //             ],
            //           ),
            //           SizedBox(
            //             height: 10.0,
            //           ),
            //           Row(
            //             children: [
            //               SkillContainerWeb(text: "Oracle"),
            //               SizedBox(
            //                 width: 10.0,
            //               ),
            //               SkillContainerWeb(text: "Tibero"),
            //               SizedBox(
            //                 width: 10.0,
            //               ),
            //               SkillContainerWeb(text: "MS-Sql"),
            //               SizedBox(
            //                 width: 10.0,
            //               ),
            //               SkillContainerWeb(text: "MySql"),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            // const SizedBox(
            //   height: 70,
            // ),
            // third page
            // ignore: sized_box_for_whitespace
            // Container(
            //   height: heightDevice / 1.3,
            //   child: const Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       SansBold(
            //         text: "내가 뭘할까",
            //         size: 40,
            //       ),
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           AnimatedCard(
            //             imagePath: "assets/profile.png",
            //             text: "App Dev",
            //             fit: BoxFit.contain,
            //             reverse: true,
            //           ),
            //           AnimatedCard(
            //             imagePath: "assets/profile.png",
            //             text: "back",
            //             fit: BoxFit.contain,
            //             reverse: false,
            //           ),
            //           AnimatedCard(
            //             imagePath: "assets/profile.png",
            //             text: "Back Dev",
            //             fit: BoxFit.contain,
            //             reverse: true,
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            // const SizedBox(
            //   height: 20,
            // ),
            // fourth page
            // ignore: sized_box_for_whitespace
            // Container(
            //   height: heightDevice,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       const SansBold(
            //         text: "Contact Me",
            //         size: 40,
            //       ),
            //       const Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //         children: [
            //           Column(
            //             children: [
            //               TextForm(
            //                 heading: "First Name",
            //                 containerWidth: 350.0,
            //                 hintText: "Please enter your name",
            //               ),
            //               SizedBox(
            //                 height: 15.0,
            //               ),
            //               TextForm(
            //                 heading: "Email",
            //                 containerWidth: 350.0,
            //                 hintText: "Please enter your eamil",
            //               ),
            //             ],
            //           ),
            //           Column(
            //             children: [
            //               TextForm(
            //                 heading: "Last Name",
            //                 containerWidth: 350,
            //                 hintText: "Please enter your name",
            //               ),
            //               SizedBox(
            //                 height: 15,
            //               ),
            //               TextForm(
            //                 heading: "Phone Number",
            //                 containerWidth: 350,
            //                 hintText: "Please enter your phone number",
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //       TextForm(
            //         heading: "Message",
            //         containerWidth: widthDevice / 1.5,
            //         hintText: "Please enter your message",
            //         maxLines: 10,
            //       ),
            //       MaterialButton(
            //         elevation: 20.0,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(10.0),
            //         ),
            //         height: 60.0,
            //         minWidth: 200.0,
            //         color: Colors.tealAccent,
            //         child: const SansBold(
            //           text: "Submit",
            //           size: 20.0,
            //         ),
            //         onPressed: () {},
            //       ),
            //     ],
            //   ),
            // ),
            // const SizedBox(
            //   height: 20.0,
            // ),
          ],
        ),
      ),
    );
  }
}
