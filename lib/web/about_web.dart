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
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    var heightDevice = MediaQuery.of(context).size.height;

    return Scaffold(
      // drawer: const DrawerWeb(),
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
      body: ListView(
        children: [
          // first section
          // ignore: sized_box_for_whitespace
          const SizedBox(
            height: 400.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(
                      text: "About Me",
                      size: 40,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Sans(
                      text: "안녕하세요, 저는 Java기반 Spring 웹 개발자입니다.",
                      size: 15,
                    ),
                    Sans(
                      text: "MES 및 제조와 관련된 프로젝트를 주력으로 수행하였습니다.",
                      size: 15,
                    ),
                    Sans(
                      text: "직무와 상관 없이, 새로운 것을 배우는 것을 좋아합니다.",
                      size: 15,
                    ),
                    Sans(
                      text: "이 홈페이지는 Flutter를 공부하며 만들었습니다.",
                      size: 15,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        SkillContainerWeb(text: "Java"),
                        SizedBox(
                          width: 10.0,
                        ),
                        SkillContainerWeb(text: "Spring"),
                        SizedBox(
                          width: 10.0,
                        ),
                        SkillContainerWeb(text: "JSP"),
                        SizedBox(
                          width: 10.0,
                        ),
                        SkillContainerWeb(text: "Javascript"),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        SkillContainerWeb(text: "Oracle"),
                        SizedBox(
                          width: 10.0,
                        ),
                        SkillContainerWeb(text: "Tibero"),
                        SizedBox(
                          width: 10.0,
                        ),
                        SkillContainerWeb(text: "MS-Sql"),
                        SizedBox(
                          width: 10.0,
                        ),
                        SkillContainerWeb(text: "MySql"),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
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
          // education, company
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 200,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(
                      text: "학력",
                      size: 30,
                    ),
                    SizedBox(
                      child: Divider(
                        color: Colors.teal,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: widthDevice / 3,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(
                      text: "회사",
                      size: 30,
                    ),
                    SizedBox(
                      child: Divider(
                        color: Colors.teal,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 200,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 200,
              ),
              SizedBox(
                height: 100,
                width: widthDevice / 3,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Sans(
                      text: "2019.08 : 성결대학교 영어영문/컴퓨터공학(복수전공) 졸업",
                      size: 15,
                    ),
                    Sans(
                      text: "2010.02 : 양명고등학교(인문계) 졸업",
                      size: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                width: widthDevice / 3,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Sans(
                      text: "2021.07 -   재직중  : LS ITC㈜ | Java 웹 시스템 개발 및 운영",
                      size: 15,
                    ),
                    Sans(
                      text: "2020.07 - 2021.07 : 에임시스템㈜ | Java 웹 시스템 개발",
                      size: 15,
                    ),
                    Sans(
                      text: "2019.02 - 2020.06 : ㈜블루비즈랩 | Java 웹 시스템 개발",
                      size: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 200,
              ),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          // certi, projects
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 200,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(
                      text: "자격증",
                      size: 30,
                    ),
                    SizedBox(
                      child: Divider(
                        color: Colors.teal,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: widthDevice / 3,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SansBold(
                      text: "프로젝트",
                      size: 30,
                    ),
                    SizedBox(
                      child: Divider(
                        color: Colors.teal,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 200,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 200,
              ),
              SizedBox(
                height: 500,
                width: widthDevice / 3,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Sans(
                      text: "2023.04 : Solutions Architect Associate, 아마존웹서비스",
                      size: 15,
                    ),
                    Sans(
                      text: "2019.09 : SQLD(SQL개발자), 한국데이터산업진흥원",
                      size: 15,
                    ),
                    Sans(
                      text: "2018.11 : 정보처리기사, 한국산업인력공단",
                      size: 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 500,
                width: widthDevice / 3,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Sans(
                      text: "2024.10 - 2025.02 : 레거시 시스템 간편결재 시스템 연동",
                      size: 15,
                    ),
                    Sans(
                      text: "2024.01 - 2025.12 : TMS(수배송관리) 시스템 운영",
                      size: 15,
                    ),
                    Sans(
                      text: "2023.10 - 2024.06 : FMS(설비관리) 시스템 운영",
                      size: 15,
                    ),
                    Sans(
                      text: "2023.05 - 2023.10 : MES 시스템 운영",
                      size: 15,
                    ),
                    Sans(
                      text:
                          "2021.08 - 2022.04 : 현대차 울산2공장 E-FOREST 지능형 공장 시스템 구축",
                      size: 15,
                    ),
                    Sans(
                      text: "2020.10 - 2021.07 : MES 시스템 구축",
                      size: 15,
                    ),
                    Sans(
                      text: "2020.08 - 2020.09 : MES 시스템 구축",
                      size: 15,
                    ),
                    Sans(
                      text: "2020.01 - 2020.06 : PLM 시스템 운영",
                      size: 15,
                    ),
                    Sans(
                      text: "2019.05 - 2019.11 : PLM 전지(프로세스)통합 프로젝트",
                      size: 15,
                    ),
                    Sans(
                      text: "2016.10 - 2016.12 : 스마트팩토리 시스템 구축",
                      size: 15,
                    ),
                    Sans(
                      text: "2016.02 - 2016.09 : 스마트팩토리(모니터링) 시스템 구축 ",
                      size: 15,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 200,
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
