import 'Aboutus.dart';
import 'FAQ.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';


class result extends StatefulWidget {
  String a;
  String h;
  String w;
  int smoke;
  int gender;

  String age = " ";
  String hight = " ";
  String width = " ";
  double x = 0;
  double z = 0;
  double bmi = 0;
  double aa = 0;
  String r = "";

  result(
      {required this.a,
        required this.h,
        required this.w,
        required this.gender,
        required this.smoke}) {
    age = this.a;
    aa = double.parse(age);
    hight = this.h;
    width = this.w;
    x = double.parse(hight);
    z = double.parse(width);

    x = (x / 100) as double;
    bmi = (z / (x * x)) as double;
    r = "$bmi";
    bool thin = false;
    bool normal = false;
    bool over = false;
    if (bmi < 18) {
      thin = true;
    } else if (bmi > 18.499 && bmi < 26) {
      normal = true;
    } else if (bmi > 25) over = true;

  }



  @override
  State<result> createState() => _resultState();
}

class _resultState extends State<result> {
  bmi(double x){
    String bp = "Blood Pressure";
    String ttdd = "Tests to detect a deficiency of some vitamins";
    String cga = "Cumulative glucose analysis";
    if(x<18) {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.all(2),
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.teal,
                  width: 3,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Text(
              ttdd,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.teal),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );

    }else if(x > 25){
      return Column(
        children: [
          Container(
            margin: EdgeInsets.all(2),
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.teal,
                  width: 3,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Text(
              cga,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.teal),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }else{
      return Container() ;
    }
  }
  fun(String X,int gender){
    bool age2 = false;
    bool age3 = false;
    bool age4 = false;
    bool age5 = false;
    bool age6 = false;
    String eye ='Eye Exam';
    String hear ='Hearing test';
    String blood ='Blood pressure';
    String skin ='Skin exam';
    String pel ='Pelvic Exam';
    String testi ='Testicular Exam';
    String pap ='Pap Smear';
    String bloodg='Blood Glucose';
    String chols='Cholesterol Screening';
    String thy='Thyroid Stimulating Hormone';
    String pro='Prostate Exam';
    String bone='Bone Density';
    String mamm='Mammogram';
    String ovar='Ovarian Screening';
    String colo='Colonoscopy';
    String coro='Coronary Screening';
    String fecal='Fecal Occult Blood Test';
    String herp='Herpes Booster';
    String pneu='Pneumonia Booster';
    String color='Colorectal Screening ';
    double x=double.parse(X);
    if ( x < 30) {
      age2 = true;
    } else if (x > 29 && x < 40) {
      age3 = true;
    } else if (x > 39 && x < 50) {
      age4 = true;
    } else if (x > 49 && x < 60) {
      age5 = true;
    } else if (x > 59 ) {
      age6 = true;
    } else
      print("you are out of the age range for this app");
    if(age2){
      if(gender==0) {
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                eye,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                hear,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                blood,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ), Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                skin,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ), Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                testi,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),

          ],

        );
      }else{
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                eye,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                hear,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                blood,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ), Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                skin,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ), Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                pel,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                pap,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),

          ],

        );
      }
    }else
    if(age3){
      if(gender==0){
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                bloodg,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                blood,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                chols,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                skin,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                testi,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),

          ],

        );}
      else{
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                bloodg,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                blood,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                chols,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                skin,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                pel,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                pap,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                thy,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),

          ],

        );

      }
    }
    else
    if(age4){
      if(gender==0){
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                blood,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                skin,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                testi,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                pro,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                bloodg,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                chols,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),

          ],

        );
      }
      else{
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                blood,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                skin,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                pel,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                pap,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                bloodg,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                chols,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                bone,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                mamm,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                ovar,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),

          ],

        );

      }

    }else
    if(age5){
      if(gender==0){
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                blood,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                colo,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                testi,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                pro,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                bloodg,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                chols,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );

      }else{
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                blood,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                colo,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                pel,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                pap,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                bloodg,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                chols,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                bone,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                mamm,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                ovar,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                coro,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                fecal,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );

      }
    }else if(age6){
      if(gender==0){
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                blood,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                colo,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                testi,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                pro,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                bloodg,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                chols,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                hear,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                colo,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                bone,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                herp,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                pneu,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );

      }
      else{
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                blood,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                colo,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                pel,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                pap,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                bloodg,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                chols,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                ovar,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                colo,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                bone,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                herp,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                pneu,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                mamm,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                color,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.teal,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Text(
                fecal,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.teal),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );

      }
    }





  }

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "بناء على البينات المدخله وحسب التوصيات العلمية المبنية على البراهين, فإننا ننصح بإجراء الفحوصات التالية",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
              ),
              fun(widget.age,widget.gender),
              bmi(widget.bmi)
            ],
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