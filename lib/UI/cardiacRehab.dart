import 'package:flutter/material.dart';

class CardiacRehab extends StatefulWidget {
  CardiacRehab({required this.actName, required this.imageAdd,required this.id});
  final String imageAdd;
  final String actName;
  final String id;

  @override
  State<CardiacRehab> createState() => _CardiacRehabState();
}

class _CardiacRehabState extends State<CardiacRehab> {
  _nextPage(String routeName){
    setState(()=>{
      Navigator.pushNamed(context, routeName)
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => _nextPage(widget.id),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(29),
        ),
        height: size.height*0.41,
        child: Card(
          elevation: 10.0,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF6D70D4))
            ),
            child: Column(
              children: [
                Hero(
                  tag: widget.id,
                  child: SizedBox(
                    height: size.height*0.35,width: size.height*0.4,
                    child: Image(
                      image: AssetImage('images/${widget.imageAdd}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.actName,
                        style: TextStyle(
                          color: const  Color(0xFF6D70D4),
                          fontWeight: FontWeight.w700,
                          fontSize: size.width*0.045,
                          fontStyle: FontStyle.italic
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}