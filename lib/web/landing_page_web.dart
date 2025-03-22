import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          size: 25.0,
          color: Colors.black,
        ),
        title: const Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabsWeb(title: "Home"),
            Spacer(),
            TabsWeb(title: "Works"),
            Spacer(),
            TabsWeb(title: "Blog"),
            Spacer(),
            TabsWeb(title: "About"),
            Spacer(),
            TabsWeb(title: "Contact"),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          // firtst page
          // ignore: sized_box_for_whitespace
          Container(
            height: heightDevice - 56,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: const SansBold(
                        text: "안녕하세요, 저는",
                        size: 15,
                      ),
                    ),
                    // const SizedBox(
                    //   height: 15.0,
                    // ),
                    const Sans(
                      text: "최 수호",
                      size: 55,
                    ),
                    const Sans(
                      text: "웹 개발자 입니다.",
                      size: 15,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.email,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans(
                          text: "ekr7777777@gmail.com",
                          size: 15,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.call,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans(
                          text: "010-5094-4855",
                          size: 15,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.location_pin,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Sans(
                          text: "Anyang, South Korea",
                          size: 15,
                        ),
                      ],
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 147.0,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundImage: AssetImage("assets/profile.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // second page
          // ignore: sized_box_for_whitespace
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/profile.png",
                  width: 500.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SansBold(
                      text: "About Me",
                      size: 40,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Sans(
                      text: "제조 개발자 입니다. 블라블라 ",
                      size: 15,
                    ),
                    const Sans(
                      text: "제조 개발자 입니다. 블라블라 ",
                      size: 15,
                    ),
                    const Sans(
                      text: "제조 개발자 입니다. 블라블라 ",
                      size: 15,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: const EdgeInsets.all(7.0),
                          child: const Sans(
                            text: "Spring Framework",
                            size: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: const EdgeInsets.all(7.0),
                          child: const Sans(
                            text: "Java",
                            size: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: const EdgeInsets.all(7.0),
                          child: const Sans(
                            text: "Vue.js",
                            size: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.tealAccent,
                              style: BorderStyle.solid,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: const EdgeInsets.all(7.0),
                          child: const Sans(
                            text: "Oracle",
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // third page
          // ignore: sized_box_for_whitespace
          Container(
            height: heightDevice / 1.3,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SansBold(
                  text: "내가 뭘할까",
                  size: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedCardWeb(
                      imagePath: "assets/profile.png",
                      text: "App Dev",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                    AnimatedCardWeb(
                      imagePath: "assets/profile.png",
                      text: "back",
                      fit: BoxFit.contain,
                      reverse: false,
                    ),
                    AnimatedCardWeb(
                      imagePath: "assets/profile.png",
                      text: "Back Dev",
                      fit: BoxFit.contain,
                      reverse: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // fourth page
          // ignore: sized_box_for_whitespace
          Container(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SansBold(
                  text: "Contact Me",
                  size: 40,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        TextForm(
                          heading: "First Name",
                          width: 350.0,
                          hintText: "Please enter your name",
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        TextForm(
                          heading: "Email",
                          width: 350.0,
                          hintText: "Please enter your eamil",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextForm(
                          heading: "Last Name",
                          width: 350,
                          hintText: "Please enter your name",
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextForm(
                          heading: "Phone Number",
                          width: 350,
                          hintText: "Please enter your phone number",
                        ),
                      ],
                    ),
                  ],
                ),
                TextForm(
                  heading: "Message",
                  width: widthDevice / 1.5,
                  hintText: "Please enter your message",
                  maxLines: 10,
                ),
                MaterialButton(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 60.0,
                  minWidth: 200.0,
                  color: Colors.tealAccent,
                  child: const SansBold(
                    text: "Submit",
                    size: 20.0,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
