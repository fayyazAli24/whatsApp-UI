import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('WhatsApp'),

            bottom:   const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.groups),

                ),
               Tab(
                 child: Text('Chats'),
               ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),

              ],
            ),

            actions:  [
              const
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 20,),
              Icon(Icons.search),
              PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context,)=>[
                  const PopupMenuItem(
                      value: 1,
                      child: Text('New group')
                  ),
                  const PopupMenuItem(
                      value: 2,
                      child: Text('New broadcast')
                  ),
                  const PopupMenuItem(
                      value: 3,
                      child: Text('Linked devices')
                  ),
                  const PopupMenuItem(
                      value: 4,
                      child: Text('Starred messages')
                  ),
                  const PopupMenuItem(
                      value: 5,
                      child: Text('Settings')
                  )
                ],
                   )
            ],
          ),
          body: TabBarView(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.group_add_sharp,color: Colors.white,),

                    backgroundColor: Color(0xffC0C0C0),
                  ),
                  title: Text('New community'),

                ),
              ),
              Column(
                  children:const [
                    ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://qph.cf2.quoracdn.net/main-qimg-17cc257598e367a6002c52fe512c9759-lq'),
                      radius: 23,
                    ),
                    title: Text('Thomas shelby',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('No fucking fighting'),
                    trailing: Text('3 PM'),
                  ),
                    ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://i.pinimg.com/550x/e9/00/75/e9007586a38c35d7fe105e24c5d64bb8.jpg'),
                        radius: 23
                    ),
                    title: Text('Batman',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text('Where is she'),
                    trailing: Text('1 AM'),
                  ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://img.mensxp.com/media/content/2023/Jan/header-credit-Warner-Bros_63ca3bd72d58a.jpeg?w=820&h=540&cc=1'),
                          radius: 23
                      ),
                      title: Text('Joker',style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('Do you wanna know how i got these scars?'),
                      trailing: Text('11:19 PM'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://c4.wallpaperflare.com/wallpaper/129/788/47/ragnar-lodbrok-digital-art-vikings-sword-wallpaper-preview.jpg'),
                          radius: 23
                      ),
                      title: Text('Ragnar Lothbrok',style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('you see guided my fate'),
                      trailing: Text('4 PM'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://static1.cbrimages.com/wordpress/wp-content/uploads/2022/12/john-wick-chapter-4-poster-header.jpg'),
                          radius: 23
                      ),
                      title: Text('John wick',style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('fuck'),
                      trailing: Text('1:50 AM'),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://w0.peakpx.com/wallpaper/400/136/HD-wallpaper-john-shelby-peaky-blinders-series-shelby-thomas-shelby.jpg'),
                          radius: 23
                      ),
                      title: Text('John shelby',style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('are you laughing at my brother?'),
                      trailing: Text('2:13 PM'),
                    )
                  ]
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 10,),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://mr.comingsoon.it/imgdb/video/911_big.jpg'),
                      radius: 23,
                    ),
                    title: Text('My status',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    subtitle: Text('Tap to add status update'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text('Recent updates',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:   [
                  const SizedBox(height: 10,),
                  const ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.link),
                      backgroundColor: Colors.teal,
                    ),
                    title: Text('Create call link',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    subtitle: Text('Share a link for your WhatsApp call'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text('Recent',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage('https://qph.cf2.quoracdn.net/main-qimg-17cc257598e367a6002c52fe512c9759-lq'),
                    ),
                    title: Text('Thomas shelby',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Row(
                      children: const [
                        Icon(Icons.call_received,color: Colors.red,),
                        SizedBox(width: 5,),

                        Text('Today 3:15 PM')
                      ],
                    ),
                    trailing:Icon(Icons.call) ,
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage('https://static1.cbrimages.com/wordpress/wp-content/uploads/2022/12/john-wick-chapter-4-poster-header.jpg'),
                    ),
                    title: Text('John Wick',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Row(
                      children: const [
                        Icon(Icons.call_made_sharp,color: Colors.green,),
                        SizedBox(width: 5,),

                        Text('Today 1:05 PM')
                      ],
                    ),
                    trailing:Icon(Icons.call) ,
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage('https://i.pinimg.com/550x/e9/00/75/e9007586a38c35d7fe105e24c5d64bb8.jpg'),
                    ),
                    title: Text('Batman',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Row(
                      children: const [
                        Icon(Icons.call_made_sharp,color: Colors.green,),
                        SizedBox(width: 5,),

                        Text('Today 12:00 PM')
                      ],
                    ),
                    trailing:Icon(Icons.call) ,
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage('https://img.mensxp.com/media/content/2023/Jan/header-credit-Warner-Bros_63ca3bd72d58a.jpeg?w=820&h=540&cc=1'),
                    ),
                    title: Text('Joker',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Row(
                      children: const [
                        Icon(Icons.call_received,color: Colors.red,),
                        SizedBox(width: 5,),

                        Text('Today 3:15 PM')
                      ],
                    ),
                    trailing:Icon(Icons.call) ,
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage('https://qph.cf2.quoracdn.net/main-qimg-17cc257598e367a6002c52fe512c9759-lq'),
                    ),
                    title: Text('Thomas shelby',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Row(
                      children: const [
                        Icon(Icons.call_made_sharp,color: Colors.green,),
                        SizedBox(width: 5,),

                        Text('Today 2 PM')
                      ],
                    ),
                    trailing:Icon(Icons.call) ,
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage('https://c4.wallpaperflare.com/wallpaper/129/788/47/ragnar-lodbrok-digital-art-vikings-sword-wallpaper-preview.jpg'),
                    ),
                    title: Text('Ragnar Lothbrok',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Row(
                      children: const [
                        Icon(Icons.call_made_sharp,color: Colors.green,),
                        SizedBox(width: 5,),

                        Text('Today 9:05 PM')
                      ],
                    ),
                    trailing:Icon(Icons.video_call) ,
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: NetworkImage('https://qph.cf2.quoracdn.net/main-qimg-17cc257598e367a6002c52fe512c9759-lq'),
                    ),
                    title: Text('Thomas shelby',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Row(
                      children: const [
                        Icon(Icons.call_made_sharp,color: Colors.green,),
                        SizedBox(width: 5,),

                        Text('Today 8:00 PM')
                      ],
                    ),
                    trailing:Icon(Icons.call) ,
                  ),
                ],
              )
            ],
          ),
    ));
  }
}
