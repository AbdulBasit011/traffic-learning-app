
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gymbudd/Views/safety.dart';
import 'package:gymbudd/Views/sign.dart';
import 'package:url_launcher/url_launcher.dart';
class learningFragments extends StatefulWidget {
  // const Fragments({Key? key}) : super(key: key);

  @override
  State<learningFragments> createState() => _learningFragmentsState();
}

class _learningFragmentsState extends State<learningFragments> {
  Future<void> _launched;
  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://www.youtube.com/watch?v=zxmcfgEdwug';
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0AC5B8),
          title: const Text("Learnings",style: TextStyle(
            color:Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Get.to(signImage());
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xff2BD88F),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1583125320604-8245f1e50c1e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cm9hZCUyMHNpZ25zfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),fit: BoxFit.cover)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Center(child: Text("Signs",style: TextStyle(
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
                  Get.to(safetyImage());
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xff2BD88F),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: NetworkImage("https://cdn.labmanager.com/assets/articleNo/6644/iImg/33214/1992615e-eeea-4e92-b866-31364769c332-general-warning-safety-sign.jpg"),fit: BoxFit.cover)
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 22.0),
                    child: Center(child: Text("Safety Precautions",style: TextStyle(
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
                  setState(() {
                    print("object");
                    _launched = _launchInBrowser(toLaunch);
                  });
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xff2BD88F),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: NetworkImage("https://dytvr9ot2sszz.cloudfront.net/wp-content/uploads/2019/05/1200x628_logstash-tutorial-min.jpg"),fit: BoxFit.fill)
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
            /*Center(
              child: ElevatedButton(
                onPressed: () =>
                child: const Text('Web Browser Tutorial'),
              ),
            ),*/
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
