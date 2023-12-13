import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
                appBar: AppBar(
                    title: const Text('WhatsApp',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold)),
                    backgroundColor: Colors.teal,
                    bottom: const TabBar(tabs: [
                      Tab(
                        icon: Icon(Icons.groups_3, color: Color(0xffB9D8D7)),
                      ),
                      Tab(
                          child: Text('Chat',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                      Tab(
                          child: Text('Status',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                      Tab(
                          child: Text('Call',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ]),
                    actions: [
                      const Icon(Icons.search, color: Colors.white),
                      const SizedBox(width: 10),
                      PopupMenuButton(
                        icon: const Icon(Icons.more_vert_outlined,
                            color: Colors.white),
                        itemBuilder: (context) {
                          return const [
                            PopupMenuItem(
                              child: Text('New Group'),
                            ),
                            PopupMenuItem(
                              child: Text('Settings'),
                            ),
                            PopupMenuItem(child: Text('Logout')),
                          ];
                        },
                      )
                    ]),
                body: TabBarView(children: [
                  ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return const Center(
                          child: Text('Not Yet Available. '),
                        );
                      }),
                  ListView.builder(
                      itemCount: 49,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/profile_picture_${((index + 2) % 10) + 2}.jpg'),
                            backgroundColor: Colors.teal,
                          ),
                          title: Text('Contact#${index + 1}'),
                          subtitle:
                              const Text('It is what I do that defines me. ',
                                  style: TextStyle(
                                    color: Color(0xff889095),
                                    fontSize: 13,
                                  )),
                          trailing: Text('12:${index + 10} PM',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff84939A))),
                        );
                      }),
                  ListView.builder(
                      itemCount: 49,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: const Color(0xffeaeaea),
                                width: double.infinity,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 18.0, vertical: 2),
                                  child: Text('Recent Updates',
                                      style: TextStyle(color: Colors.teal)),
                                ),
                              ),
                              ListTile(
                                leading: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.teal,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.teal,
                                        width: 3,
                                      )),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/profile_picture_${((index + 2) % 10) + 2}.jpg'),
                                  ),
                                ),
                                title: Text('Contact#$index'),
                                subtitle: Text('${index + 10} minutes ago',
                                    style: const TextStyle(
                                      color: Color(0xff889095),
                                      fontSize: 13,
                                    )),
                              ),
                              Container(
                                color: const Color(0xffeaeaea),
                                width: double.infinity,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 18.0, vertical: 2),
                                  child: Text('Viewed Updates',
                                      style: TextStyle(color: Colors.teal)),
                                ),
                              ),
                            ],
                          );
                        } else {
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/profile_picture_${((index + 2) % 10) + 2}.jpg'),
                            ),
                            title: Text('Contact#$index'),
                            subtitle: Text('${index + 10} minutes ago',
                                style: const TextStyle(
                                  color: Color(0xff889095),
                                  fontSize: 13,
                                )),
                          );
                        }
                      }),
                  ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/profile_picture_${((index + 2) % 10) + 2}.jpg'),
                          ),
                          title: Text('Contact#${index + 1}',
                              style: TextStyle(
                                  color: index % 4 == 0
                                      ? Colors.red
                                      : Colors.black)),
                          subtitle: Row(
                            children: [
                              Icon(
                                index % 2 == 0
                                    ? Icons.call_received
                                    : Icons.call_made,
                                color:
                                    index % 4 == 0 ? Colors.red : Colors.teal,
                              ),
                              Text('${index + 10} minutes ago',
                                  style: const TextStyle(
                                    color: Color(0xff889095),
                                    fontSize: 13,
                                  ))
                            ],
                          ),
                          trailing: Icon(
                              index % 4 == 0 ? Icons.call : Icons.video_call,
                              color: Colors.teal),
                        );
                      })
                ]),
                floatingActionButton: FloatingActionButton(
                    backgroundColor: const Color(0xff008665),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: const Icon(Icons.add, color: Color(0xffFBFAFF)),
                    onPressed: () {}))));
  }
}
