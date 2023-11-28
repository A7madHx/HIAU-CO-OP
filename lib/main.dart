import 'Aboutus.dart';
import 'FAQ.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';
import 'Surveypage.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50))),
        backgroundColor: Colors.transparent,
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
                    "هذا البرنامج مخصص لإظهار جميع الفحوصات المرجحة أن يأخذها من مشايهين لجسمك و عمرك, وزنك...",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(22.0),
                  child: Text(
                    "والرجاء تعبلئة الإستبيان القادم لإدخال معلوماتك للبحث لنرى ما هي الفحوصات التي يفضل ان تأخذها",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(22.0),
                  child: Text(
                    "الفحص فوري ولا يحتاج بيانات حساسة أو خاصة بأي شخص",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => SurveyPage())));
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
                      child: Text("إفحص اللان",
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
}


