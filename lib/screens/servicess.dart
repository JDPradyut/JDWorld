import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:jdworld/widgets/responsive.dart';
import 'package:lottie/lottie.dart';
import 'package:webscrollbar/webscrollbar.dart';

class Servicess extends StatelessWidget {
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
                    child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.indigo, width: 3),
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(13))),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(13))),
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
                )),
          ),
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(13))),
                                child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(13))),
                                child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                )),
          ),
        ));
  }
}
