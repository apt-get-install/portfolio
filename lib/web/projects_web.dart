import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/components.dart';
import 'package:timelines/timelines.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsWeb extends StatefulWidget {
  const ProjectsWeb({super.key});

  @override
  State<ProjectsWeb> createState() => _ProjectsWebState();
}

class _ProjectsWebState extends State<ProjectsWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      // drawer: const DrawerWeb(),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500.0,
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(
                size: 25.0,
                color: Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/works.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
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
          ];
        },
        body: ListView(
          children: [
            const Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                SansBold(
                  text: "History",
                  size: 40.0,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     const AnimatedCard(
                //       imagePath: "assets/portfolio_screenshot.png",
                //       height: 200,
                //       width: 300,
                //     ),
                //     SizedBox(
                //       width: widthDevice / 3,
                //       child: const Column(
                //         children: [
                //           SansBold(text: "Portfolio", size: 30.0),
                //           SizedBox(
                //             height: 15.0,
                //           ),
                //           Sans(
                //             text: "블라블라 했어요 그런 프로젝트에요",
                //             size: 15.0,
                //           ),
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Column(
              children: [
                const OutlinedDotIndicator(
                  color: Colors.teal,
                  size: 20,
                  child: Icon(
                    Icons.check,
                    size: 15,
                  ),
                ),
                FixedTimeline.tileBuilder(
                  theme: TimelineThemeData(
                    color: Colors.teal,
                    indicatorTheme: const IndicatorThemeData(
                      size: 20,
                    ),
                  ),
                  builder: TimelineTileBuilder.connectedFromStyle(
                    contentsAlign: ContentsAlign.basic,
                    oppositeContentsBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('opposite\ncontents'),
                    ),
                    contentsBuilder: (context, index) => const Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Contents'),
                      ),
                    ),
                    connectorStyleBuilder: (context, index) =>
                        ConnectorStyle.solidLine,
                    indicatorStyleBuilder: (context, index) =>
                        IndicatorStyle.outlined,
                    itemCount: 1,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                  child: SolidLineConnector(
                    color: Colors.teal,
                  ),
                ),
                FixedTimeline.tileBuilder(
                  theme: TimelineThemeData(
                    color: Colors.teal,
                  ),
                  builder: TimelineTileBuilder.connectedFromStyle(
                    contentsAlign: ContentsAlign.basic,
                    oppositeContentsBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('opposite\ncontents'),
                    ),
                    contentsBuilder: (context, index) => const Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Contents'),
                      ),
                    ),
                    connectorStyleBuilder: (context, index) =>
                        ConnectorStyle.solidLine,
                    indicatorStyleBuilder: (context, index) =>
                        IndicatorStyle.dot,
                    itemCount: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
