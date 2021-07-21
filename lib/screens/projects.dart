import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:jdworld/widgets/responsive.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webscrollbar/webscrollbar.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    return Responsive(
      mobile: Scaffold(
        backgroundColor: Colors.black,
        body: WebScrollBar(
            controller: controller,
            visibleHeight: MediaQuery.of(context).size.height,
            child: FooterView(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                      child: Text.rich(
                        TextSpan(
                            text: 'Popular',
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: ' Projects',
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
                                            image: AssetImage('images/neo.jpg'),
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
                                        'Neo - Voice Assistant',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Text(
                                        'Neo is voice assistant that will do your basic commands.For now this can do 20+ diffrent commands including call  a friend,send sms and whatsapp message and many more.'),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                          style: TextStyle(color: Colors.amber),
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
                          border: Border.all(color: Colors.indigo, width: 3),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(13))),
                    ),
                  ),
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
                                            image: AssetImage(
                                                'images/stufriend.jpg'),
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
                                        'Stu-Friend',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Text(
                                        'Stufriend is an app that helps IT/CSE Students to get an Internship,Jobs,they can practice here using previous year question from Tech Giants company like TCS,Google etc.This has many more features including online compiler.'),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                          style: TextStyle(color: Colors.amber),
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
                          border: Border.all(color: Colors.indigo, width: 3),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(13))),
                    ),
                  ),
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
                                            image: AssetImage(
                                                'images/sanglap.jpg'),
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
                                        'Sanglap',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: Text(
                                        'Sanglaap is a basic app for messaging your close one.Here you can send request to friend and after accepting your request you can chat with them.DownLoad or clone this app with my Source code.'),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextButton(
                                        child: Text('Source'),
                                        onPressed: () async {
                                          const url =
                                              'https://github.com/JDPradyut/sanglaap';
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
                                              'https://mydrive.jdpradyut.workers.dev/0:/JD%20Apps/Copy%20of%20SangLaap%20Beta.apk';
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
                      bottom: 20,
                      top: 10,
                    ),
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo, width: 3),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(13))),
                      child: GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                LineIcons.github,
                                size: 100,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Discover More',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 22),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        onTap: () async {
                          const url = 'https://github.com/JDPradyut';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'error';
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
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
                ))),
      ),
      desktop: Scaffold(
        backgroundColor: Colors.black,
        body: WebScrollBar(
            controller: controller,
            visibleHeight: MediaQuery.of(context).size.height,
            child: FooterView(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                      child: Text.rich(
                        TextSpan(
                            text: 'Popular',
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: ' Projects',
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
                                                MainAxisAlignment.spaceBetween,
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
                                                MainAxisAlignment.spaceBetween,
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
                                                        'images/sanglap.jpg'),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Sanglap',
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
                                                'Sanglaap is a basic app for messaging your close one.Here you can send request to friend and after accepting your request you can chat with them.DownLoad or clone this app with my Source code.'),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              TextButton(
                                                child: Text('Source'),
                                                onPressed: () async {
                                                  const url =
                                                      'https://github.com/JDPradyut/sanglaap';
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
                                                      'https://mydrive.jdpradyut.workers.dev/0:/JD%20Apps/Copy%20of%20SangLaap%20Beta.apk';
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
                              height: 250,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.indigo, width: 3),
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(13))),
                              child: GestureDetector(
                                child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        LineIcons.github,
                                        size: 100,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Discover More',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 22),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () async {
                                  const url = 'https://github.com/JDPradyut';
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'error';
                                  }
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Expanded(
                              child: Container(
                            height: 250,
                          ))
                        ],
                      )),
                  SizedBox(
                    height: 60,
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
                ))),
      ),
    );
  }
}
