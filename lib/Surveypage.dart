import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

import 'Aboutus.dart';
import 'FAQ.dart';
import 'result.dart';

class SurveyPage extends StatefulWidget {
  SurveyPage({Key? key}) : super(key: key);

  @override
  State<SurveyPage> createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  final _formkey = GlobalKey<FormState>();

  String age = "";
  String hight = " ";
  String width = " ";

  List<String> lst = ['ذكر', 'انثى'];
  int selectedindex = 0;

  List<String> lst2 = ['لا', 'نعم'];
  int selectedindex2 = 0;

  List<String> lst3 = ['لا', 'نعم'];
  int selectedindex3 = 0;

  List<String> lst4 = ['لا', 'نعم'];
  int selectedindex4 = 0;

  List<String> lst5 = ['لا', 'نعم'];
  int selectedindex5 = 0;

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50))),
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.all(80),
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
        child: Form(
          key: _formkey,
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              children: [
                SizedBox(
                    height: 44,
                    child: TextFormField(
                      onChanged: (value) {
                        age = value;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          labelText: "العمر",
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.clear),
                          )),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isNotEmpty) {
                          return null;
                        } else {
                          return '!الرجاء ادخال البيانات';
                        }
                      },
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    SizedBox(
                      height: 40,
                      width: 170.0,
                      child: TextFormField(
                        onChanged: (value) {
                          hight = value;
                        },
                        controller: _textController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            labelText: "الطول",
                            suffixIcon: IconButton(
                              onPressed: () {
                                _textController.clear();
                              },
                              icon: const Icon(Icons.clear),
                            )),
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isNotEmpty) {
                            return null;
                          } else {
                            return '!الرجاء ادخال البيانات';
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        height: 40,
                        width: 170.0,
                        child: TextFormField(
                          onChanged: (value) {
                            width = value;
                          },
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              labelText: "الوزن",
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.clear),
                              )),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isNotEmpty) {
                              return null;
                            } else {
                              return '!الرجاء ادخال البيانات';
                            }
                          },
                        )),
                  ],
                ),
                SizedBox(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    child: Text(
                      ":الجنس",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        radio(lst[0], 0),
                        radio(lst[1], 1),
                      ]),
                ),
                SizedBox(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    child: Text(
                      "هل سبق لك التدخين؟",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        radio2(lst2[0], 0),
                        radio2(lst2[1], 1),
                      ]),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    child: Text(
                      "هل تمارس اي نشاطات جنسية؟",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        radio3(lst3[0], 0),
                        radio3(lst3[1], 1),
                      ]),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    child: Text(
                      "هل لديك امراض مزمنة؟",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        radio4(lst4[0], 0),
                        radio4(lst4[1], 1),
                      ]),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    child: Text(
                      "هل سبق لك استخدام جرعات غير قانونية عبر الوريد؟",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        radio5(lst5[0], 0),
                        radio5(lst5[1], 1),
                      ]),
                ),
                SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {
                    if (!_formkey.currentState!.validate()) {
                      return;
                    }
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => result(
                          a: age,
                          w: width,
                          h: hight,
                          gender : selectedindex,
                          smoke: selectedindex2,
                        ))));
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[Color(0xFF98b4be), Colors.white]),
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 150, maxHeight: 50),
                      alignment: Alignment.center,
                      child: Text(" تأكيد",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.black45)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => Aboutus())));
                },
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

  void changeindex(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  Widget radio(String txt, int index) {
    return OutlinedButton(
      onPressed: () => changeindex(index),
      style: OutlinedButton.styleFrom(
          minimumSize: Size(150, 44),
          side: BorderSide(
              color: selectedindex == index ? Colors.teal : Colors.grey),
          padding: EdgeInsets.all(0.0),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      child: Text(
        txt,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: selectedindex == index ? Colors.teal : Colors.grey),
      ),
    );
  }

  void change2Index(int index) {
    setState(() {
      selectedindex2 = index;
    });
  }

  Widget radio2(String txt, int index) {
    return OutlinedButton(
      onPressed: () => change2Index(index),
      style: OutlinedButton.styleFrom(
          minimumSize: Size(150, 44),
          side: BorderSide(
              color: selectedindex2 == index ? Colors.teal : Colors.grey),
          padding: EdgeInsets.all(0.0),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      child: Text(
        txt,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: selectedindex2 == index ? Colors.teal : Colors.grey),
      ),
    );
  }

  void change3Index(int index) {
    setState(() {
      selectedindex3 = index;
    });
  }

  Widget radio3(String txt, int index) {
    return OutlinedButton(
      onPressed: () => change3Index(index),
      style: OutlinedButton.styleFrom(
          minimumSize: Size(150, 44),
          side: BorderSide(
              color: selectedindex3 == index ? Colors.teal : Colors.grey),
          padding: EdgeInsets.all(0.0),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      child: Text(
        txt,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: selectedindex3 == index ? Colors.teal : Colors.grey),
      ),
    );
  }

  void change4Index(int index) {
    setState(() {
      selectedindex4 = index;
    });
  }

  Widget radio4(String txt, int index) {
    return OutlinedButton(
      onPressed: () => change4Index(index),
      style: OutlinedButton.styleFrom(
          minimumSize: Size(150, 44),
          side: BorderSide(
              color: selectedindex4 == index ? Colors.teal : Colors.grey),
          padding: EdgeInsets.all(0.0),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      child: Text(
        txt,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: selectedindex4 == index ? Colors.teal : Colors.grey),
      ),
    );
  }

  void change5Index(int index) {
    setState(() {
      selectedindex5 = index;
    });
  }

  Widget radio5(String txt, int index) {
    return OutlinedButton(
      onPressed: () => change5Index(index),
      style: OutlinedButton.styleFrom(
          minimumSize: Size(150, 44),
          side: BorderSide(
              color: selectedindex5 == index ? Colors.teal : Colors.grey),
          padding: EdgeInsets.all(0.0),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      child: Text(
        txt,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: selectedindex5 == index ? Colors.teal : Colors.grey),
      ),
    );
  }
}