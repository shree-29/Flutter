import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage()
  )
  );
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index=0;
  String _user="K K Shree";
  void alert(BuildContext context){
    TextEditingController _textcontroller=TextEditingController();
    var alertDialog=AlertDialog(
      content: Container(
        height: 80,
        child: TextField(
            controller:_textcontroller ,
            keyboardType: TextInputType.text,
            maxLength: 10,
            decoration: InputDecoration(
              hintText: "Enter the name",
              labelText: "UserName",
              hintStyle: TextStyle(color: Colors.grey[100]) ,
              labelStyle: TextStyle(color: Colors.teal),
              border: OutlineInputBorder(),
            )
        ),
      ),
      actions: [
        ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Cancel")),
        ElevatedButton(onPressed: (){setState(() {
          _user=_textcontroller.text;
          Navigator.pop(context);
        },
        );
        }, child: Text("Done")),
      ],
    );
    showDialog(context: context, builder: (BuildContext context){
      return alertDialog;
    });
  }

  List<Widget> _tab = <Widget>[
    Main(),
    Match(),
    More(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Chelsea",style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 20,
            ),),
          ),
          backgroundColor: Colors.blue[900],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20),
                color: Colors.blue[900],
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 108,
                        decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/61ny4U4xI8L._AC._SX._UX._SY._UY_.jpg'),
                              fit: BoxFit.fill,
                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Text(_user,style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),),
                          SizedBox(width: 100,),
                          InkWell(
                            onTap: (){
                              alert(context);
                            },
                            child: Text("Edit Username",style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.grey,
                            ),),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile",style: TextStyle(
                  fontSize: 20,
                ),),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag_outlined),
                title: Text("Shop",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout",style: TextStyle(
                  fontSize: 20,
                ),
                ),
                onTap: (){},
              ),
            ],
          ),
        ),
        body: _tab.elementAt(_index),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 25,
          elevation: 30,
          showUnselectedLabels: true,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedFontSize: 20,
          currentIndex: _index,
          backgroundColor: Colors.blue[900] ,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.sports_soccer,color: Colors.white),label: "Matches",),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz,color: Colors.white),label: "More"),
          ],
          onTap: (index){
            setState(() {
              _index=index;
            });
          },
        ),
      ),
    );
  }
}



class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CarouselSlider(
          items: [
            Container(
              margin: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://pbs.twimg.com/media/E2lcsXXXIAg9wD4.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://www.si.com/.image/t_share/MTgyMzgwODAzMjU3Mjc5NjE5/e6gyxilxmamcek-.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iWqdoqGLByME/v1/-1x-1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://res.cloudinary.com/chelsea-production/image/upload/c_fill,dpr_auto,f_auto,fl_lossy,g_auto,h_320,q_auto,w_640,z_1.0/v1/editorial/news/2021/05/13/21_22_Kit_Launch_Article_header"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage("https://i1.wp.com/cfcloverslondon.com/wp-content/uploads/2021/07/IMG_20210714_223347_176.jpg?resize=696%2C383&ssl=1"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

          ],

          options: CarouselOptions(
            height: 240.0,
            enlargeCenterPage: true,
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15,left: 20),
          child: Text("NEWS",style: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
          ),
        ),
        Container(
          height: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.grey[200],
          ),
          margin: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
          child:Column(
            children: [
              SizedBox(height: 10,),
              news('Ziyech Starts as Chelsea thrash Peterborough 6-1','https://www.si.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTgyNDkzMTY4NzI4NTQ4Njgw/e6fr3tuwqaipwmu.jpg'),
              Divider(indent: 10,endIndent: 10,),
              news('Armando Broja signs a new 5 year deal for Chelsea','https://static.footballtransfers.com/images/cn/image/upload/q_90,w_1200,h_1200,ar_1.1/footballcritic/kqp3ju8u5wiproob3h4j'),
              Divider(indent: 10,endIndent: 10,),
              news('Chelsea Eyeing Bayern Munich Striker amid Haaland interest','https://cdn.vox-cdn.com/thumbor/FS0cNiUL2kZoQiGpVGw_4IesGTs=/0x0:5184x3456/920x613/filters:focal(1992x596:2820x1424):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/69604473/1264802003.0.jpg'),
              Divider(indent: 10,endIndent: 10,),
              news('Oliver Giroud Completes AC Milan Deal','https://a.espncdn.com/combiner/i?img=%2Fphoto%2F2021%2F0717%2Fr881493_1296x729_16%2D9.jpg&w=570&format=jpg'),
              Divider(indent: 10,endIndent: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 470),
                child: InkWell(
                  onTap: (){},
                  child: Text("More",style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
news (String txt,String photo){
  return Expanded(child: Row(
    children: [
      SizedBox(width: 8,),
      Expanded(flex: 3,child: Image(
        image: NetworkImage(photo),
        fit: BoxFit.fitWidth,
      ),),
      SizedBox(width: 10,),
      Expanded(flex: 6,child: Text(txt,style: TextStyle(
          fontSize: 20
      ),)),
    ],
  ),);
}
class Match extends StatefulWidget {
  const Match ({Key? key}) : super(key: key);

  @override
  _MatchState createState() => _MatchState();
}

class _MatchState extends State<Match > {
  final titles=["Bournemouth","Arsenal","Tottenham","Liverpool","Leeds Utd",];
  final match=["Match-1","Match-2","Match-3","Match-4","Match-5",];
  final opp=[
    'https://upload.wikimedia.org/wikipedia/en/thumb/e/e5/AFC_Bournemouth_%282013%29.svg/1200px-AFC_Bournemouth_%282013%29.svg.png',

    'data:image/png;base64,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',

    'data:image/png;base64,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',

    'https://cdn.shopify.com/s/files/1/1888/7339/files/Liverpool_07_grande.jpg?v=1498035804',

    'data:image/png;base64,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'
  ];
  @override
  Widget build(BuildContext context) {
    int _index=1;
    return Scaffold(
      body:ListView.separated(
          separatorBuilder: (context,index){
            return Divider();
          },
          itemCount: titles.length,
          itemBuilder: (context,index){
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListTile(
                  title: Row(children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/61ny4U4xI8L._AC._SX._UX._SY._UY_.jpg'),
                      radius: 25,
                    ),
                    Text("      Chelsea       vs        "+titles[index]+"     "),
                    CircleAvatar(backgroundImage: NetworkImage(opp[index]),radius: 25,)
                  ],),
                  leading: Text(match[index]),
                  trailing: Text("Details",style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue
                  ),),
                ),
              ),
            );
          }),
    );
  }
}

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.black,
                Colors.blue.shade900,
                Colors.black,
              ]
          )
      ),
      child: GridView.count(crossAxisCount: 1,
        //scrollDirection: Axis.horizontal,
        childAspectRatio: 150/ 12,
        children: [
          cont("Play Predictor", Icons.card_giftcard_outlined),
          Divider(color: Colors.white),
          cont("FanChat", Icons.chat_bubble_outline_sharp),
          Divider(color: Colors.white,),
          cont("History", Icons.history),
          Divider(color: Colors.white,),
          cont("Official Supporters Club", Icons.person_outline),
          Divider(color: Colors.white,),
          cont("Squad", Icons.group_add_outlined),
          Divider(color: Colors.white,),
          cont("Send Us Your Feedback", Icons.hearing),
          Divider(color: Colors.white,),
        ],
      ),
    );
  }
}

cont (String txt,IconData ic){
  return Container(
    child: InkWell(
      onTap: (){},
      child: Row(
        children: [
          SizedBox(
            width: 80,
          ),
          Icon(ic,size: 20,color: Colors.white,),
          SizedBox(width: 20,),
          Text(txt,style: TextStyle(
              fontSize: 15,
              color: Colors.white
          ),),
        ],
      ),
    ),
    margin: EdgeInsets.symmetric(horizontal: 10),
  );
}





