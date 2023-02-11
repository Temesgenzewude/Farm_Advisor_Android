import 'package:agino_client/presentation/reusable_widgets/dashboard_custome_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../reusable_widgets/date_picker.dart';
import '../reusable_widgets/popup_menu.dart';

class ResetGDD extends StatefulWidget {
  const ResetGDD({super.key});
  

  @override
  State<ResetGDD> createState() => _ResetGDDState();
}

class _ResetGDDState extends State<ResetGDD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DashBoardCustomAppBar(),
      


      body: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x46464642),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  )
                ],
                color: Color(0xFFF7F7F7),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          color: Color(0xFF5F676C),
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios),
                        ),
                        Text(
                          "RESET GDD",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: Color(0xFF5F676C)),
                        ),
                      ],
                    ),
                    ReusableTopPopMenu()
                  ]),
            ),
            Container(
              margin:
                  const EdgeInsets.only(left: 0, right: 10, top: 5, bottom: 5),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              alignment: AlignmentDirectional.topStart,
              child: Text(
                "Reset from",
                style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF5F676C)),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "11 May 2022",
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF20382F),
                      ),
                    ),
                    PickDate(
                      restorationId: "resetSensors",
                    ),
                  ]),
            ),
            Container(
              margin:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 30, top: 10),
              child: Row(children: [
                Expanded(
                    child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF979797),
                  ),
                ))
              ]),
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 30, top: 10),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Previous reset days",
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF20382F),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "12 Nov 2021",
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF5F676C),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "10 July 2021",
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF5F676C),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "22 May 2021",
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF5F676C),
                  ),
                ),
              ]),
            ),
            Spacer(),
            Container(
              child: OutlinedButton(
                child: Text('RESET GDD'),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xFF275342),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                onPressed: () {
                  print('Pressed');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
