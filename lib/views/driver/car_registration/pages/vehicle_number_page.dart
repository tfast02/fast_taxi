import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class VehicleNumberPage extends StatefulWidget {
  const VehicleNumberPage({Key? key,required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  State<VehicleNumberPage> createState() => _VehicleNumberPageState();
}

class _VehicleNumberPageState extends State<VehicleNumberPage> {

  TextFieldWidget(String title,TextEditingController controller,
      Function validator,{Function? onTap,bool readOnly = false}) {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(
                color: Colors.black.withOpacity(0.05),
                spreadRadius: 2,
                blurRadius: 1
          )],
          borderRadius: BorderRadius.circular(8)
      ),
      child: TextFormField(
        readOnly: readOnly,
        onTap: ()=> onTap!(),
        validator: (input)=> validator(input),
        controller: controller,

        style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: const Color(0xffA7A7A7)),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          hintStyle:  GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: const Color(0xff7D7D7D).withOpacity(0.5)),
          hintText: title,
          border: InputBorder.none,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Biển số xe đăng ký?',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black
          ),
        ),
        const SizedBox(height: 30,),
        TextFieldWidget(
            'Nhập biển số xe',
            widget.controller,
                (String v){},
            readOnly: false
        ),
      ],
    );
  }
}
