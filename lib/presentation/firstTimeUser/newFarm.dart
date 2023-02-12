import 'package:agino_client/presentation/reusable_widgets/custom_button.dart';
import 'package:flutter/material.dart';

class NewFarm extends StatefulWidget {
  static const routeName = 'newFarm';
   const NewFarm({super.key});
 
  @override
  State<NewFarm> createState() => _NewFarmState();
}

class _NewFarmState extends State<NewFarm> {
  TextEditingController farmController = TextEditingController();

  TextEditingController locationController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'NEWFARM',
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
              const Text("Farm name",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
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
                 
                  hintText: 'create new farm',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text("Location"),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: locationController,
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  suffixIcon: InkWell(
                    onTap: (){},
                    child: const Padding(
                      padding: EdgeInsets.only(left: 6),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 23,
                      ),
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(top: 10),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(7),
                    ),
                    borderSide: BorderSide.none,
                  ),
                 
                  hintText: 'search location',
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ),
            ]),
            CustomButton(
                color: const Color.fromARGB(255, 4, 90, 57),
                text: "Create new farm",
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
