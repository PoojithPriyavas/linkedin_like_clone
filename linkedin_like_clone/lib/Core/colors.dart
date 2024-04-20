import 'package:flutter/material.dart';

const blueColor = Color(0xFFE2F0F4);
const shadeColor = Color.fromARGB(255, 218, 238, 243);

const whiteColor = Colors.white;
const blackColor = Colors.black;

const darkBlue = Color(0xFF253C5D);

const redColor = Color(0xFFDD524A);
const redLightColor = Color(0xFFDD524A);

const darkGreyColor = Color(0xFF343434);

const greyColor = Color(0xFF6F6F6F);
const lightGreyColor = Color.fromARGB(255, 239, 239, 239);
const goldColor = Color(0xFFFEF6CC);

const yellowColor = Color(0xFFFFC100);
const lightGreenColor = Color(0xFF3EA65B);
const orangeColor = Color.fromARGB(255, 255, 161, 11);

// linear COlor

const backgroundColor = LinearGradient(
    colors: [blueColor, whiteColor],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter);

const whiteToLightGrey = LinearGradient(
    colors: [whiteColor, lightGreyColor],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter);

const shadeToDarkColor = LinearGradient(
    colors: [whiteColor, blueColor, blueColor],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter);
