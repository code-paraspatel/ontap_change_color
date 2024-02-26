import 'package:flutter/material.dart';


class ChangeColorScreen extends StatefulWidget {
  const ChangeColorScreen({super.key});

  @override
  State<ChangeColorScreen> createState() => _ChangeColorScreenState();
}

class _ChangeColorScreenState extends State<ChangeColorScreen> {
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.white,
    Colors.black12,
    Colors.indigo
  ];
 int currentIndex=0;

 changeColor(){
   setState(() {
     currentIndex=(currentIndex+1)%colors.length;
   });
 }
 int currentPage=0;
 PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors[currentIndex],
      body: InkWell(
        onTap: () {
          changeColor();
          // setState(() {
          //   if(currentPage==8){
          //     currentPage=0;
          //   }else{
          //     currentPage++;
          //    // pageController.nextPage(duration: const Duration(seconds:1 ), curve: Curves.bounceOut);
          //   }
          // });
        },
        // child: PageView.builder(
        //   // onPageChanged: (value) {
        //   //   setState(() {
        //   //       currentPage = value;
        //   //
        //   //   });
        //   // },
        //   // controller: pageController,
        //   itemCount: colors.length,
        //     itemBuilder:(context, index) {
        //       return Container(
        //         color: colors[currentPage],
        //       );
        //     }, ),
      ),
    );
  }
}
