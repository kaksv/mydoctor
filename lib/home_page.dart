// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mydoctor/homewidgetsclicked/medical_form.dart';
import 'package:mydoctor/util/category_card.dart';
import 'package:mydoctor/util/doctor_card.dart';

import 'homewidgetsclicked/doclist_redirect.dart';
import 'homewidgetsclicked/patient_form.dart';
// import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: [
              //AppBar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Esther Naka',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    //Profile Picture
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Icon(Icons.person),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),

              //Card That asks how do you feel?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(8),
                  //Clicking on the fill out form.
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PatientForm()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          //Animation or Cute Picture
                          Container(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'images/doc.gif',
                              width: 200,
                              height: 200,
                            ),
                            // child: Lottie.asset(lottiejson/doctorsubscript.json),
                          ),
                          SizedBox(
                            width: 25.0,
                          ),

                          //How do you feel + Get Started Button.
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'How Do you Feel?',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Feel Out your Medical Card Now',
                                  style: TextStyle(fontSize: 14),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MedicalForm()));
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                        color: Colors.pink[400],
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Center(
                                        child: Text(
                                      'Get Started',
                                      style: TextStyle(color: Colors.grey[100]),
                                    )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 25,
              ),
              //Search BAR
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.pink,
                      ),
                      border: InputBorder.none,
                      hintText: 'Search our Data Bank for antenatal',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //Horizontal List View -> Categories //Checkup, Reminders, Medications
              Container(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DocListRedirect()));
                      },
                      child: CategoryCard(
                        categoryName: 'Antenatal',
                        iconImagePath: 'icons/pregnant.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CategoryCard(
                        categoryName: 'Routines',
                        iconImagePath: 'icons/care.png',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DocListRedirect()));
                      },
                      child: CategoryCard(
                        categoryName: 'Doctor',
                        iconImagePath: 'icons/doppler.png',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              //Doctor List
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DocListRedirect()));
                      },
                      child: Text(
                        'Frequently Contacted',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DocListRedirect()));
                        },
                        child: Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DoctorCard(
                    doctorName: 'Kabuk Mike',
                    doctorImagePath: 'images/musawo2.jpg',
                    doctorProfession: 'Gynacologist',
                    rating: '4.9',
                  ),
                  DoctorCard(
                    doctorName: 'Mary Mbabazi',
                    doctorImagePath: 'images/musawo3.jpg',
                    doctorProfession: 'Mid Wife',
                    rating: '4.8',
                  ),
                  DoctorCard(
                    doctorName: 'Marian',
                    doctorImagePath: 'images/musawo1.jpg',
                    doctorProfession: 'Technician',
                    rating: '4.0',
                  ),
                ],
              )),
              //Where the Cards are going to be Placed.
            ],
          ),
        ),
      ),
    );
  }
}
