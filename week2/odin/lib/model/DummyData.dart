import 'package:flutter/material.dart';
import 'package:study_ui_challenge/Week2/model/ListModel.dart';

final List<Items> dummyList = <Items>[
  Items(Icons.location_on, "서울대학교", "서울특별시 소재", EducationType.university),
  Items(Icons.abc_sharp, "성균관대학교", "서울특별시 소재", EducationType.university),
  Items(Icons.ac_unit_outlined, "연세대학교", "서울특별시 소재", EducationType.university),
  Items(Icons.abc_rounded, "고창고등학교", "전라북도 소재", EducationType.highSchool),
  Items(Icons.east, "중앙대학교", "서울시 소재", EducationType.university),
  Items(Icons.add_circle, "상하중학교", "전라북도 소재", EducationType.middleSchool),
  Items(Icons.gamepad, "해리중학교", "전라북도 고창군", EducationType.middleSchool),
  Items(Icons.add_chart, "고려대학교", "서울특별시 소재", EducationType.university),
];

enum EducationType {
  university('대학교'),
  highSchool('고등학교'),
  middleSchool('중학교'),
  elementarySchool('초등학교');

  const EducationType(this.str);

  final String str;
}
