import 'package:flutter/material.dart';
import 'package:linkedin_like_clone/Core/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  const CustomTextField({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
                color: greyColor, fontSize: 15, fontWeight: FontWeight.w400),
            fillColor: lightGreyColor,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black12),
                borderRadius: BorderRadius.circular(5)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            )),
      ),
    );
  }
}
