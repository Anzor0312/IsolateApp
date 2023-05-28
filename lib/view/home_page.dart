import 'package:flutter/material.dart';
import 'package:newsapikey/view/category/apple_widget.dart';
import 'package:newsapikey/view/category/business_widget.dart';
import 'package:newsapikey/view/category/magazin_widget.dart';
import 'package:newsapikey/view/category/technology_widget.dart';
import 'package:newsapikey/view/category/tesla_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(
      length: 5,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            SizedBox(
              width: size.width*0.8,
              height: 40,
              child: TextFormField(
                
                decoration: InputDecoration(
                  suffix: const Icon(Icons.search,color: Colors.black,),
                    hintText: "Dogecoin to the Moon...",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),const SizedBox(width: 15,),
            Container(
          width: 32,
          height: 32,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
                 gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFFF3A44),
                Color(0xFFFF8086),
              ]),
          ),child: const Center(child:  Icon(Icons.notifications_none_outlined))
        )
          ],
        ),
        bottom: TabBar(
            labelColor: Colors.black,
            isScrollable: true,
            controller: _tabController,
            tabs: const [
              Tab(
                text: 'Apple',
              ),
              Tab(
                text: 'Tesla',
              ),
              Tab(
                text: "Business",
              ),
              Tab(
                text: "Technology",
              ),
              Tab(
                text: "Articles",
              )
            ]),
      ),
      body: TabBarView(controller: _tabController, children: _widgets),
      floatingActionButton: SizedBox(
        width: size.width*0.7,
        height: size.height*0.09,
        child:Container(
          decoration: BoxDecoration(
            color: Colors.white,
           borderRadius: BorderRadius.circular(33),          ),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.home_outlined,
                  color: Colors.black,size: 30,)),
                  const Text("Home")
                ],
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border,
                  color: Colors.black,size: 30,)),
                  const Text("Favorite")
                ],
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle_outlined,
                  color: Colors.black,size: 30,)),
                  const Text("Profile")
                ],
              )
            ],
           ),
        ),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  // ignore: prefer_final_fields
  List<Widget> _widgets = const [
    ApplePage(),
    TeslaPage(),
    BusinessPage(),
    TechnologyPage(),
    MagazinPage()
  ];
}
