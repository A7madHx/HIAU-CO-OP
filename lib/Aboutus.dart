import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

import 'FAQ.dart';
import 'Surveypage.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({Key? key}) : super(key: key);

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        shadowColor: Color.fromARGB(255, 0, 0, 0),
        backgroundColor: Colors.transparent,
        toolbarHeight: 60,
        title: Padding(
          padding: const EdgeInsets.all(120),
          child: Text(
            "فحوصاتي",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: Colors.black45),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Color(0xFF98b4be), Colors.white]),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: 700,
            width: 350,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(22.0),
                  child: Text(
                    "مرحبا بكم بفحوصاتي الخاص بجامعة الإمام عبدالرحمن بن فيصل",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(22.0),
                  child: Text(
                    "هذا المشروع مقدم من طلاب الجامعة  ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(22.0),
                  child: Text(
                    " طريقة عمله ان تقارن الأمراض المعرض لها بالمعلومات المدخلة ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(22.0),
                  child: Text(
                    "يمكنك التواصل معنا عبر",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(0.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(0.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        onPressed: () {},
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: <Color>[
                                    Color(0xFF98b4be),
                                    Colors.white
                                  ]),
                              borderRadius: BorderRadius.circular(30)),
                          child: Container(
                            constraints:
                            BoxConstraints(maxWidth: 150, maxHeight: 50),
                            alignment: Alignment.center,
                            child: Text("تويتر",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black45)),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(0.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: <Color>[
                                  Color(0xFF98b4be),
                                  Colors.white
                                ]),
                            borderRadius: BorderRadius.circular(30)),
                        child: Container(
                          constraints:
                          BoxConstraints(maxWidth: 150, maxHeight: 50),
                          alignment: Alignment.center,
                          child: Text("موقع الجامعة",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black45)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        color: Colors.transparent,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Color(0xFF98b4be), Colors.white]),
          ),
          alignment: Alignment.topLeft,
          width: 50,
          height: 55,
          padding: EdgeInsets.all(3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {},
                child: Text("من نحن",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.black45)),
              ),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) => FAQ())));
                },
                child: Text("أسئلة شائعة",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.black45)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
