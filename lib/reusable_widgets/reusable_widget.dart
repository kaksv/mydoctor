import 'package:flutter/material.dart';

Icon appIcon(IconData iconName) {
  return Icon(
    iconName,
    size: 100,
    color: Colors.pink,
    textDirection: TextDirection.ltr,
  );
}

Text majorText(String logoName) {
  return Text(
    logoName,
    style: TextStyle(
      fontWeight: FontWeight.lerp(FontWeight.w400, FontWeight.w800, 1),
      fontSize: 24,
    ),
  );
}

Text descriptionText(String logoDesc) {
  return Text(
    logoDesc,
    style: TextStyle(
      fontWeight: FontWeight.lerp(FontWeight.w400, FontWeight.w800, 0),
      fontSize: 18,
    ),
  );
}

TextField reusableTextField(String text, IconData icon, bool isPasswordType,
    TextEditingController controller) {
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.black12,
    style: TextStyle(
      color: Colors.black.withOpacity(0.9),
    ),
    decoration: InputDecoration(
      // border: ,
      // hintText: text,
      prefixIcon: Icon(
        icon,
        color: Colors.black12,
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.black12.withOpacity(0.8)),
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.4),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(width: 10, style: BorderStyle.solid),
      ),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

Container signInSignUpButton(
    BuildContext context, bool isLOgin, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.1,
    margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      // color: Colors.pink[300],
    ),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        isLOgin ? 'Login' : 'Sign Up',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.pink;
            }
            return Colors.pink[300];
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ))),
    ),
  );
}
