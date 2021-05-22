import 'package:flutter/material.dart';

const kprimaryBackground = Color(0xFF1F1F2F);
const ksecondaryBackground = Color(0xFF1F1F2F);
const kgolden = Color(0xFFF8EC47);

const kSendButtonTextStyle = TextStyle(
    color: Colors.lightBlueAccent,
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    backgroundColor: Color(0xFF2D2E3D));

const kMessageTextFieldDecoration = InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    hintText: 'Type your message here...',
    border: InputBorder.none,
    fillColor: Color(0xFF1F1F2F));

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);
