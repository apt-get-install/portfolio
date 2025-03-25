import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
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
                  "assets/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: const Row(
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  TabsWeb(title: "Home", route: "/"),
                  Spacer(),
                  TabsWeb(title: "Works", route: "/works"),
                  Spacer(),
                  TabsWeb(title: "Blog", route: "/blog"),
                  Spacer(),
                  TabsWeb(title: "About", route: "/about"),
                  Spacer(),
                  // TabsWeb(title: "Contact", route: "/contact"),
                  // Spacer(),
                ],
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30.0,
              ),
              const SansBold(text: "Contact Me", size: 40),
              const SizedBox(
                height: 20.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      TextForm(
                        heading: "First Name",
                        containerWidth: 350.0,
                        hintText: "Please enter your name",
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextForm(
                        heading: "Email",
                        containerWidth: 350.0,
                        hintText: "Please enter your eamil",
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      TextForm(
                        heading: "Last Name",
                        containerWidth: 350,
                        hintText: "Please enter your name",
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextForm(
                        heading: "Phone Number",
                        containerWidth: 350,
                        hintText: "Please enter your phone number",
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextForm(
                heading: "Message",
                containerWidth: widthDevice / 1.5,
                hintText: "Please enter your message",
                maxLines: 10,
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 60.0,
                minWidth: 200.0,
                color: Colors.tealAccent,
                child: const SansBold(text: "Submit", size: 20.0),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
