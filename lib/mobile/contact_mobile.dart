import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
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
                  'assets/contact_image.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Wrap(
            runSpacing: 20.0,
            spacing: 20.0,
            alignment: WrapAlignment.center,
            children: [
              const SansBold(text: "Contct Me", size: 35),
              TextForm(
                heading: "First Name",
                containerWidth: widthDevice / 1.4,
                hintText: "Please type your first name",
              ),
              TextForm(
                heading: "Last Name",
                containerWidth: widthDevice / 1.4,
                hintText: "Please type your last name",
              ),
              TextForm(
                heading: "Email",
                containerWidth: widthDevice / 1.4,
                hintText: "Please type your Email",
              ),
              TextForm(
                heading: "Phone Number",
                containerWidth: widthDevice / 1.4,
                hintText: "Please type your Phone Number",
              ),
              TextForm(
                heading: "Message",
                containerWidth: widthDevice / 1.4,
                hintText: "Message",
                maxLines: 10,
              ),
              MaterialButton(
                onPressed: () {},
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60.0,
                minWidth: widthDevice / 2.2,
                color: Colors.tealAccent,
                child: const SansBold(text: "Submit", size: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
