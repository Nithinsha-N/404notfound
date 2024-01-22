import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isDesktop(BuildContext context )=>
      MediaQuery.of(context).size.width>=700;
  bool isMobile(BuildContext context )=>
      MediaQuery.of(context).size.width<700;
  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;
    List<String> menu =[];
    return Column(
      children: [
        if(isDesktop(context))
          Container(
            height: size.height,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Stack(
              children: [
                buildtop(size, menu),
                Positioned(
                  top: 130,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: Container(
                      width: size.width/2,
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("404",
                            style: TextStyle(
                                fontSize: 50
                            ),),
                          Text("Page Not Found",
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Container(
                            height: 5,
                            width: 100,
                            color: Colors.black,
                          ),
                          SizedBox(height: 40,),
                          Container(
                            width: 300,
                            child: Text("Uh oh, we can't seem to find the page you're looking for. Try going back to the previous page or see our Help Center for more Information"),
                          ),
                          SizedBox(height: 40,),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 50,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child:Center(
                                child: Text("Go Home",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15
                                  ),),
                              ) ,
                            ),
                          )
                        ],

                      ) ,
                    ),
                  ),
                ),
                Positioned(
                    top: 100,
                    right: 70,
                    child: Image.asset("assets/images/main.png",height: 450,width: 450,)),

                const Positioned(
                    bottom: 5,
                    left: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        social(icon:"assets/images/facebook.png",),
                        social(icon:"assets/images/ins.png",),
                        social(icon:"assets/images/twitte.png" ,),
                        social(icon:"assets/images/youtube.png" ,),
                      ],
                    )),

                Positioned(
                    bottom: 5,
                    right: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Icon(Icons.copyright,size: 15,color: Colors.grey,),
                          Text("",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey
                            ),
                          )
                        ],

                      ),
                    ))
              ],

            ),
          ),
        if(isMobile(context))
          Flexible(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(image: AssetImage("assets/images/main.png"),fit: BoxFit.contain,),


                Positioned(
                  bottom: MediaQuery.of(context).size.height * 0,
                  left: MediaQuery.of(context).size.width * 0.065,
                  child: Column(
                    children: [

                      Text("404",
                        style: TextStyle(
                            fontSize: 50
                        ),),
                      Text("Page Not Found",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 25,
                              color: Color(0xFF59618B).withOpacity(0.17),
                            ),
                          ],
                        ),

                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:  Color(0xFF6371AA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          //
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(50)),
                          onPressed: () {},
                          child: Text(
                            "retry".toUpperCase(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

      ],
    );
  }

  Padding buildtop(Size size, List<String> menu) {
    int index;
    return Padding(
      padding: const EdgeInsets.only(left: 70,right: 70),
      child: Container(
        height: size.height*0.072,
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Adynamics",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),

            Row(
              children: List.generate(menu.length, (index) => buildmenu(menu,index),)

              ,
            ),
          ],

        ),
      ),
    );
  }

  Widget buildmenu(List<String> menu,int index)=> InkWell(
    onTap: (){},
    child: Container(
      margin: EdgeInsets.only(right: 20),
      child: Stack(
        children: [
          Text(menu[index],
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    ),
  );
}

class social extends StatelessWidget {
  const social({
     Key? key, required this.icon,
  }) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(icon,height: 20,color: Colors.grey,),
        )
      ],
    );
  }
}