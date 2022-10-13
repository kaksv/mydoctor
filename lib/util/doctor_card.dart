import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;
  const DoctorCard({
    Key? key,
    required this.doctorImagePath,
    required this.rating,
    required this.doctorName,
    required this.doctorProfession,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 150,
        decoration: BoxDecoration(
          color: Colors.pink[400],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            //Picture of the Doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                doctorImagePath,
                height: 40,
              ),
            ),
            const SizedBox(
              height: 5,
            ),

            //Rating Out of 5
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[800],
                ),
                Text(
                  rating,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[100],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),

            //Doctor Name
            Text(
              doctorName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[100],
              ),
            ),

            //Doctor Ttle
            Text(
              doctorProfession,
              style: TextStyle(color: Colors.grey[200]),
            ),
          ],
        ),
      ),
    );
  }
}
