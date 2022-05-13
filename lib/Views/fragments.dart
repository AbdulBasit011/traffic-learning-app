import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import 'eTestFragments.dart';
import 'learningFragments.dart';
class Fragments extends StatefulWidget {
 // const Fragments({Key? key}) : super(key: key);

  @override
  State<Fragments> createState() => _FragmentsState();
}

class _FragmentsState extends State<Fragments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0AC5B8),
        title: const Text("Welcome TO Traffic Learning Application",style: TextStyle(
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
              onTap: (){Get.to(learningFragments());},
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff2BD88F),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: NetworkImage("https://www.scoonews.com/timthumb.php?src=https://www.scoonews.com/uploads/news_images/ts14670078771467007877.jpg&h=655&w=1271&zc=1&qc=100"),fit: BoxFit.cover)
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Center(child: Text("Learning",style: TextStyle(
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
              onTap: (){Get.to(eTestFragments());},
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff2BD88F),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: NetworkImage("https://hackernoon.com/hn-images/0*xMaFF2hSXpf_kIfG.jpg"),fit: BoxFit.cover)
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 22.0),
                  child: Center(child: Text("E-Test",style: TextStyle(
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
              onTap: (){_launchURL();},
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff2BD88F),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: NetworkImage("https://www.lifewire.com/thmb/6DrtO40qnoND20afLabJ8MHUN4w=/1614x1105/filters:fill(auto,1)/Maplocation_-5a492a4e482c52003601ea25.jpg"),fit: BoxFit.fill)
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 22.0),
                  child: Center(child: Text("License Center",style: TextStyle(
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
              onTap: ()
              {
                _launchURL1();
              },
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff2BD88F),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: NetworkImage("https://bloghubstaffcom.lightningbasecdn.com/wp-content/uploads/2019/02/7_best_employee_GPStracking_apps@2x.jpg"),fit: BoxFit.fill)
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 22.0),
                  child: Center(child: Text("License Information",style: TextStyle(
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
              onTap: ()
              {
                _launchURL2();
              },
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff2BD88F),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: NetworkImage("https://socialmediaweek.org/wp-content/blogs.dir/1/files/verification.jpg"),fit: BoxFit.fill)
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 22.0),
                  child: Center(child: Text("Verify License ",style: TextStyle(
                    color:Colors.black,                fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),)),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      )
    );
  }
  _launchURL() async {
    if (Platform.isIOS) {
      if (await canLaunch(
          'https://www.google.com/search?q=license+locations+near+me&rlz=1C1CHBF_enPK863PK863&oq=license+loca&aqs=chrome.2.0i512l3j69i57j0i512j0i22i30l2j0i15i22i30j0i22i30l2.17971j0j4&sourceid=chrome&ie=UTF-8')) {
        await launch(
            'https://www.google.com/search?q=license+locations+near+me&rlz=1C1CHBF_enPK863PK863&oq=license+loca&aqs=chrome.2.0i512l3j69i57j0i512j0i22i30l2j0i15i22i30j0i22i30l2.17971j0j4&sourceid=chrome&ie=UTF-8',
            forceSafariVC: false);
      } else {
        if (await canLaunch(
            'https://www.google.com/search?q=license+locations+near+me&rlz=1C1CHBF_enPK863PK863&oq=license+loca&aqs=chrome.2.0i512l3j69i57j0i512j0i22i30l2j0i15i22i30j0i22i30l2.17971j0j4&sourceid=chrome&ie=UTF-8')) {
          await launch(
              'https://www.google.com/search?q=license+locations+near+me&rlz=1C1CHBF_enPK863PK863&oq=license+loca&aqs=chrome.2.0i512l3j69i57j0i512j0i22i30l2j0i15i22i30j0i22i30l2.17971j0j4&sourceid=chrome&ie=UTF-8');
        } else {
          throw 'Could not launch https://www.google.com/search?q=license+locations+near+me&rlz=1C1CHBF_enPK863PK863&oq=license+loca&aqs=chrome.2.0i512l3j69i57j0i512j0i22i30l2j0i15i22i30j0i22i30l2.17971j0j4&sourceid=chrome&ie=UTF-8';
        }
      }
    } else {
      const url = 'https://www.google.com/search?q=license+locations+near+me&rlz=1C1CHBF_enPK863PK863&oq=license+loca&aqs=chrome.2.0i512l3j69i57j0i512j0i22i30l2j0i15i22i30j0i22i30l2.17971j0j4&sourceid=chrome&ie=UTF-8';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }
  _launchURL1() async {
    if (Platform.isIOS) {
      if (await canLaunch(
          'https://dlims.punjab.gov.pk/track/')) {
        await launch(
            'https://dlims.punjab.gov.pk/track/',
            forceSafariVC: false);
      } else {
        if (await canLaunch(
            'https://dlims.punjab.gov.pk/track/')) {
          await launch(
              'https://dlims.punjab.gov.pk/track/');
        } else {
          throw 'Could not launch https://dlims.punjab.gov.pk/track/';
        }
      }
    } else {
      const url = 'https://dlims.punjab.gov.pk/track/';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }
  _launchURL2() async {
    if (Platform.isIOS) {
      if (await canLaunch(
          'https://dlims.punjab.gov.pk/verify/')) {
        await launch(
            'https://dlims.punjab.gov.pk/verify/',
            forceSafariVC: false);
      } else {
        if (await canLaunch(
            'https://dlims.punjab.gov.pk/verify/')) {
          await launch(
              'https://dlims.punjab.gov.pk/verify/');
        } else {
          throw 'Could not launch https://dlims.punjab.gov.pk/verify/';
        }
      }
    } else {
      const url = 'https://dlims.punjab.gov.pk/verify/';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }
 /* _launchURL() async {
    const url = 'https://www.google.com/search?q=license+locations+near+me&rlz=1C1CHBF_enPK863PK863&oq=license+loca&aqs=chrome.2.0i512l3j69i57j0i512j0i22i30l2j0i15i22i30j0i22i30l2.17971j0j4&sourceid=chrome&ie=UTF-8';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }*/
}
