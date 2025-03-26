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
            height: 500.0,
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
                        SizedBox(
                          width: 10.0,
                        ),
                        SkillContainerWeb(text: "Vue.js"),
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
          //Third row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: widthDevice / 2.5,
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
                width: widthDevice / 2.5,
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
                width: widthDevice / 3,
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('이름')),
                    DataColumn(
                      label: Text('출생년도'),
                      numeric: true,
                    ),
                    DataColumn(label: Text('성별')),
                    DataColumn(label: Text('최종학력')),
                    DataColumn(label: Text('고향')),
                  ],
                  rows: const [
                    DataRow(
                      cells: [
                        DataCell(Text('철수')),
                        DataCell(Text('1977')),
                        DataCell(Text('남')),
                        DataCell(Text('학사')),
                        DataCell(Text('부산')),
                      ],
                    ),
                    DataRow(
                      cells: [
                        DataCell(Text('영희')),
                        DataCell(Text('1981')),
                        DataCell(Text('여')),
                        DataCell(Text('석사')),
                        DataCell(Text('서울')),
                      ],
                    ),
                  ],
                ),
                // const Column(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Sans(
                //       text: "2019.08 : 성결대학교 영어영문학과/컴퓨터공학과(복수전공) 졸업",
                //       size: 15,
                //     ),
                //     Sans(
                //       text: "2010.02 : 양명고등학교(인문계) 졸업",
                //       size: 15,
                //     ),
                //   ],
                // ),
              ),
              SizedBox(
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
              const SizedBox(
                height: 40,
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
