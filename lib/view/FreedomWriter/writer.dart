import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import '../../widgets/custom_appbar.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter/widgets.dart' as widgets;

import 'VedioSearcher.dart';


class FreedomWriterWriter extends StatefulWidget {
   FreedomWriterWriter({super.key, required this.title});

  String title;

  @override
  State<FreedomWriterWriter> createState() => _FreedomWriterWriterState();
}

class _FreedomWriterWriterState extends State<FreedomWriterWriter> {

    // final ZefyrC
    //ontroller _controller = ZefyrController(NotusDocument());

  final QuillController _controller = QuillController.basic();


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

  // late VideoPlayerController _controller;
  // late Future<void> _initializeVideoPlayerFuture;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _controller = VideoPlayerController.network(
  //       'https://example.com/path/to/video.mp4');
  //   _initializeVideoPlayerFuture = _controller.initialize();
  //   _controller.setLooping(true);
  // }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        bottomSheet: Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                getImage();

              }, child: widgets.Text('Add Image',style: TextStyle(fontSize:15,color: Colors.black ),)),
              TextButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>VedioSearcher()));
              }, child: widgets.Text('Add Vedio',style: TextStyle(fontSize:15,color: Colors.black ))),
            ],
          ),
          
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.done,size: 30,),
        ),
        appBar: AppBar(
          title: Stack(
            clipBehavior: Clip.none,
            children:  [

              // Text(""),
              widgets.Text(
                'E = Freedom Writers',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Positioned(
                right: 2,
                bottom: 16,
                child: widgets.Text(
                  "∞",
                  style: widgets.TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 14
                  ),// color: Color.fromARGB(255, 255, 255, 255),

                ),
              ),
            ],
          ),


        ),
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   leadingWidth: 220,
        //   // leading: Builder(
        //   //   builder: (context) => IconButton(
        //   //     icon: SvgPicture.asset(
        //   //       'assets/images/Group 383.svg',
        //   //       height: 27,
        //   //     ),
        //   //     onPressed: () => Scaffold.of(context).openDrawer(),
        //   //   ),
        //   // ),
        //   actions: const [
        //     CustomAppbar(),
        //   ],
        //   leading: Row(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       // Builder(
        //       //   // builder: (context) => IconButton(
        //       //   //     icon: SvgPicture.asset(
        //       //   //       'assets/images/Group 493.svg',
        //       //   //       height: 27,
        //       //   //     ),
        //       //   //     onPressed: () {}
        //       //   //     // => Scaffold.of(context).openDrawer(),
        //       //   //     ),
        //       //   IconV=
        //       // ),
        //       // IconButton(onPressed: (){}, icon: Icon(widgets.Icons.arrow_back_ios)),
        //
        //       // const Spacer(),
        //     ],
        //   ),
        // ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(height: 20,),
                // Container(
                //   margin: EdgeInsets.all(20),
                //   width: MediaQuery.of(context).size.width,
                //   height: 50,
                //   decoration: BoxDecoration(
                //       color: Color.fromARGB(255, 255, 255, 255),
                //       borderRadius: BorderRadius.circular(10)
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Icon(Icons.add_circle_sharp,size: 40,color: Colors.black,),
                //       widgets.Text("Add Cover Page",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                //       SizedBox(width: 10,)
                //     ],
                //   )
                // ),
                // widgets.Text(widget.title),
                // SizedBox(
                //   height: 30,
                // ),
                //
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      QuillToolbar.basic(controller: _controller),
                      QuillEditor.basic(controller: _controller, readOnly: false),
                      // widgets.Text(
                      //     'Title: ${widget.title}',style: TextStyle(fontSize: 20),),
                  _image == null? SizedBox():Image.file(_image!),

                    ],
                  ),
                ),







               
                
              ],


            ),
          )
        ),
      ),
    );
  }
}
