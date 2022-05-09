import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff2BD88F),
                borderRadius: BorderRadius.circular(15),
              ),

              child: const Center(child: Text("Learning",style: TextStyle(
                color:Colors.black,                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),)),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff2BD88F),
                borderRadius: BorderRadius.circular(15),
              ),

              child: const Center(child: Text("Test",style: TextStyle(
                color:Colors.black,                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),)),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff2BD88F),
                borderRadius: BorderRadius.circular(15),
              ),

              child: const Center(child: Text("License Location",style: TextStyle(
                color:Colors.black,                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),)),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff2BD88F),
                borderRadius: BorderRadius.circular(15),
              ),

              child: const Center(child: Text("Track License",style: TextStyle(
                color:Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),)),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff2BD88F),
                borderRadius: BorderRadius.circular(15),
              ),

              child: const Center(child: Text("Verify License",style: TextStyle(
                color:Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),)),
            ),
          ),
          const SizedBox(height: 10),
        ],
      )
    );
  }
}
