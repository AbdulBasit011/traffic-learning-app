import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gymbudd/Views/question.dart';
import 'package:url_launcher/url_launcher.dart';
class eTestFragments extends StatefulWidget {
  // const Fragments({Key? key}) : super(key: key);

  @override
  State<eTestFragments> createState() => _eTestFragmentsState();
}

class _eTestFragmentsState extends State<eTestFragments> {
  Future<void> _launched;
  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://www.youtube.com/watch?v=v41W6Sz0s5E';
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0AC5B8),
          title: const Text("E-Test",style: TextStyle(
            color:Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Get.to(question());
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xff2BD88F),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/photos/question-mark-on-colorful-paper-picture-id1306017915?b=1&k=20&m=1306017915&s=170667a&w=0&h=D_6RqCE1lIYhaU6FsAzvNU11diUxseHVTzCydd23vNY="),fit: BoxFit.cover)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 22.0),
                    child: Center(child: Text("Question",style: TextStyle(
                      color:Colors.black,                fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  _launched = _launchInBrowser(toLaunch);
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xff2BD88F),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: NetworkImage("https://dytvr9ot2sszz.cloudfront.net/wp-content/uploads/2019/05/1200x628_elasticsearch-tutorial-min.jpg"),fit: BoxFit.fill)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 22.0),
                    child: Center(child: Text("",style: TextStyle(
                      color:Colors.black,                fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),)),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
  Future<void> _launchInBrowser(String url) async {
    if (!await launch(
      url,
      forceSafariVC: true,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }
}
