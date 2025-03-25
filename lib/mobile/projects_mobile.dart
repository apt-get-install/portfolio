import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({super.key});

  @override
  State<ProjectsMobile> createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
  @override
  Widget build(BuildContext context) {
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
                    'assets/works.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: ListView(
            children: const [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  SansBold(text: "Works", size: 35.0),
                  SizedBox(
                    height: 20.0,
                  ),
                  AnimatedCard(
                    imagePath: "assets/portfolio_screenshot.png",
                    fit: BoxFit.contain,
                    height: 150.0,
                    width: 300.0,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  SansBold(text: "Portfilio", size: 20.0),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans(text: "블라블라 했어요 그런 프로젝트에요", size: 15.0),
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
