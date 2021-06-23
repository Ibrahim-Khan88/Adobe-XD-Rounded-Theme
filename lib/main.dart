import 'package:adobe_xd_rounded/model/quality.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color green = Colors.green;
  Color grey = Colors.grey;

  List<Quality> qualityItem = [
    Quality(
        image: "images/logo.png",
        title: "Flutter Module \nDeveloper",
        bgColor: Colors.grey.shade200,
        subTitle1: "LA Tech",
        subTitle2: "Khulna, bangladesh"),
    Quality(
        image: "images/javaLogo.jpg",
        title: "Java Web \nDeveloper",
        bgColor: Colors.pink.shade100,
        subTitle1: "Code Line",
        subTitle2: "Dhaka, bangladesh"),
    Quality(
        image: "images/flutter.png",
        title: "Flutter Module \nDeveloper",
        bgColor: Colors.green.shade100,
        subTitle1: "LA Texh",
        subTitle2: "Khulna, bangladesh"),
    Quality(
        image: "images/flutter.png",
        title: "Flutter Module \nDeveloper",
        bgColor: Colors.grey.shade200,
        subTitle1: "LA Texh",
        subTitle2: "Khulna, bangladesh"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      bottomNavigationBar: buildBottomNavigationBar(),
      body: Container(
          child: Container(
        child: ListView(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.2,
              color: Colors.white,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/me.jpg")),
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 40,
                      left: 20,
                      child: Text("Jobs",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold))),
                  Positioned(
                      top: 65,
                      left: 20,
                      child: Text("DashBoard",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold))),
                  Positioned(
                    top: 105,
                    left: 10,
                    child: LinearPercentIndicator(
                      width: 200.0,
                      lineHeight: 3.0,
                      percent: 0.7,
                      linearStrokeCap: LinearStrokeCap.butt,
                      backgroundColor: Colors.grey,
                      progressColor: Colors.blue,
                    ),
                  ),
                  Positioned(
                      top: 120,
                      left: 20,
                      child: Text("Profile Completeness",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[500]))),
                ],
              ),
            ),
            buildContainerJob(size),
            Container(
              padding: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.05, top: 30),
              child: Text(
                "Baser On your CV",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
              ),
            ),
            QualificationWidget(qualityItem: qualityItem),
            Container(
              padding: EdgeInsets.only(
                  left: size.width * 0.05, right: size.width * 0.05, top: 30),
              child: Text(
                "\Recent Searches",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
              ),
            ),
            RelatedSearchItem(size: size)
          ],
        ),
      )),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 0,
      currentIndex: 0, // this will be set when a new tab is tapped
      items: [
        BottomNavigationBarItem(icon: new Icon(Icons.home), title: Text('')),
        BottomNavigationBarItem(
            icon: new Icon(
              Icons.person,
              color: Colors.blue,
            ),
            title: Text('')),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.blue), title: Text(''))
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: Icon(Icons.menu, color: Colors.black),
      backgroundColor: Colors.white,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(Icons.notifications, color: Colors.black),
        )
      ],
    );
  }

  Container buildContainerJob(Size size) {
    return Container(
      height: 110,
      width: size.width,
      margin:
          EdgeInsets.only(right: size.width * 0.05, left: size.width * 0.05),
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(13))),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 110,
              width: size.width * 0.28,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "27",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Text(
                      "Matching",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Text(
                    "Jobs",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              width: 1,
              height: 90,
              color: Colors.white,
            ),
            Container(
              height: 120,
              width: size.width * 0.28,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "13",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Text(
                      "Employeer",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Text(
                    "Actions",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              width: 1,
              height: 90,
              color: Colors.white,
            ),
            Container(
              height: 120,
              width: size.width * 0.28,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      "21",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Text(
                      "Search",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Text(
                    "Appreances",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RelatedSearchItem extends StatelessWidget {
  const RelatedSearchItem({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Container(
                  height: 25,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.pink[100]),
                  child: Text("Flutter, Dhaka"),
                ),
                Container(
                  height: 25,
                  margin: EdgeInsets.only(right: 8),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[100]),
                  child: Text("Java website developer, Dhaka"),
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                height: 25,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                margin: EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.purple[200]),
                child: Text("Javascript Developer, Dhaka"),
              ),
              Container(
                height: 25,
                margin: EdgeInsets.only(right: 8),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[100]),
                child: Text("php coder, London"),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class QualificationWidget extends StatelessWidget {
  const QualificationWidget({
    Key? key,
    required this.qualityItem,
  }) : super(key: key);

  final List<Quality> qualityItem;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 145,
        margin: EdgeInsets.only(top: 15),
        child: ListView.builder(
            padding: EdgeInsets.only(left: 16, right: 8),
            scrollDirection: Axis.horizontal,
            itemCount: qualityItem.length,
            itemBuilder: (context, index) {
              return Container(
                height: 145,
                width: 155,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: qualityItem[index].bgColor,
                    boxShadow: []),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 60,
                      //child: Image.asset('images/correct.jpg'),
                      child: Icon(Icons.check_circle, color: Colors.blue),
                      height: 20,
                      width: 20,
                    ),
                    Positioned(
                        left: 12,
                        top: 30,
                        child: Text(qualityItem[index].title,
                            style: GoogleFonts.nunito(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.black))),
                    Positioned(
                        left: 12,
                        top: 90,
                        child: Text(qualityItem[index].subTitle1,
                            style: GoogleFonts.nunito(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[700]))),
                    Positioned(
                        left: 12,
                        top: 105,
                        child: Text(qualityItem[index].subTitle2,
                            style: GoogleFonts.nunito(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[700]))),
                  ],
                ),
              );
            }));
  }
}
