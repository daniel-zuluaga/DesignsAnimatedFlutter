import 'package:flutter/material.dart';

class AnimatedPage extends StatelessWidget {
  const AnimatedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSquare(),
      ),
    );
  }
}

class AnimatedSquare extends StatefulWidget {
  const AnimatedSquare({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimatedSquare> createState() => _AnimatedSquareState();
}

class _AnimatedSquareState extends State<AnimatedSquare> with SingleTickerProviderStateMixin {

    late AnimationController animController;
    late Animation<double> rotation;
    
    @override
    void initState() {

      animController = new AnimationController(vsync: this, duration: Duration(milliseconds: 4000));

      rotation = Tween(begin: 0.0, end: 90.0).animate(animController);

      super.initState();
      
    }

    @override
    void dispose() {

      animController.dispose();
      
      super.dispose();
    }


  @override
  Widget build(BuildContext context) {


    return _Rectangulo();
  }
}


class _Rectangulo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 70,
       decoration: const BoxDecoration(
         color: Colors.green
       ),
     );
   }
}

