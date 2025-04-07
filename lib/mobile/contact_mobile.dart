import 'package:flutter/material.dart';
import 'package:logger/web.dart';
import 'package:portfolio/components.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
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
          child: Form(
            key: formKey,
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
                  controller: _firstNameController,
                  validator: (text) {
                    if (text.toString().isEmpty) {
                      return "Please enter your name";
                    }
                  },
                ),
                TextForm(
                  heading: "Last Name",
                  containerWidth: widthDevice / 1.4,
                  hintText: "Please type your last name",
                  controller: _lastNameController,
                  validator: (text) {
                    if (text.toString().isEmpty) {
                      return "Please enter your name";
                    }
                  },
                ),
                TextForm(
                  heading: "Email",
                  containerWidth: widthDevice / 1.4,
                  hintText: "Please type your Email",
                  controller: _emailController,
                  validator: (text) {
                    if (text.toString().isEmpty) {
                      return "Please enter your mail";
                    }
                  },
                ),
                TextForm(
                  heading: "Phone Number",
                  containerWidth: widthDevice / 1.4,
                  hintText: "Please type your Phone Number",
                  controller: _phoneController,
                  validator: (text) {
                    if (text.toString().isEmpty) {
                      return "Please enter your phone";
                    }
                  },
                ),
                TextForm(
                  heading: "Message",
                  containerWidth: widthDevice / 1.4,
                  hintText: "Message",
                  maxLines: 10,
                  controller: _messageController,
                  validator: (text) {
                    if (text.toString().isEmpty) {
                      return "Please enter your message";
                    }
                  },
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
      ),
    );
  }
}
