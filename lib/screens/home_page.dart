// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

import 'package:toku/components/category_item.dart';
import 'package:toku/screens/coiors_page.dart';
import 'package:toku/screens/family_member.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEf6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const NumbersPage();
                  },
                ),
              );
            },
            text: 'Numbers',
            color: const Color(0xffEF9235),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const FamilyMembersPage();
                  },
                ),
              );
            },
            text: 'FamilyMember',
            color: const Color(0xff558B37),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const ColorsPage();
                  },
                ),
              );
            },
            text: 'Colors',
            color: const Color(0xff769359F),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const PhrasesPage();
                  },
                ),
              );
            },
            text: 'Pharses',
            color: const Color(0xff50ADc7),
          ),
        ],
      ),
    );
  }
}
