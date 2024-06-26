import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DocumentUploadedPage extends StatefulWidget {
  const DocumentUploadedPage({Key? key}) : super(key: key);

  @override
  State<DocumentUploadedPage> createState() => _DocumentUploadedPageState();
}

class _DocumentUploadedPageState extends State<DocumentUploadedPage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        const Text(
          'Giấy đăng ký xe',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black
          ),
        ),

        const SizedBox(height: 30,),
        Container(
          width: Get.width,
          height: Get.height*0.1,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffE3E3E3).withOpacity(0.4),
              border: Border.all(
                  color: const Color(0xff2FB654).withOpacity(0.26),
                  width: 1
              )
          ),
          child: Row(
            children: [
              const Icon(Icons.cloud_upload,size: 40,color: Color(0xff7D7D7D),),

              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: const [
                  Text(
                    'Đăng ký thông tin xe',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                    ),
                  ),
                  Text(
                    'Chờ phê duyệt',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff62B62F)
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
