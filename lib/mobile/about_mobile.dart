import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
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
                    const Sans(
                      text: "안녕하세요, 저는 Java기반 Spring 웹 개발자입니다.",
                      size: 15,
                    ),
                    const Sans(
                      text: "MES 및 제조와 관련된 프로젝트를 주력으로 수행하였습니다.",
                      size: 15,
                    ),
                    const Sans(
                      text: "직무와 상관 없이, 새로운 것을 배우는 것을 좋아합니다.",
                      size: 15,
                    ),
                    const Sans(
                      text: "이 홈페이지는 Flutter를 공부하며 만들었습니다.",
                      size: 15,
                    ),
                    const Sans(
                      text: "모바일과 PC웹 환경에 반응형으로 구현하였습니다.",
                      size: 15,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      spacing: 7.0,
                      runSpacing: 7.0,
                      children: [
                        tealContainer("Java"),
                        tealContainer("Spring"),
                        tealContainer("JSP"),
                        tealContainer("Javascript"),
                        tealContainer("Oracle"),
                        tealContainer("Tibero"),
                        tealContainer("MS-Sql"),
                        tealContainer("MySql"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),

              // web dev, second section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: widthDevice / 1.2,
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
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: widthDevice / 1.2,
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
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              // certi, projects
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: widthDevice / 1.2,
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
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: widthDevice / 1.2,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Sans(
                          text:
                              "2023.04 : Solutions Architect Associate, 아마존웹서비스",
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
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              // certi, projects
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: widthDevice / 1.2,
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
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: widthDevice / 1.2,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Sans(
                          text:
                              "2021.07 -   재직중  : LS ITC㈜ | Java 웹 시스템 개발 및 운영",
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
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              // certi, projects
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: widthDevice / 1.2,
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
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: widthDevice / 1.2,
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
                              "2021.08 - 2022.04 : 현대차 E-FOREST 지능형 공장 시스템 구축",
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
                          text: "2016.02 - 2016.09 : 스마트팩토리(모니터링) 시스템 구축",
                          size: 15,
                        ),
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
        ),
      ),
    );
  }
}
