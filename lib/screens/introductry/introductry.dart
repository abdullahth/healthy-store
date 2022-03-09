import 'package:flutter/material.dart';
import 'package:application/dims/dims.dart';
import 'package:application/enums/images.dart';
import 'package:application/screens/store/store.dart';
import 'package:get/get.dart';

class IntroductryPage extends StatelessWidget {
  const IntroductryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Dims dims = Dims(context);
    final theme = Theme.of(context);
    return Scaffold(
        body: Container(
            width: dims.width,
            height: dims.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Images.introductryBackground.path),
                  fit: BoxFit.cover),
            ),
            child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.black54, Colors.black12],
                    stops: [0, 0.7, 1],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(flex: 3),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text:
                                  'We\'re your place if you want to live health\n\n',
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontFamily: 'Quicksand',
                                  fontSize: 16)),
                          TextSpan(
                            text: 'Veg',
                            style: TextStyle(
                              fontSize: 64,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w800,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                          const TextSpan(
                            text: 'arket',
                            style: TextStyle(
                              fontSize: 64,
                              fontFamily: 'Raleway',
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ]),
                      ),
                      const Spacer(flex: 2),
                      Material(
                        color: theme.colorScheme.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: InkWell(
                          hoverColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          onTap: () {},
                          child: SizedBox(
                            width: double.infinity,
                            height: dims.height * 0.08,
                            child: const Center(
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          hoverColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          onTap: () {
                            Get.to(const Store());
                          },
                          child: SizedBox(
                            width: double.infinity,
                            height: dims.height * 0.08,
                            child: const Center(
                              child: Text(
                                'Skip',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))));
  }
}
