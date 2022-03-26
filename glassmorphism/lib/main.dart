import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SafeArea(
            child: GlassmorphicContainer(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.9,
              borderRadius: 0,
              blur: 7,
              alignment: Alignment.bottomCenter,
              border: 0,
              linearGradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.grey,
                    Colors.white,
                  ],
                  stops: [
                    0.3,
                    1,
                  ]),
              borderGradient: const LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    Colors.black,
                  ],
                  stops: [
                    0.06,
                    0.95,
                    1
                  ]),
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            glassCard(context),
                            GlassmorphicContainer(
                              width:
                              MediaQuery.of(context).size.width * 0.9 - 20,
                              height:
                              MediaQuery.of(context).size.height * 0.4 - 20,
                              borderRadius: 35,
                              margin: const EdgeInsets.all(10),
                              blur: 10,
                              alignment: Alignment.bottomCenter,
                              border: 2,
                              linearGradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                   Colors.red.shade400,
                                   Colors.grey.shade600,
                                  ],
                                  stops: const [
                                    0.3,
                                    1,
                                  ]),
                              borderGradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                  Colors.white.withAlpha(01),
                                    Colors.white.withAlpha(01),
                                    Colors.white.withAlpha(01),
                                  ],
                                  stops: const [
                                    0.2,
                                    0.9,
                                    1,
                                  ]),
                              child: const Body2(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget glassCard(var context) {
  return GlassmorphicFlexContainer(
      flex: 2,
      borderRadius: 35,
      padding: const EdgeInsets.all(25),
      blur: 14,
      alignment: Alignment.bottomCenter,
      border: 2,
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color(0x0ff0ffff).withOpacity(0.2),
          const Color(0x0ff0ffff).withOpacity(0.2),
        ],
      ),
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          const Color(0x0ff0ffff).withOpacity(1),
          const Color(0x0fffffff),
          const Color(0x0ff0ffff).withOpacity(1),
        ],
      ),
      child: Column(
        key: UniqueKey(),
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset("assets/vw logo.png")),

                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                  child: Text(
                    "Glassmorphism is a term used to describe UI design that emphasises light or dark objects, "
                        "placed on top of colourful backgrounds. A background-blur is placed on the objects which"
                        " allows the background to shine through – giving it the impression of frosted glass.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                    "Vitruvian Webstar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20.0 ,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Build your apps with classic UI designs that make your platform 'pop'.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

              ],
            ),
          ),

        ],
      ));
}

class Body2 extends StatelessWidget {
  const Body2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Sign In',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Text(
            'This is an example of a glassmorphic container.',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white54, width: 0.5),
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Center(
              child: Text(
                'Your Email',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white54, width: 0.5),
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Center(
              child: Text(
                'Password',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
         Align(
           alignment: Alignment.bottomRight,
           child: ClipOval(
             child: Container(
               height: 50,
               width: 50,
               color: Colors.white,
               child: const Icon(
                 Icons.arrow_forward,
                 color: Colors.black,
               ),
             ),
           ),
         ),
        ],
      ),
    );
  }
}
