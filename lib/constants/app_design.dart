import 'package:flutter/material.dart';

class AppColors {
  static const Color mainColor = Color(0xFF6ED3B3);

  static const Color gray000 = Color(0xFFF4F4F4);
  static const Color gray010 = Color(0xFFDADADA);
  static const Color gray020 = Color(0xFFBABABA);
  static const Color gray030 = Color(0xFF9F9F9F);
  static const Color gray040 = Color(0xFF888888);
  static const Color gray050 = Color(0xFF747474);
  static const Color gray060 = Color(0xFF606060);
  static const Color gray070 = Color(0xFF505050);
  static const Color gray080 = Color(0xFF424242);
  static const Color gray090 = Color(0xFF373737);
  static const Color gray100 = Color(0xFF2E2E2E);

  static const Color green000 = Color(0xFFE3FCF5);
  static const Color green010 = Color(0xFFA4F6DF);
  static const Color green020 = Color(0xFF6EF1CC);
  static const Color green030 = Color(0xFF3FEDBB);
  static const Color green040 = Color(0xFF17E9AD);
  static const Color green050 = Color(0xFF13C894);
  static const Color green060 = Color(0xFF10A67B);
  static const Color green070 = Color(0xFF0D8A66);
  static const Color green080 = Color(0xFF0B7355);
  static const Color green090 = Color(0xFF095F47);
  static const Color green100 = Color(0xFF074F3B);

  static const Color blue000 = Color(0xFFD8DFF9);
  static const Color blue010 = Color(0xFFACBBF3);
  static const Color blue020 = Color(0xFF859CED);
  static const Color blue030 = Color(0xFF6280E8);
  static const Color blue040 = Color(0xFF4367E4);
  static const Color blue050 = Color(0xFF2751E0);
  static const Color blue060 = Color(0xFF1D44CA);
  static const Color blue070 = Color(0xFF1A3CB2);
  static const Color blue080 = Color(0xFF17359D);
  static const Color blue090 = Color(0xFF142F8A);
  static const Color blue100 = Color(0xFF122979);

  static const Color yellow000 = Color(0xFFFEF6DA);
  static const Color yellow010 = Color(0xFFFCEAAD);
  static const Color yellow020 = Color(0xFFFADF85);
  static const Color yellow030 = Color(0xFFF8D561);
  static const Color yellow040 = Color(0xFFF6CC40);
  static const Color yellow050 = Color(0xFFF5C423);
  static const Color yellow060 = Color(0xFFEEB90B);
  static const Color yellow070 = Color(0xFFD4A50A);
  static const Color yellow080 = Color(0xFFBD9309);
  static const Color yellow090 = Color(0xFFA88308);
  static const Color yellow100 = Color(0xFF967507);

  static const Color red000 = Color(0xFFF7C7C1);
  static const Color red010 = Color(0xFFF2A297);
  static const Color red020 = Color(0xFFED8072);
  static const Color red030 = Color(0xFFE96251);
  static const Color red040 = Color(0xFFE54733);
  static const Color red050 = Color(0xFFDE321C);
  static const Color red060 = Color(0xFFC32C19);
  static const Color red070 = Color(0xFFAC2716);
  static const Color red080 = Color(0xFF972213);
  static const Color red090 = Color(0xFF851E11);
  static const Color red100 = Color(0xFF751A0F);

  static const Color bgMobile1 = Color(0xFFE9EAEF);
  static const Color bgMobile2 = Color(0xFFF5F5F5);

  static const Color tableDivisionLine = Color(0xFF3D3D3D);
  static const Color tableListLine = Color(0xFF0C0C0C);
  static const Color baseLine = gray100;
  static const Color letterDividingLine = gray090;
  static const Color dottedLine = Color(0xFF686868);

  static const Color border = gray080;

  static const Color tableBgReservationOrder = Color(0xFF121C26);
  static const Color tableBgEmergency = Color(0xFFCA460E);
  static const Color tableBgCancel = Color(0xFF2B3E51);
  static const Color tableBgNonReservation = Color(0xFF095C44);
  static const Color tableBgNonAssign = Color(0xFFA0105E);
  static const Color tableBgNoShow = Color(0xFF590202);
  static const Color tableBgFail = Color(0xFF4F189D);
  static const Color tableBgRegular = Color(0xFF0114A6);
  static const Color tableBgRequiredDay = Color(0xFF0114A6);

  static const Color filterReservationOrder = Color(0xFFFFFFFF);
  static const Color filterEmergency = Color(0xFFFFA756);
  static const Color filterNonReservation = Color(0xFF3CE1C8);
  static const Color filterNonAssign = Color(0xFFFA71FF);
  static const Color filterNoShow = Color(0xFFFE2373);
  static const Color filterFail = Color(0xFFAD53FF);
  static const Color filterCancel = Color(0xFFC7C7D1);
  static const Color filterSingularity = Color(0xFFFA71FF);
  static const Color filterAbnormal = Color(0xFF9698FF);
  static const Color filterRegular = Color(0xFF4F64FF);
  static const Color filterRequiredDay = Color(0xFF4F64FF);

  static const Color success = green060;
  static const Color warning = yellow060;
  static const Color information = blue060;
  static const Color error = red060;
}

class AppStyle {
  static const SizedBox width2 = SizedBox(width: 2);
  static const SizedBox width4 = SizedBox(width: 4);
  static const SizedBox width6 = SizedBox(width: 6);
  static const SizedBox width8 = SizedBox(width: 8);
  static const SizedBox width12 = SizedBox(width: 12);
  static const SizedBox width16 = SizedBox(width: 16);
  static const SizedBox width24 = SizedBox(width: 24);

  static const SizedBox height2 = SizedBox(height: 2);
  static const SizedBox height4 = SizedBox(height: 4);
  static const SizedBox height6 = SizedBox(height: 6);
  static const SizedBox height8 = SizedBox(height: 8);
  static const SizedBox height12 = SizedBox(height: 12);
  static const SizedBox height16 = SizedBox(height: 16);
  static const SizedBox height24 = SizedBox(height: 24);
}

class AppTextStyle {
  static const FontWeight _bold = FontWeight.bold;

  static const TextStyle defaultText = TextStyle(fontSize: 16.0, fontWeight: _bold, color: Colors.white);

  static TextStyle heading0({Color color = Colors.white}) => TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: color);
  static TextStyle heading1({Color color = Colors.white}) => TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: color);
  static TextStyle heading2({Color color = Colors.white}) => TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: color);
  static TextStyle heading3({Color color = Colors.white}) => TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: color);

  static TextStyle title0({Color color = Colors.white}) => TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: color);
  static TextStyle title1({Color color = Colors.white}) => TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: color);
  static TextStyle title2({Color color = Colors.white}) => TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: color);
  static TextStyle title3({Color color = Colors.white}) => TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: color);

  static TextStyle body1({Color color = Colors.white}) => TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: color);
  static TextStyle body2({Color color = Colors.white}) => TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: color);
  static TextStyle body3({Color color = Colors.white}) => TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: color);

  static TextStyle table1({Color color = Colors.white}) => TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: color);
  static TextStyle table2({Color color = Colors.white}) => TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: color);

  static TextStyle caption1({Color color = Colors.white}) => TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: color);
  static TextStyle caption2({Color color = Colors.white}) => TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: color);
  static TextStyle caption3({Color color = Colors.white}) => TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: color);
  static TextStyle caption4({Color color = Colors.white}) => TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: color);

  static TextStyle minimum({Color color = Colors.white}) => TextStyle(fontSize: 8, fontWeight: FontWeight.w700, color: color);
}

class AppButtonStyle {

}