import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'cells/category_cell.dart';
import 'cells/hd_cell.dart';
import 'cells/trd_cell.dart';
import 'pages/models/category.dart';
import 'pages/models/doctor.dart';
import 'utils/custom_icons_icons.dart';
import 'utils/he_colors.dart';

class DocListRedirect extends StatefulWidget {
  const DocListRedirect({super.key});

  @override
  State<DocListRedirect> createState() => _DocListRedirectState();
}

class _DocListRedirectState extends State<DocListRedirect> {
  List<Doctor> _hDoctors = <Doctor>[];
  List<Category> _categories = <Category>[];
  List<Doctor> _trDoctors = <Doctor>[];
  //************************************
  //Life cycle methods
  //************************************/

  @override
  void initState() {
    super.initState();
    _hDoctors = _getHDoctors();
    _categories = _getCategories();
    _trDoctors = _getTRDoctors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        // padding: EdgeInsets.only(left: ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _hDoctorsSection(),
            SizedBox(
              height: 32,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _categorySection(),
                  SizedBox(
                    height: 32,
                  ),
                  _trDoctorsSection(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  //************************************
  //Widgets
  //************************************/
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: HexColor('#150047')),
      leading: IconButton(
        icon: Icon(
          CustomIcons.menu,
          size: 14,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              CustomIcons.search,
              size: 20,
            ))
      ],
    );
  }

  //Highlighted Doctors Section
  SizedBox _hDoctorsSection() {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 24),
        itemCount: _hDoctors.length,
        separatorBuilder: (BuildContext context, index) => Divider(
          indent: 16,
        ),
        itemBuilder: (BuildContext context, index) => HDCell(
          doctor: _hDoctors[index],
          onTap: () => print('Cell Tapped'),
        ),
      ),
    );
  }
  //Category Section

  Column _categorySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 32,
        ),
        SizedBox(
          height: 100,
          child: ListView.separated(
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: _categories.length,
            separatorBuilder: (BuildContext context, int index) => Divider(
              indent: 16,
            ),
            itemBuilder: (BuildContext context, int index) => CategoryCell(
              category: _categories[index],
            ),
          ),
        ),
      ],
    );
  }

  //Top Rated Doctors Section
  Column _trDoctorsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Top Rated Doctors',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 32,
        ),
        ListView.separated(
          primary: false,
          shrinkWrap: true,
          itemCount: _trDoctors.length,
          separatorBuilder: (BuildContext context, int index) => Divider(
            thickness: 16,
            color: Colors.transparent,
          ),
          itemBuilder: (BuildContext context, int index) =>
              TrdCell(doctor: _trDoctors[index]),
        )
      ],
    );
  }

  //
  // Get HighLighted Doctors List
  //
  List<Doctor> _getHDoctors() {
    List<Doctor> _hDoctors = <Doctor>[];

    _hDoctors.add(Doctor(
      firstName: "Katwere",
      lastName: "Leo",
      image: 'albert.png',
      type: "Kidney",
      rating: 4.5,
    ));
    _hDoctors.add(Doctor(
      firstName: "Nazziwa",
      lastName: "Phiona",
      image: 'albert.png',
      type: "Kidney",
      rating: 4.5,
    ));

    return _hDoctors;
  }

//Get Categories
  List<Category> _getCategories() {
    List<Category> categories = <Category>[];
    categories.add(Category(
      icon: CustomIcons.cardiologist,
      title: 'Cardiologist',
    ));
    categories.add(Category(
      icon: CustomIcons.eyes,
      title: 'Eyes',
    ));
    categories.add(Category(
      icon: CustomIcons.pediatrician,
      title: 'Pediatrisian',
    ));
    return categories;
  }

//Top Rated Doctor's List
  List<Doctor> _getTRDoctors() {
    List<Doctor> trDoctors = <Doctor>[];
    trDoctors.add(Doctor(
      firstName: 'Kawadwa',
      lastName: 'Akello',
      image: 'mathew.png',
      type: 'Gynacology',
      rating: 4.0,
    ));
    trDoctors.add(Doctor(
      firstName: 'Sakello',
      lastName: 'Namdi',
      image: 'cherly.png',
      type: 'Heart',
      rating: 4.6,
    ));
    trDoctors.add(Doctor(
      firstName: 'Kanyesigye',
      lastName: 'Sherry',
      image: 'albert.png',
      type: 'Lab pecialist',
      rating: 4.0,
    ));
    trDoctors.add(Doctor(
      firstName: 'Kanjako',
      lastName: 'Rose',
      image: 'albert.png',
      type: 'Brain Surgeon',
      rating: 4.0,
    ));
    return trDoctors;
  }
}
