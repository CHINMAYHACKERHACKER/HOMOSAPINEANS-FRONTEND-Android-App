import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/home_screen/video/widgets/upload_video.dart';
import 'package:homo_sapiens/widgets/text_widget.dart';

class CreateShoot extends StatelessWidget {
  const CreateShoot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          AppSize.kHeight10,
          TextWidget(
            name: 'Add Title',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          AppSize.kHeight10,
          TextFormField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(2),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.kWhite))),
          ),
          AppSize.kHeight10,
          TextWidget(
            name: 'Add Description',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          AppSize.kHeight10,
          TextFormField(
            minLines: 8, // Set this
            maxLines: 11, // and this
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(2),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.kWhite))),
          ),
          Spacer(),
          Center(
            child: SizedBox(
                width: 320,
                height: 50,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(AppColors.kDarkPrimary)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UploadVideo()));
                    },
                    child: Text('Continue'))),
          ),
          AppSize.kHeight20,
        ]),
      ),
    );
  }
}
