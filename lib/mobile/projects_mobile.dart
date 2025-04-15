import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';
import 'package:timelines/timelines.dart';

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({super.key});

  @override
  State<ProjectsMobile> createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    var projectFontSize = 10;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        endDrawer: const DrawerMobile(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: const IconThemeData(
                  size: 35.0,
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/projects.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: ListView(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  SansBold(text: "Projects", size: 35.0),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
              Column(
                children: [
                  const OutlinedDotIndicator(
                    color: Colors.teal,
                    size: 30,
                    child: Icon(
                      Icons.keyboard_arrow_up_rounded,
                      size: 20,
                    ),
                  ),
                  ProjectInfoTimeLine(
                    year: "2025",
                    width: widthDevice / 1.5,
                    height: 60,
                    text:
                        "[TMS] 수배송관리 시스템 운영\nLS전선/자재납품 적재 및 배차관리\n기간: 2024.01~2025.02\n[Java, Spring, MS-SQL, Windows, SVN]",
                    fontSize: projectFontSize,
                  ),
                  ProjectInfoTimeLine(
                    year: "2024",
                    width: widthDevice / 1.5,
                    height: 60.0,
                    text:
                        "[FMS] 설비관리 시스템 운영\nLS전선/설비관리(예지보전)\n기간: 2023.10~2024.06\n[Java, Spring, MS-SQL, Windows, SVN]",
                    fontSize: projectFontSize,
                  ),
                  ProjectInfoTimeLine(
                    year: "2023",
                    width: widthDevice / 1.5,
                    height: 60.0,
                    text:
                        "[MES] ELE-MES 운영\nLS엠트론/부품(트랙터)\n기간: 2023.05~2023.10\n[C#, MS-SQL, OPC-UA, Windows, SVN]",
                    fontSize: projectFontSize,
                  ),
                  ProjectInfoTimeLine(
                    year: "2022",
                    width: widthDevice / 1.5,
                    height: 60.0,
                    text:
                        "[FEMS] Front-End 개발 지원\n한국전자통신연구원/에너지 모니터링\n기간: 2022.09~2022.12\n[Vue.js, Java, SpringBoot, Javascript, Git]",
                    fontSize: projectFontSize,
                  ),
                  ProjectInfoTimeLine(
                    year: "2021",
                    width: widthDevice / 1.5,
                    height: 60.0,
                    text:
                        "[MES] E-FOREST 지능형 공장 시스템 구축\n현대자동차/자동차 제조\n기간: 2021.08~2022.04\n[Java, Spring, Nexacro, Tibero, Linux, SVN]",
                    fontSize: projectFontSize,
                  ),
                  ProjectInfoTimeLine(
                    width: widthDevice / 1.5,
                    height: 60.0,
                    text:
                        "[MES] MES 시스템 구축\n코템/LCD 현상액 제조\n기간: 2020.10~2021.07\n[Java, SpringBoot, Oracle, Linux, SVN]",
                    fontSize: projectFontSize,
                  ),
                  ProjectInfoTimeLine(
                    width: widthDevice / 1.5,
                    height: 60.0,
                    year: "2020",
                    text:
                        "[MES] MES 시스템 구축\n오이솔루션/5G 통신장비 제조\n기간: 2020.08~2020.09\n[Java, SpringBoot, MS-SQL, Oracle, Linux, SVN]",
                    fontSize: projectFontSize,
                  ),
                  ProjectInfoTimeLine(
                    width: widthDevice / 1.5,
                    height: 60.0,
                    text:
                        "[PLM] PLM 시스템 운영\nLock&Lock/제품 수명주기 관리\n기간: 2020.01~2020.06\n[Java, Spring, Oracle, Linux, SVN]",
                    fontSize: projectFontSize,
                  ),
                  ProjectInfoTimeLine(
                    width: widthDevice / 1.5,
                    height: 60.0,
                    year: "2019",
                    text:
                        "[PLM] 전지(프로세스)통합 프로젝트\n삼성SDI/배터리 제조\n기간: 2019.05~2019.11\n[Java, Spring, Oracle, Linux, SVN]",
                    fontSize: projectFontSize,
                  ),
                  ProjectInfoTimeLine(
                    width: widthDevice / 1.5,
                    height: 60.0,
                    year: "2016",
                    text:
                        "[스마트팩토리] 스마트팩토리 시스템 구축\nYANLONG(중국)/자동차 범퍼 생산\n기간: 2016.10.01~2016.12.30\n[Java, C#, MS-SQL, Windows, SVN]",
                    fontSize: projectFontSize,
                  ),
                  ProjectInfoTimeLine(
                    width: widthDevice / 1.5,
                    height: 60.0,
                    text:
                        "[MES] 절단장비 모니터링 시스템 구축\n현대삼호중공업/선박 생산\n기간: 2016.02.01~2016.09.23\n[Java, C#, MS-SQL, Windows, SVN]",
                    fontSize: projectFontSize,
                  ),
                  const OutlinedDotIndicator(
                    color: Colors.teal,
                    size: 30,
                    child: Icon(
                      Icons.keyboard_arrow_up_rounded,
                      size: 20,
                    ),
                  ),
                  ProjectInfoTimeLine(
                    width: widthDevice / 1.5,
                    height: 60.0,
                    text: "계속 추가 작업중인 페이지 입니다.",
                    fontSize: projectFontSize,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
