import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final String title;

  const TabsWeb({super.key, required this.title});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  var isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
                fontSize: 23.0,
                color: Colors.black,
              ),
        child: Text(
          widget.title,
        ),
      ),
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

class TextForm extends StatelessWidget {
  const TextForm({
    super.key,
    required this.heading,
    required this.width,
    required this.hintText,
    this.maxLines,
  });

  final heading;
  final width;
  final hintText;
  final maxLines;

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
          width: width,
          child: TextFormField(
            // inputFormatters: [
            //   LengthLimitingTextInputFormatter(10),
            //   FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]')),
            // ],
            maxLines: maxLines,
            decoration: InputDecoration(
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
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
            validator: (text) {
              if (RegExp("\\bsooho\\b", caseSensitive: false)
                  .hasMatch(text.toString())) {
                return "Match!";
              }
              return null;
            },
            // autovalidateMode: AutovalidateMode.onUserInteraction,
          ),
        ),
      ],
    );
  }
}

class AnimatedCardWeb extends StatefulWidget {
  const AnimatedCardWeb({
    super.key,
    required this.imagePath,
    required this.text,
    required this.fit,
    required this.reverse,
  });

  final imagePath;
  final text;
  final fit;
  final reverse;

  @override
  State<AnimatedCardWeb> createState() => _AnimatedCardWebState();
}

class _AnimatedCardWebState extends State<AnimatedCardWeb>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween(
    begin: widget.reverse == true ? const Offset(0, 0.08) : Offset.zero,
    end: widget.reverse == true ? Offset.zero : const Offset(0, 0.08),
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
        elevation: 30,
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
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 10.0,
              ),
              const SansBold(text: "MES 잘해요", size: 15),
            ],
          ),
        ),
      ),
    );
  }
}
