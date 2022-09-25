import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _islogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/im_party.jpeg'))),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.6),
            Colors.black.withOpacity(.4),
            Colors.black.withOpacity(.2),
            Colors.black.withOpacity(.1),
          ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: const [
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Find the best parties ear you',
                    style: TextStyle(color: Colors.yellow, fontSize: 40),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Let us find you tutorial for your interest',
                    style: TextStyle(color: Colors.green, fontSize: 30),
                  ),
                ],
              ),
              _islogin
                  ? Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.yellow.shade900,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Start',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    )
                  : Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.red.shade900,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                'Google',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade900,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                'Facebook',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}
