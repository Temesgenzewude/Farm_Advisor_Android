import 'package:agino_client/presentation/reusable_widgets/custom_button.dart';
import 'package:agino_client/presentation/reusable_widgets/custome_text_widget.dart';
import 'package:flutter/material.dart';

class NewField extends StatefulWidget {
   const NewField({super.key});
 
  @override
  State<NewField> createState() => _NewFieldState();
}

class _NewFieldState extends State<NewField> {
  TextEditingController farmController = TextEditingController();

  TextEditingController locationController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'NEWFIELD',
          style: TextStyle(
              color: Color(0xFF5F676C),
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        backgroundColor: const Color(0xFFF7F7F7),
        leading: GestureDetector(
          child:const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(18.0),
        color: const Color.fromARGB(48, 247, 247, 247),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const TextWidget(text: "Field name", fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: farmController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.only(top: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                    borderSide: BorderSide.none,
                  ),
                 
                  hintText: 'Enter field name',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextWidget(text: "Altitude above sea level", fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: farmController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.only(top: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                    borderSide: BorderSide.none,
                  ),
                 
                  hintText: 'Enter meters',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ]
            ),
            CustomButton(
                color: const Color.fromARGB(255, 4, 90, 57),
                text: "Create New Field",
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}