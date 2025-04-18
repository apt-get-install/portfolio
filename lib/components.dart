import 'package:firebase_cloud_firestore/firebase_cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/web.dart';
import 'package:timelines/timelines.dart';
import 'package:url_launcher/url_launcher.dart';

class TabsWeb extends StatefulWidget {
  const TabsWeb({
    super.key,
    required this.title,
    required this.route,
  });

  final String title;
  final String route;

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isSelected = true;
          });
        },
        onExit: (_) {
          setState(() {
            isSelected = false;
          });
        },
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 100),
          style: isSelected
              ? GoogleFonts.roboto(
                  shadows: [
                    const Shadow(
                      color: Colors.black,
                      offset: Offset(0, -8),
                    ),
                  ],
                  fontSize: 25.0,
                  color: Colors.transparent,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.tealAccent,
                )
              : GoogleFonts.roboto(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
          child: Text(
            widget.title,
          ),
        ),
      ),
    );
  }
}

class TabsMobile extends StatefulWidget {
  const TabsMobile({
    super.key,
    required this.text,
    required this.route,
  });

  final text;
  final route;

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      height: 50.0,
      minWidth: 200.0,
      color: Colors.black,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
    );
  }
}

class Sans extends StatelessWidget {
  const Sans({
    super.key,
    required this.text,
    required this.size,
  });

  final text;
  final size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  const SansBold({
    super.key,
    required this.text,
    required this.size,
  });

  final text;
  final size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class AbleCustom extends StatelessWidget {
  const AbleCustom({
    super.key,
    required this.text,
    required this.size,
    this.color,
    this.fontWeight,
  });

  final text;
  final size;
  final color;
  final fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.abel(
        fontSize: size,
        color: color ?? Colors.black,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}

class TextForm extends StatelessWidget {
  const TextForm({
    super.key,
    required this.heading,
    required this.containerWidth,
    required this.hintText,
    this.maxLines,
    this.controller,
    this.validator,
  });

  final heading;
  final containerWidth;
  final hintText;
  final maxLines;
  final controller;
  final validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(
          text: heading,
          size: 16,
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: containerWidth,
          child: TextFormField(
            // inputFormatters: [
            //   LengthLimitingTextInputFormatter(10),
            //   FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]')),
            // ],
            validator: validator,
            controller: controller,
            maxLines: maxLines,
            decoration: InputDecoration(
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.teal,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.tealAccent,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(
                fontSize: 14.0,
              ),
            ),
            // validator: (text) {
            //   if (RegExp("\\bsooho\\b", caseSensitive: false)
            //       .hasMatch(text.toString())) {
            //     return "Match!";
            //   }
            //   return null;
            // },
            // autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
      ],
    );
  }
}

class AnimatedCard extends StatefulWidget {
  const AnimatedCard({
    super.key,
    required this.imagePath,
    this.text,
    this.fit,
    this.reverse,
    this.height,
    this.width,
  });

  final imagePath;
  final text;
  final fit;
  final reverse;
  final height;
  final width;

  @override
  State<AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<AnimatedCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween(
    // begin: widget.reverse == true ? const Offset(0, 0.08) : Offset.zero,
    // end: widget.reverse == true ? Offset.zero : const Offset(0, 0.08),
    begin: Offset.zero,
    end: Offset.zero,
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(
            color: Colors.tealAccent,
          ),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.imagePath,
                fit: widget.fit,
                width: widget.width ?? 200,
                height: widget.height ?? 200,
              ),
              const SizedBox(
                height: 10.0,
              ),
              widget.text == null
                  ? const SizedBox()
                  : SansBold(text: widget.text, size: 15),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectInfo extends StatelessWidget {
  const ProjectInfo({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.fontSize,
  });

  final text;
  final width;
  final height;
  final fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(
            color: Colors.tealAccent,
          ),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: width,
                height: height,
                child: FittedBox(
                  alignment: Alignment.topLeft,
                  child: SansBold(
                    text: text,
                    size: fontSize,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(bottom: 20.0),
            child: CircleAvatar(
              radius: 57.0,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 55.0,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     shape: BoxShape.circle,
            //     border: Border.all(
            //       color: Colors.black,
            //       width: 2,
            //     ),
            //   ),
            //   child: Image.asset(
            //     'assets/profile.png',
            //     filterQuality: FilterQuality.high,
            //   ),
            // ),
          ),
          SizedBox(height: 30.0),
          TabsMobile(text: "Home", route: "/"),
          SizedBox(height: 20.0),
          TabsMobile(text: "About", route: "/about"),
          SizedBox(height: 20.0),
          TabsMobile(text: "Projects", route: "/projects"),
          SizedBox(height: 20.0),
          // const SizedBox(height: 20.0),
          // const TabsMobile(text: "Contact", route: "/contact"),
          SizedBox(height: 40.0),
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       IconButton(
          //         onPressed: () async {
          //           await launchUrl(Uri.parse("https://naver.com"));
          //         },
          //         icon: SvgPicture.asset(
          //           "assets/instagram.svg",
          //           color: Colors.black,
          //           width: 35.0,
          //         ),
          //       ),
          //       IconButton(
          //         onPressed: () async {
          //           await launchUrl(Uri.parse("https://naver.com"));
          //         },
          //         icon: SvgPicture.asset(
          //           "assets/twitter.svg",
          //           color: Colors.black,
          //           width: 35.0,
          //         ),
          //       ),
          //       IconButton(
          //         onPressed: () async {
          //           await launchUrl(
          //             Uri.parse("https://github.com/apt-get-install"),
          //           );
          //         },
          //         icon: SvgPicture.asset(
          //           "assets/github.svg",
          //           color: Colors.black,
          //           width: 35.0,
          //         ),
          //       ),
          //     ],
          //   ),
        ],
      ),
    );
  }
}

class DrawerWeb extends StatelessWidget {
  const DrawerWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 72.0,
            backgroundColor: Colors.tealAccent,
            child: CircleAvatar(
              radius: 70.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/profile.png'),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const SansBold(text: "최수호", size: 30.0),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () async {
                  await launchUrl(Uri.parse("https://naver.com"));
                },
                icon: SvgPicture.asset(
                  "assets/instagram.svg",
                  color: Colors.black,
                  width: 35.0,
                ),
              ),
              IconButton(
                onPressed: () async {
                  await launchUrl(Uri.parse("https://naver.com"));
                },
                icon: SvgPicture.asset(
                  "assets/twitter.svg",
                  color: Colors.black,
                  width: 35.0,
                ),
              ),
              IconButton(
                onPressed: () async {
                  await launchUrl(
                    Uri.parse("https://github.com/apt-get-install"),
                  );
                },
                icon: SvgPicture.asset(
                  "assets/github.svg",
                  color: Colors.black,
                  width: 35.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SkillContainerWeb extends StatelessWidget {
  const SkillContainerWeb({
    super.key,
    this.text,
  });

  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          style: BorderStyle.solid,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: const EdgeInsets.all(7.0),
      child: Sans(
        text: text,
        size: 15,
      ),
    );
  }
}

class AddDataFirestore {
  var logger = Logger();
  CollectionReference response =
      FirebaseFirestore.instance.collection('messages');

  Future<void> addResponse(
    final firstName,
    final lastName,
    final email,
    final phoneNumber,
    final message,
  ) async {
    return response
        .add({
          'firstName': firstName,
          'lastName': lastName,
          'email': email,
          'phoneNumber': phoneNumber,
          'message': message,
        })
        .then((value) => logger.d("Success"))
        .catchError((error) => logger.d(error));
  }
}

Future dialogError(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      title: const SansBold(text: "Success", size: 20.0),
    ),
  );
}

class ProjectInfoTimeLine extends StatelessWidget {
  const ProjectInfoTimeLine({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    this.year,
    required this.fontSize,
  });

  final width;
  final height;
  final text;
  final year;
  final fontSize;

  @override
  Widget build(BuildContext context) {
    return FixedTimeline.tileBuilder(
      theme: TimelineThemeData(
        color: Colors.teal,
        indicatorTheme: IndicatorThemeData(
          size: year == null ? 10 : 15,
        ),
      ),
      builder: TimelineTileBuilder.connectedFromStyle(
        contentsAlign: ContentsAlign.basic,
        contentsBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ProjectInfo(
            text: text,
            width: width,
            height: height,
            fontSize: fontSize,
          ),
        ),
        oppositeContentsBuilder: (context, index) => Card(
          child: Padding(
            padding: year == null
                ? const EdgeInsets.all(0.0)
                : const EdgeInsets.all(10.0),
            child: SansBold(
              text: year ?? "",
              size: 15,
            ),
          ),
        ),
        connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
        indicatorStyleBuilder: (context, index) => IndicatorStyle.outlined,
        itemCount: 1,
      ),
    );
  }
}
