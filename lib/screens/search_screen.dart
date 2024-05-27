import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:newwave/common/common_helper.dart';
import 'package:provider/provider.dart';
import '../providers/search_provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Container(
          //   height: 90,
          //   decoration: const BoxDecoration(),
          // ),
          Align(
            alignment: Alignment.topCenter,
            child: search(context),
          ),
        ],
      ),
    );
  }
}

Widget search(BuildContext context) {
  return Container(
    height: 45,
    width: getWidthScreen(context) * 0.9,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 0.5,
            spreadRadius: 0.7,
            color: Colors.grey.shade200)
      ],
      // // color: Colors.white70,
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(40),
    ),
    margin: const EdgeInsets.only(top: 85),
    child: TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide.none),
        fillColor: Colors.white,
        filled: true,
        hintText: 'Enter keyword',
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
        prefixIcon: const Icon(Icons.search_outlined, color: Colors.black),
      ),
      onChanged: (_) {
        
      },
    ),
  );
}
