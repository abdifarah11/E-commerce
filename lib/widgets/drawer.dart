import 'package:flutter/material.dart';

class drawerwidget extends StatelessWidget {
  const drawerwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
      
      padding: EdgeInsets.zero,
      children: const [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: const Color.fromARGB(255, 227, 76, 49)),
          accountName: Text('welcom',style: TextStyle(fontSize: 18),),
         accountEmail: Text('🅰️RⓂ️44Nℹ️'),
         currentAccountPicture: CircleAvatar(foregroundImage: AssetImage('assets/profils.svg'),
         ),
         ),
         ListTile(title: Text('new group'),
         leading: Icon(Icons.group_outlined),
         )  ,
          ListTile(title: Text('contect'),
         leading: Icon(Icons.person_outlined),
         )   , 
          ListTile(title: Text('calls'),
         leading: Icon(Icons.call_outlined),
         )   ,  
          ListTile(title: Text('saved messages'),
         leading: Icon(Icons.bookmark_outlined),
         )   ,
         Divider()  , 
          ListTile(title: Text('invite friends'),
         leading: Icon(Icons.person_add_outlined),
         )   ,  
          ListTile(title: Text('telegram featurs'),
         leading: Icon(Icons.help_outline),
         )   ,                            
         ],
          
    ),
            );
  }
}