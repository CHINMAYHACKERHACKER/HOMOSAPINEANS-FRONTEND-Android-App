import 'package:flutter/material.dart';
import 'package:homo_sapiens/utils/colors/colors.dart';
import 'package:homo_sapiens/utils/styles/sizedbox.dart';
import 'package:homo_sapiens/view/chat_screen/chat_screen.dart';
import 'package:provider/provider.dart';

class ChathomeScreen extends StatelessWidget {
  const ChathomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('E=TexTism'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings_outlined),
              ),
            ],
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: Align(
                alignment: Alignment.center,
                child: TabBar(
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorPadding: EdgeInsets.all(1),
                  padding: EdgeInsets.all(5),
                  isScrollable: true,
                  tabs: [
                    Tab(
                      child: Text('Messages'),
                    ),
                    Tab(
                      child: Text("Who's Online"),
                    ),
                    Tab(
                      child: Text('My HomoSapiens'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [RecentChatlist(), OnlineFriendlist(), myHomoChatlist()],
          )),
    );
  }
}

class RecentChatlist extends StatelessWidget {
  const RecentChatlist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppSize.kHeight10,
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              padding: EdgeInsets.all(2),
              itemBuilder: (ctx, i) {
                return Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    onTap: () => Navigator.push(
                        ctx, MaterialPageRoute(builder: (ctx) => ChatScreen())),
                    tileColor:
                        Color.fromARGB(255, 105, 102, 94).withOpacity(0.2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: NetworkImage(
                              'https://images.filmibeat.com/images/1/14484327/14484327-320_download(1).jpg',
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: Text('Aadhmi'),
                    subtitle: Text('6 new Messages'),
                    trailing: Icon(
                      Icons.circle,
                      size: 11,
                      color: AppColors.kGreen,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class myHomoChatlist extends StatelessWidget {
  const myHomoChatlist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.groups_2_outlined),
            title: Text('Create New Group'),
            subtitle: Divider(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, i) {
                return ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://images.filmibeat.com/images/1/14484327/14484327-320_download(1).jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  title: Text('Aadhmi'),
                  subtitle: Text('6 new Messages'),
                  trailing: IconButton(
                    // color: AppColors.kGreen,
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      // size: 11,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OnlineFriendlist extends StatelessWidget {
  const OnlineFriendlist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppSize.kHeight10,
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, i) {
                return ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://images.filmibeat.com/images/1/14484327/14484327-320_download(1).jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  title: Text('Aadhmi'),
                  subtitle: Text('6 new Messages'),
                  trailing: Icon(
                    Icons.circle,
                    color: AppColors.kGreen,
                    size: 11,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
