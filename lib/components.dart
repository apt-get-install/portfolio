import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final String title;

  const TabsWeb({
    super.key,
    required this.title,
  });

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.title,
      style: GoogleFonts.oswald(
        color: Colors.black,
        fontSize: 23.0,
      ),
    );
  }
}