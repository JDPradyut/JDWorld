import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:jdworld/screens/aboutMe.dart';
import 'package:jdworld/screens/projects.dart';
import 'package:jdworld/screens/servicess.dart';
import 'package:jdworld/widgets/responsive.dart';
import 'package:lottie/lottie.dart';
import 'package:footer/footer_view.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webscrollbar/webscrollbar.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    // double screenW = MediaQuery.of(context).size.width;
    return Responsive(
      mobile: Scaffold(
        backgroundColor: Colors.black,
        endDrawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: 200,
              ),
              ListTile(
                title: Text(
                  'Projects',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Projects()));
                },
              ),
              ListTile(
                title: Text(
                  'Services',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Servicess()));
                },
              ),
              ListTile(
                title: Text(
                  'Contact Me',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutMe()));
                },
              )
            ],
          ),
        ),
        body: NestedScrollView(
          controller: controller,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                backgroundColor: Colors.grey[850],
                title: Image.asset(
                  'images/slogo.png',
                  scale: 8,
                ),
                expandedHeight: screenH,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: screenH,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/bg.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        height: screenH,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.black, Colors.black87],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                        ),
                      ),
                      Positioned(
                        bottom: (screenH) / 2,
                        child: SizedBox(
                          child: Text(
                            'WELCOME TO',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: ((screenH) / 2) - 70,
                        child: SizedBox(
                          child: Text(
                            'JD-WORLD',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 70,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: ((screenH) / 2) - 80,
                        child: SizedBox(
                          child: Text(
                            'By JDPradyut',
                            style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: ((screenH) / 2) - 130,
                        child: SizedBox(
                          child: RaisedButton.icon(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Projects()));
                            },
                            icon: Icon(Icons.ac_unit),
                            label: Text('Projects'),
                            color: Colors.amber,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        child: Lottie.network(
                            'https://assets9.lottiefiles.com/private_files/lf30_NnBW3K.json',
                            width: 30,
                            height: 30,
                            fit: BoxFit.fill),
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: FooterView(
              children: [
                SizedBox(height: 70),
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text.rich(
                      TextSpan(
                          text: 'Popular',
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: ' Project',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ]),
                    )),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                  ),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Expanded(
                                child: Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('images/mediahub.jpg'),
                                          fit: BoxFit.fill),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(13))),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'MediaHub',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Text(
                                      'MediaHub is the video streaming app where you can stream movies and WebSeries as well as you can Download those videos and watch it later from this app.'),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                      child: Text('Source'),
                                      onPressed: () async {
                                        const url =
                                            'https://github.com/JDPradyut/mediahub';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'error';
                                        }
                                      },
                                    ),
                                    TextButton(
                                      child: Text(
                                        'Download',
                                        style: TextStyle(color: Colors.amber),
                                      ),
                                      onPressed: () async {
                                        const url =
                                            'https://mydrive.jdpradyut.workers.dev/0:/JD%20Apps/MediaHub-arm64-v8a-BETA.apk';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'error';
                                        }
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    height: 250,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.indigo, width: 3),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(13))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 5,
                    top: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: Text('View More...'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Projects()));
                        },
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text.rich(
                      TextSpan(
                          text: 'Ser',
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: 'vices',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ]),
                    )),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 10,
                  ),
                  child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo, width: 3),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(13))),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LottieBuilder.network(
                              'https://assets8.lottiefiles.com/packages/lf20_NXqR2d.json',
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Mobile Application Development',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                                child: Center(
                                    child: Text(
                                        'Mobile App Development using Java for Android.As well as using Flutter & React Native for both Android and iOS.')))
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 10,
                  ),
                  child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo, width: 3),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(13))),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LottieBuilder.network(
                              'https://assets3.lottiefiles.com/packages/lf20_sFBr0l/snscit.json',
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Web Development',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                                child: Center(
                                    child: Text(
                                        'Web Development with Responsive UI using Flutter and also with React Js.')))
                          ],
                        ),
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Text.rich(
                      TextSpan(
                          text: 'Contact',
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: ' Me',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ]),
                    )),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                    top: 10,
                  ),
                  child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo, width: 3),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(13))),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundColor: Colors.amber,
                              child: CircleAvatar(
                                radius: 57,
                                backgroundImage: AssetImage('images/bg.jpg'),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  icon: Icon(LineIcons.facebook,
                                      color: Colors.blue),
                                  onPressed: () async {
                                    const url =
                                        'https://www.facebook.com/impksen99/';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'error';
                                    }
                                  },
                                ),
                                IconButton(
                                  icon: Icon(LineIcons.github),
                                  onPressed: () async {
                                    const url = 'https://github.com/JDPradyut';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'error';
                                    }
                                  },
                                ),
                                IconButton(
                                  icon: Icon(
                                    LineIcons.linkedin,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () async {
                                    const url =
                                        'https://www.linkedin.com/in/pradyut-kanti-sen-a3a7ab175/';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'error';
                                    }
                                  },
                                ),
                                IconButton(
                                  icon: Icon(
                                    LineIcons.youtube_play,
                                    color: Colors.deepOrange,
                                  ),
                                  onPressed: () async {
                                    const url =
                                        'https://www.youtube.com/jdpradyut';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'error';
                                    }
                                  },
                                ),
                                IconButton(
                                  icon: Icon(
                                    LineIcons.twitch,
                                    color: Colors.purple,
                                  ),
                                  onPressed: () async {
                                    const url =
                                        'https://www.twitch.tv/jdpradyut';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'error';
                                    }
                                  },
                                ),
                                IconButton(
                                  icon: Icon(
                                    LineIcons.twitter,
                                    color: Colors.lightBlue,
                                  ),
                                  onPressed: () async {
                                    const url = 'https://twitter.com/JDPradyut';
                                    if (await canLaunch(url)) {
                                      await launch(url);
                                    } else {
                                      throw 'error';
                                    }
                                  },
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 150,
                ),
                Container(
                  color: Colors.yellow,
                  height: 100,
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        "This website is now in BETA stage and this BETA stage doesn't represent the final version",
                        style: TextStyle(color: Colors.red),
                      ))
                    ],
                  ),
                ),
              ],
              footer: Footer(
                backgroundColor: Colors.grey[850],
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'JDWorld by JD Pradyut',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )),
        ),
      ),
      desktop: Scaffold(
          backgroundColor: Colors.black,
          body: WebScrollBar(
            controller: controller,
            visibleHeight: screenH,
            child: NestedScrollView(
              physics: NeverScrollableScrollPhysics(),
              controller: controller,
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    pinned: true,
                    backgroundColor: Colors.grey[850],
                    title: Row(
                      children: [
                        Image.asset(
                          'images/slogo.png',
                          scale: 8,
                        ),
                        Text(
                          'WORLD',
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        )
                      ],
                    ),
                    actions: [
                      TextButton(
                        child: Text('PROJECTS   ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Projects()));
                        },
                      ),
                      TextButton(
                        child: Text('SERVICES   ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Servicess()));
                        },
                      ),
                      TextButton(
                        child: Text('CONTACT ME   ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AboutMe()));
                        },
                      ),
                    ],
                    expandedHeight: screenH,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: screenH,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/bg.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            height: screenH,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.black, Colors.black87],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter),
                            ),
                          ),
                          Positioned(
                            bottom: (screenH) / 2,
                            child: SizedBox(
                              child: Text(
                                'WELCOME TO',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: ((screenH) / 2) - 90,
                            child: SizedBox(
                              child: Text(
                                'JD-WORLD',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 90,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: ((screenH) / 2) - 100,
                            child: SizedBox(
                              child: Text(
                                'By JDPradyut',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: ((screenH) / 2) - 150,
                            child: SizedBox(
                              child: RaisedButton.icon(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Projects()));
                                },
                                icon: Icon(Icons.ac_unit),
                                label: Text('Projects'),
                                color: Colors.amber,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            child: Lottie.network(
                                'https://assets9.lottiefiles.com/private_files/lf30_NnBW3K.json',
                                width: 30,
                                height: 30,
                                fit: BoxFit.fill),
                          )
                        ],
                      ),
                    ),
                  )
                ];
              },
              body: FooterView(
                  children: [
                    SizedBox(height: 70),
                    Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text.rich(
                          TextSpan(
                              text: 'Popular',
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                  text: ' Project',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ]),
                        )),
                    Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: 150,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'images/mediahub.jpg'),
                                                      fit: BoxFit.fill),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(13))),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'MediaHub',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            Expanded(
                                              child: Text(
                                                  'MediaHub is the video streaming app where you can stream movies and WebSeries as well as you can Download those videos and watch it later from this app.'),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                TextButton(
                                                  child: Text('Source'),
                                                  onPressed: () async {
                                                    const url =
                                                        'https://github.com/JDPradyut/mediahub';
                                                    if (await canLaunch(url)) {
                                                      await launch(url);
                                                    } else {
                                                      throw 'error';
                                                    }
                                                  },
                                                ),
                                                TextButton(
                                                  child: Text(
                                                    'Download',
                                                    style: TextStyle(
                                                        color: Colors.amber),
                                                  ),
                                                  onPressed: () async {
                                                    const url =
                                                        'https://mydrive.jdpradyut.workers.dev/0:/JD%20Apps/MediaHub-arm64-v8a-BETA.apk';
                                                    if (await canLaunch(url)) {
                                                      await launch(url);
                                                    } else {
                                                      throw 'error';
                                                    }
                                                  },
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                height: 250,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.indigo, width: 3),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(13))),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: 150,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'images/neo.jpg'),
                                                      fit: BoxFit.fill),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(13))),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Neo - Voice Assistant',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            Expanded(
                                              child: Text(
                                                  'Neo is voice assistant that will do your basic commands.For now this can do 20+ diffrent commands including call  a friend,send sms and whatsapp message and many more.'),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                TextButton(
                                                  child: Text('Source'),
                                                  onPressed: () async {
                                                    const url =
                                                        'https://github.com/JDPradyut/neo_assistant';
                                                    if (await canLaunch(url)) {
                                                      await launch(url);
                                                    } else {
                                                      throw 'error';
                                                    }
                                                  },
                                                ),
                                                TextButton(
                                                  child: Text(
                                                    'Download',
                                                    style: TextStyle(
                                                        color: Colors.amber),
                                                  ),
                                                  onPressed: () async {
                                                    const url =
                                                        'https://mydrive.jdpradyut.workers.dev/0:/JD%20Apps/Copy%20of%20Neo%20Assistant.apk';
                                                    if (await canLaunch(url)) {
                                                      await launch(url);
                                                    } else {
                                                      throw 'error';
                                                    }
                                                  },
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                height: 250,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.indigo, width: 3),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(13))),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: 150,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'images/stufriend.jpg'),
                                                      fit: BoxFit.fill),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(13))),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Stu-Friend',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 22,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            Expanded(
                                              child: Text(
                                                  'Stufriend is an app that helps IT/CSE Students to get an Internship,Jobs,they can practice here using previous year question from Tech Giants company like TCS,Google etc.This has many more features including online compiler.'),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                TextButton(
                                                  child: Text('Source'),
                                                  onPressed: () async {
                                                    const url =
                                                        'https://github.com/JDPradyut/stu-friend';
                                                    if (await canLaunch(url)) {
                                                      await launch(url);
                                                    } else {
                                                      throw 'error';
                                                    }
                                                  },
                                                ),
                                                TextButton(
                                                  child: Text(
                                                    'Download',
                                                    style: TextStyle(
                                                        color: Colors.amber),
                                                  ),
                                                  onPressed: () async {
                                                    const url =
                                                        'https://mydrive.jdpradyut.workers.dev/0:/JD%20Apps/StuFriend%20Final.apk';
                                                    if (await canLaunch(url)) {
                                                      await launch(url);
                                                    } else {
                                                      throw 'error';
                                                    }
                                                  },
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                height: 250,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.indigo, width: 3),
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(13))),
                              ),
                            )
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 5,
                        top: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            child: Text('View More...'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Projects()));
                            },
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text.rich(
                          TextSpan(
                              text: 'Ser',
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                  text: 'vices',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ]),
                        )),
                    Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 20,
                          top: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                  height: 300,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.indigo, width: 3),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(13))),
                                  child: Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        LottieBuilder.network(
                                          'https://assets8.lottiefiles.com/packages/lf20_NXqR2d.json',
                                          height: 160,
                                          width: 160,
                                          fit: BoxFit.fill,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Mobile Application Development',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Center(
                                                child: Text(
                                                    'Mobile App Development using Java for Android.As well as using Flutter & React Native for both Android and iOS.')))
                                      ],
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Expanded(
                              child: Container(
                                  height: 300,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.indigo, width: 3),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(13))),
                                  child: Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        LottieBuilder.network(
                                          'https://assets3.lottiefiles.com/packages/lf20_sFBr0l/snscit.json',
                                          height: 160,
                                          width: 160,
                                          fit: BoxFit.fill,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Web Development',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                            child: Center(
                                                child: Text(
                                                    'Web Development with Responsive UI using Flutter and also with React Js.')))
                                      ],
                                    ),
                                  )),
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text.rich(
                          TextSpan(
                              text: 'Contact',
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                  text: ' Me',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ]),
                        )),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 20,
                        top: 10,
                      ),
                      child: Container(
                          height: 380,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.indigo, width: 3),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(13))),
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 100,
                                  backgroundColor: Colors.amber,
                                  child: CircleAvatar(
                                    radius: 95,
                                    backgroundImage:
                                        AssetImage('images/bg.jpg'),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                      iconSize: 50,
                                      icon: Icon(LineIcons.facebook,
                                          color: Colors.blue),
                                      onPressed: () async {
                                        const url =
                                            'https://www.facebook.com/impksen99/';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'error';
                                        }
                                      },
                                    ),
                                    IconButton(
                                      iconSize: 50,
                                      icon: Icon(LineIcons.github),
                                      onPressed: () async {
                                        const url =
                                            'https://github.com/JDPradyut';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'error';
                                        }
                                      },
                                    ),
                                    IconButton(
                                      iconSize: 50,
                                      icon: Icon(
                                        LineIcons.linkedin,
                                        color: Colors.blue,
                                      ),
                                      onPressed: () async {
                                        const url =
                                            'https://www.linkedin.com/in/pradyut-kanti-sen-a3a7ab175/';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'error';
                                        }
                                      },
                                    ),
                                    IconButton(
                                      iconSize: 50,
                                      icon: Icon(
                                        LineIcons.youtube_play,
                                        color: Colors.deepOrange,
                                      ),
                                      onPressed: () async {
                                        const url =
                                            'https://www.youtube.com/jdpradyut';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'error';
                                        }
                                      },
                                    ),
                                    IconButton(
                                      iconSize: 50,
                                      icon: Icon(
                                        LineIcons.twitch,
                                        color: Colors.purple,
                                      ),
                                      onPressed: () async {
                                        const url =
                                            'https://www.twitch.tv/jdpradyut';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'error';
                                        }
                                      },
                                    ),
                                    IconButton(
                                      iconSize: 50,
                                      icon: Icon(
                                        LineIcons.twitter,
                                        color: Colors.lightBlue,
                                      ),
                                      onPressed: () async {
                                        const url =
                                            'https://twitter.com/JDPradyut';
                                        if (await canLaunch(url)) {
                                          await launch(url);
                                        } else {
                                          throw 'error';
                                        }
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    Container(
                      color: Colors.yellow,
                      height: 100,
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            "This website is now in BETA stage and this BETA stage doesn't represent the final version",
                            style: TextStyle(color: Colors.red),
                          ))
                        ],
                      ),
                    ),
                  ],
                  footer: Footer(
                    backgroundColor: Colors.grey[850],
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'JDWorld by JD Pradyut',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
            ),
          )),
    );
  }
}
