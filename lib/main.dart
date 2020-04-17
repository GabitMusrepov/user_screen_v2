import 'package:flutter/material.dart';
import 'package:userscreenv3app/ApprovedScreen.dart';
import 'package:userscreenv3app/ForMyApprovalScreen.dart';
import 'package:userscreenv3app/ProcessingScreen.dart';
import 'package:userscreenv3app/WaitScreen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(

      ),
      home: ExpenseApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ExpenseApp extends StatefulWidget {
  @override
  _ExpenseAppState createState() => _ExpenseAppState();
}

class _ExpenseAppState extends State<ExpenseApp> {
  var screens = [
    WaitScreen(),
    ProcessingScreen(),
    ApprovedScreen(),
    ForMyApprovalScreen(),
  ]; //screens for each tab
  Widget SelectedScreen;
  int selectedTab = 0;

  @override
  void initState() {
    SelectedScreen = screens[0];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          '',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        actions: <Widget>[
          IconButton(
            //Here additional Documents must be ATTACHED
            padding: const EdgeInsets.all(8.0),
            icon: Icon(Icons.attach_file),
            color: Colors.black,
            onPressed: () {},
            iconSize: 20,
          ),
          RaisedButton(
            // KAK udlennit etu knopku?
            elevation: 0.0,
            onPressed:
                () {}, // When pressed, the Expense Report is sent for Approval (until approved, moved to PROCESING)
            color: Colors.white,
            padding: const EdgeInsets.all(1.0),
            child: Icon(
              Icons.send,
              color: Colors.green,
              size: 20,
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SelectedScreen,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail:
              Text('gmusrepov@kpmg.kz',style: TextStyle(
                  fontFamily: 'KPMG_Light',
                  fontSize: 15,
                  color: Colors.white
              ),),
              accountName:
              Text('Gabit Musrepov',style: TextStyle(
                  fontFamily: 'KPMG_Light',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),), //need to INTEGRATE WITH KPMG LOGINS
              currentAccountPicture: CircleAvatar(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                    image: AssetImage(
                        'images/logo.png'), //need to INTEGRATE WITH KPMG LOGINS
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Help',style: TextStyle(
                  fontFamily: 'KPMG_Light',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),
              onTap: () {},
            ),
            Divider(
              height: 0.1,
            )
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.cloud_upload,color: Colors.black,),
              title: Text("WAIT LIST",style: TextStyle(
                  fontSize: 9,
                  color: Colors.black,fontWeight: FontWeight.bold),)
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.cloud,color: Colors.black,),
              title: Text("PROCESSING",style: TextStyle(
                  fontSize: 11,
                  color: Colors.black,fontWeight: FontWeight.bold),)
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.cloud_done,color: Colors.black,),
              title: Text("APPROVED",style: TextStyle(
                  fontSize: 11,
                  color: Colors.black,fontWeight: FontWeight.bold),)
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.notifications,color: Colors.black,),
              title: Text("FOR MY APPROVAL",style: TextStyle(
                  fontSize: 11,
                  color: Colors.black,fontWeight: FontWeight.bold),)
          ),

        ],
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            selectedTab = index;
            SelectedScreen = screens[selectedTab];
          });
        },
        showUnselectedLabels: true,
        iconSize: 30,
      ),
    );
  }
}

