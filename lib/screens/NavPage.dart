import 'package:avito/addSellItem/selectImages.dart';
import 'package:avito/drawer/drawer.dart';
import 'package:avito/screens/SearchScreen.dart';
import 'package:avito/screens/bottomBarScreens/Account.dart';
import 'package:avito/screens/bottomBarScreens/ChatPage.dart';
import 'package:avito/screens/bottomBarScreens/HomePage.dart';
import 'package:avito/screens/bottomBarScreens/NotificartionsPage.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavPage extends StatefulWidget {

  int pageIndex;
  NavPage({this.pageIndex});

  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {

   GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

     @override
  void initState() {
    _incrementTab(0);
    super.initState();
  }
 
  void _incrementTab(index) {
    setState(() {
      widget.pageIndex = index;
    });
  }

  List _pages = [HomePage(),AccountPage(),ChatPage(),NotifiPage(), ];
  @override
  Widget build(BuildContext context) {
  
    return DefaultTabController(
      length: 3,
          child: Scaffold(
        key: _scaffoldKey,
                drawer: MyDrawer(),
         
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(icon: Icon(Icons.menu,color: Colors.black,), 
          onPressed: () {
                      _scaffoldKey.currentState.openDrawer();
                
                    },),
           backgroundColor: Colors.white,
         centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            FlutterLogo(colors: Colors.orange,),
            SizedBox(width: 3,),
            Text('AVITO',style: TextStyle(color: Colors.black,fontFamily: 'New',fontWeight: FontWeight.bold),)
          ],),
          actions: <Widget>[
             IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: () { 
            Navigator.push(
                                context,
                                 MaterialPageRoute(
                                   fullscreenDialog: true,
                                 builder: (context) => SearchPage(),
                                 ));
           },),
          ],
 bottom: widget.pageIndex == 1 ?
        TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.filter_list,
                  color: Colors.blue[600],)),
                  Tab(icon: Icon(Icons.favorite_border,color: Colors.redAccent,)),
                  Tab(icon: Icon(Icons.star_border,color: Colors.yellow,)),
                ],
              )
         
            :
            PreferredSize(
           preferredSize: Size.fromHeight(0.0), child: Container(),),
      
        ),
        body: SingleChildScrollView(child: _pages[widget.pageIndex!=null ? widget.pageIndex :0]),
        bottomNavigationBar: _buildBottomNavBar(),

        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.redAccent,
          onPressed: (){
            Navigator.push(
                                context,
                                 MaterialPageRoute(
                                 builder: (context) => SelectImages(),
                                 ));
          },
          label: Text('Sell',style: TextStyle(color: Colors.white,fontFamily: 'Ptsans'),),
          icon: Icon(Icons.photo_camera,color: Colors.white,),
        ), 
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
       
      items: <BottomNavigationBarItem>[
        bottomBarItem(Icon(Icons.home),'Shop'),
        bottomBarItem(Icon(Icons.person_outline), 'Account'),
        bottomBarItem(Icon(MdiIcons.chatOutline), 'Chat'),
        bottomBarItem(Icon(Icons.notifications_active), 'Notification'),
      ],
      onTap: (index) {
        _incrementTab(index);
      },
      currentIndex: widget.pageIndex != null ? widget.pageIndex : 0,
      type: BottomNavigationBarType.fixed,
      fixedColor: Color(0xffb078080),
    );
  }

  BottomNavigationBarItem bottomBarItem(Icon icon, String text) {
    
    return BottomNavigationBarItem(icon: icon, 
    title: Text(text,style: TextStyle(fontFamily: 'Lutta'),));
  }

  
}


