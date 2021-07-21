import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:jdworld/widgets/responsive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webscrollbar/webscrollbar.dart';
import 'package:line_icons/line_icons.dart';

class AboutMe extends StatelessWidget {
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
                          height: 250,
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
                                  radius: 60,
                                  backgroundColor: Colors.amber,
                                  child: CircleAvatar(
                                    radius: 57,
                                    backgroundImage:
                                        AssetImage('images/bg.jpg'),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'JD Pradyut',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
        ));
  }
}
