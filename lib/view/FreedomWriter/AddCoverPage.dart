import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homo_sapiens/view/FreedomWriter/writer.dart';
import 'package:image_picker/image_picker.dart';

import '../../widgets/custom_appbar.dart';


class AddCoverPage extends StatefulWidget {
  const AddCoverPage({super.key});

  @override
  State<AddCoverPage> createState() => _AddCoverPageState();
}

class _AddCoverPageState extends State<AddCoverPage> {

  File? _image;

  Future getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  final TextEditingController _title = TextEditingController();
  final TextEditingController _subject = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: 220,
          // leading: Builder(
          //   builder: (context) => IconButton(
          //     icon: SvgPicture.asset(
          //       'assets/images/Group 383.svg',
          //       height: 27,
          //     ),
          //     onPressed: () => Scaffold.of(context).openDrawer(),
          //   ),
          // ),
          actions: const [
            CustomAppbar(),
          ],
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Builder(
                builder: (context) => IconButton(
                    icon: SvgPicture.asset(
                      'assets/images/Group 493.svg',
                      height: 27,
                    ),
                    onPressed: () {}
                  // => Scaffold.of(context).openDrawer(),
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: const [
                  Text(
                    'E = Add Cover Page',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // Positioned(
                  //   right: 2,
                  //   bottom: 16,
                  //   child: Text(
                  //     "∞",
                  //     style: TextStyle(
                  //       color: Color.fromARGB(255, 255, 255, 255),
                  //       fontSize: 14,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              // const Spacer(),
            ],
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1,color: Colors.grey)
                  
                ),
                width: MediaQuery.of(context).size.width,
                height: 180,
                // color: Colors.red,
                child: _image == null? Center(child: TextButton(onPressed: (){
                  getImage();
                },child: Text("Pick Cover Page"),)): Image.file(_image!,fit: BoxFit.cover
                  ,),
              ),
              _image == null ?SizedBox():Center(
                child: TextButton(onPressed: (){
                  getImage();
                },
                  child: Text("Change Image"),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _title,
                  decoration: InputDecoration(
                    hintText: 'Add Title'
                  ),

                ),
              )

            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(_title.text.isEmpty)
            {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Title Required!'),
                  duration: Duration(seconds: 2),
                ),
              );
            }else Navigator.push(context, MaterialPageRoute(builder: (context)=>FreedomWriterWriter(title: _title.text)));
          },
          child: Center(
            child: Icon(Icons.done),

          ),
        ),
      ),
    );
  }
}
