
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/dart_class.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
//  final Services ser=Services();

 const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>Data(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Homepage()
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState(){
    super.initState();
    final postModel=Provider.of<Data>(context, listen: false);
   postModel.getData();

  }
  @override
  Widget build(BuildContext context) {
    final postModel=Provider.of<Data>(context);
    return Scaffold(
      appBar:AppBar(title: const Text('Show',style:TextStyle(color:Colors.black87)),
      centerTitle: true,
      ),
          body:Container(
            color: Colors.black54,
        padding:const EdgeInsets.all(20),
            child:postModel.loading?
            const CircularProgressIndicator()
                :Center(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width:double.infinity,
                  height:300,
                  decoration:BoxDecoration(
              color: Colors.brown,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  margin: const EdgeInsets.only(top:40,bottom: 20                    // ignore: prefer_interpolation_to_compose_strings
),
                child:Column(
                  children: [
                    Text('User ID: ${postModel.post!.userId.toString()}',style: const TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),),
                    Text('ID: ${postModel.post!.id.toString()}',style: const TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 30,),),
                    Text('Title: ${postModel.post!.title}',
                    style: const TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 30,
                    )
                    ),
                  ],
                ),
                )
              ],
              )

            )
    ),

    );
  }
}

