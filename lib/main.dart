import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

void main() => runApp(MaterialApp(
      home: home(),
      debugShowCheckedModeBanner: false,
    ));

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int currentIndex;
  @override
  void initState() {
    super.initState();
    currentIndex=0;
  }
  changepage(int index){
  setState(() {
    currentIndex=index;
  });
  }
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey,
          body: Column(
            children: <Widget>[
              
              Container(
                child: Align(
                    child: Material(
                  elevation: 14.0,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Container(
                      width: 350.0,
                      height: 100.0,
                      child: Center(
                          child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Icon(
                              Icons.format_align_center, color: Colors.black,

                              ),
                          ),
                          Expanded(
                            child: Text("المزيد",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      )
                      )
                      ),
                )
                ),
                
              ),
                
                  Column(
                    children:<Widget>[
              ListTile(
               
               onTap: (){},
                  leading:CircleAvatar(
                    backgroundColor:Colors.green,
                    child:Icon(FontAwesomeIcons.phoneVolume,
                    color: Colors.white,
                    )
                  ),
                   title:Text("تواصل معنا",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),
                   ),
              ),
              Padding(
                      padding: EdgeInsets.all(6.0),

              ),
              ListTile(
                onTap: (){},
                  leading:CircleAvatar(
                    backgroundColor:Colors.green,
                    child:Icon(FontAwesomeIcons.award,
                    color:Colors.white)
                  ),
                  title: Text("تقييم التطبيق",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
              ),
              Padding(padding: EdgeInsets.all(6.0)),
              ListTile(
                onTap: (){},
                  leading:CircleAvatar(
                    backgroundColor:Colors.green,
                    child:Icon(FontAwesomeIcons.globe,
                    color: Colors.white,
                    )
                  ),
                  title:Text("موقعنا الالكتروني",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),)
              ),
              ListTile(
                onTap: (){},
                  leading:CircleAvatar(
         backgroundColor: Colors.green,
         child: Icon(FontAwesomeIcons.info,
         color:Colors.white),
                  ),
                  title:Text("الشروط والاحكام",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),)
              ),
              Padding(padding: EdgeInsets.all(6.0)),
              ListTile(
                onTap: (){},
                  leading:CircleAvatar(
                    backgroundColor:Colors.green,
                    child:Icon(FontAwesomeIcons.gift,
                    color:Colors.white
                    )
                  ),
                  title:Text("برنامج الولاء",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold))
              ),
              Padding(padding: EdgeInsets.all(6.0)),
              ListTile(
                onTap: (){},
                  leading:CircleAvatar(
               backgroundColor: Colors.green,
               child: Icon(FontAwesomeIcons.seedling,
               color:Colors.white,),
                  ),
                  
                  title: Text("عن ذات",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold)),
              )
            ]
                  ),
                
          
   
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){},
          child:Icon(FontAwesomeIcons.ellipsisH),
          backgroundColor:Colors.green
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          bottomNavigationBar: BubbleBottomBar(
            items: <BubbleBottomBarItem>[
              BubbleBottomBarItem(
                icon: Icon(FontAwesomeIcons.images,color: Colors.black,),
                activeIcon: Icon(FontAwesomeIcons.images,color: Colors.green,),
                title: Text("معرض الصور"),
                backgroundColor: Colors.green
                ),
                BubbleBottomBarItem(
                icon: Icon(Icons.home,color: Colors.green,),
                activeIcon: Icon(Icons.home,color: Colors.green,),
                title: Text("الرئيسيه"),
                backgroundColor: Colors.green
                )
            ],
             opacity: 0.2,
             backgroundColor: Colors.white,
             borderRadius: BorderRadius.vertical(top:Radius.circular(16.0)),
             currentIndex: currentIndex,
             hasInk: true,
             inkColor: Colors.black,
             hasNotch: true,
             fabLocation: BubbleBottomBarFabLocation.end,
             onTap: changepage,
             ),
            
        )
        );
  }
}
