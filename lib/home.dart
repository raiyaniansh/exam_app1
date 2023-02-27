import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtno = TextEditingController();
  List ans=[];
  int b=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.grey.shade900,title: Text("Multiplication table")),
        backgroundColor: Colors.grey.shade900,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                onTap: () {
                  setState(() {
                    ans.clear();
                    b=0;
                  });
                },
                style: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                controller: txtno,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter the number',
                  hintStyle: TextStyle(color: Colors.white54),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: (){
                  int a=int.parse(txtno.text);
                  setState(() {
                    if(b==0)
                    {
                      for(int i=1;i<=10;i++)
                      {
                        ans.add(i*a);
                      }
                      b=1;
                    }
                  });
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                  ),
                  alignment: Alignment.center,
                  child: Text("Ganret the table",style: TextStyle(color: Colors.white,fontSize: 20)),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                height: 300,
                child: ListView.builder(itemCount: ans.length,itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${txtno.text}",style: TextStyle(color: Colors.white,fontSize: 20)),
                        Text(" * ",style: TextStyle(color: Colors.white,fontSize: 20)),
                        Text("${index+1}",style: TextStyle(color: Colors.white,fontSize: 20)),
                        Text(" = ",style: TextStyle(color: Colors.white,fontSize: 20)),
                        Text("${ans[index]}",style: TextStyle(color: Colors.white,fontSize: 20)),
                      ],
                    ),
                  );
                },),
              )
            ],
          ),
        ),
      ),
    );
  }
}
