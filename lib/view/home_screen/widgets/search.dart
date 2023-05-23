import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/home_screen/widgets/pop_btn.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextFormField(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1.5 / 1.9,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: 10,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: PopupBtn(),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                          'https://s.hdnux.com/photos/51/23/24/10827008/4/rawImage.jpg'),
                    ),
                    const Text("Will Smith"),
                    const Text("Actor"),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('Watch my story')),
                    AppSize.kHeight5,
                  ],
                ),
              ),
            );
          }),
    );
  }
}
