import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smit_chat/views/chat_module/chat_screen.dart';
import 'package:smit_chat/views/chat_module/profile_screen.dart';
import 'package:smit_chat/views/chat_module/setting_screen.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({super.key});

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  List<String> images = [
    'assets/images/y.jpg',
    'assets/images/y.jpg',
    'assets/images/y.jpg',
    'assets/images/y.jpg',
    'assets/images/y.jpg',
    'assets/images/y.jpg',
    'assets/images/y.jpg',
  ];
  List<String> names = ['Yaseen Malik','Ali','Asad','Noman','Bob','John','Jane'];
  List<String> subTitle = [
    'What is the condition of product',
    'What is the condition of product',
    'What is the condition of product',
    'What is the condition of product',
    'What is the condition of product',
    'What is the condition of product',
    'What is the condition of product',

  ];
  List<String> time = ['7 jan','6 jan','10 jan','12 jan','15 jan','3 jan','8 jan'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5,),
          Text('chat',style: GoogleFonts.poppins(fontSize: 21,fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(Icons.search_off_rounded),
                  SizedBox(width: 10,),
                  Text('Search',style: GoogleFonts.poppins(fontSize: 16),),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemCount: 7,
                itemBuilder: (context,index){
                  return Container(
                    child: GestureDetector(
                      onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(image: images[index], names: names[index],)));
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(images[index]),
                        ),
                        title: Text(names[index],style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w500),),
                        subtitle: Text(subTitle[index]),
                        trailing: Text(time[index],style: GoogleFonts.poppins(),),
                      ),
                    ),
                  );

                }),
          )
        ],
      ),
    );
  }
}
