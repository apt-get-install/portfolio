import 'package:flutter/material.dart';
import 'package:logger/web.dart';
import 'package:portfolio/components.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Logger logger = Logger();

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextForm(
                          heading: "First Name",
                          containerWidth: 350.0,
                          hintText: "Please enter your name",
                          controller: _firstNameController,
                          validator: (text) {
                            if (text.toString().isEmpty) {
                              return "Please enter your name";
                            }
                          },
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        TextForm(
                          heading: "Email",
                          containerWidth: 350.0,
                          hintText: "Please enter your eamil",
                          controller: _emailController,
                          validator: (text) {
                            if (text.toString().isEmpty) {
                              return "Please enter your email";
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      TextForm(
                        heading: "Last Name",
                        containerWidth: 350,
                        hintText: "Please enter your name",
                        controller: _lastNameController,
                        validator: (text) {
                          if (text.toString().isEmpty) {
                            return "Please enter your name";
                          }
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextForm(
                        heading: "Phone Number",
                        containerWidth: 350,
                        hintText: "Please enter your phone number",
                        controller: _phoneController,
                        validator: (text) {
                          if (text.toString().isEmpty) {
                            return "Please enter your phone number";
                          }
                        },
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
                controller: _messageController,
                validator: (text) {
                  if (text.toString().isEmpty) {
                    return "Please enter your message";
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () async {
                  // logger.d("First Name: ${_firstNameController.text}");
                  // logger.d("Last Name: ${_lastNameController.text}");
                  // logger.d("Email: ${_emailController.text}");
                  // logger.d("Phone: ${_phoneController.text}");
                  // logger.d("Message: ${_messageController.text}");
                  // final addData = AddDataFirestore();
                  // if (formKey.currentState!.validate()) {
                  //   await addData.addResponse(
                  //     _firstNameController.text,
                  //     _lastNameController.text,
                  //     _emailController.text,
                  //     _phoneController.text,
                  //     _messageController.text,
                  //   );
                  //   formKey.currentState!.reset();
                  //   dialogError(context);
                  // }
                },
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
