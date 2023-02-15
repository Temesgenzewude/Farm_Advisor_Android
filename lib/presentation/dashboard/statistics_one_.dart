import 'package:agino_client/application/DashboardController/dashbaordController.dart';
import 'package:agino_client/presentation/reusable_widgets/dashboard_custome_appbar.dart';
import 'package:agino_client/presentation/reusable_widgets/date_picker.dart';
import 'package:agino_client/presentation/reusable_widgets/draw_graph.dart';
import 'package:agino_client/presentation/reusable_widgets/popup_menu.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StatisticsOne extends StatefulWidget {
  const StatisticsOne({super.key});

  @override
  State<StatisticsOne> createState() => _StatisticsOneState();
}

class _StatisticsOneState extends State<StatisticsOne> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    Get.find<DashboardController>().getDashboardData().then((result) {
      if (result.isSuccess) {
        setState(() {
          this.isLoading = true;
        });
      }
    });
    return Scaffold(
      appBar: const DashBoardCustomAppBar(),
      body: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_back_ios),
                            ),
                            Text(
                              "FIELD NAME TWO",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                        const ReusableTopPopMenu()
                      ]),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF7F7F7),
                  ),
                  child: Column(children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF7F7F7),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.landscape),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "127m above sea level",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "367",
                                style: GoogleFonts.roboto(
                                  fontSize: 34,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Current GDD",
                                style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "475",
                                style: GoogleFonts.roboto(
                                  fontSize: 34,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Global GDD",
                                style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "5days",
                                style: GoogleFonts.roboto(
                                  fontSize: 34,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "To cutting",
                                style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Last sensor reset:04/03/22(auto reset)",
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sensors",
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  color: const Color(0xFF20382F)),
                            ),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.add))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Stack(
                                            alignment:
                                                AlignmentDirectional.center,
                                            children: [
                                              const Positioned(
                                                  child: CircleAvatar(
                                                radius: 16,
                                                backgroundColor:
                                                    Color(0xFFFCEBEB),
                                              )),
                                              const Positioned(
                                                  child: CircleAvatar(
                                                radius: 8,
                                                backgroundColor: Colors.red,
                                              )),
                                              const Positioned(
                                                  child: CircleAvatar(
                                                radius: 4,
                                                backgroundColor:
                                                    Color(0xFFFCEBEB),
                                              )),
                                              Positioned(
                                                top: 8,
                                                child: Container(
                                                  color:
                                                      const Color(0xFFFCEBEB),
                                                  height: 10,
                                                  width: 3,
                                                ),
                                              )
                                            ]),
                                        const ReusableSensorsPopMenu()
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "45678987654",
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        color: const Color(0xFF5F676C),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "GGD 375",
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        color: const Color(0xFF979797),
                                      ),
                                    )
                                  ]),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Stack(
                                            alignment:
                                                AlignmentDirectional.center,
                                            children: [
                                              const Positioned(
                                                  child: CircleAvatar(
                                                radius: 16,
                                                backgroundColor:
                                                    Color(0xFFE0E0E0),
                                              )),
                                              const Positioned(
                                                  child: CircleAvatar(
                                                radius: 8,
                                                backgroundColor: Color.fromARGB(
                                                    255, 23, 63, 63),
                                              )),
                                              const Positioned(
                                                  child: CircleAvatar(
                                                radius: 4,
                                                backgroundColor:
                                                    Color(0xFFFCEBEB),
                                              )),
                                              Positioned(
                                                top: 8,
                                                child: Container(
                                                  color:
                                                      const Color(0xFFFCEBEB),
                                                  height: 10,
                                                  width: 3,
                                                ),
                                              )
                                            ]),
                                        const ReusableSensorsPopMenu()
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "45678987654",
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        color: const Color(0xFF5F676C),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "No data since 22/03/22",
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        color: const Color(0xFF979797),
                                      ),
                                    )
                                  ]),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Stack(
                                            alignment:
                                                AlignmentDirectional.center,
                                            children: [
                                              const Positioned(
                                                  child: CircleAvatar(
                                                radius: 16,
                                                backgroundColor:
                                                    Color(0xFFDFEFD9),
                                              )),
                                              const Positioned(
                                                  child: CircleAvatar(
                                                radius: 8,
                                                backgroundColor:
                                                    Color(0xFF00D600),
                                              )),
                                              const Positioned(
                                                  child: CircleAvatar(
                                                radius: 4,
                                                backgroundColor:
                                                    Color(0xFFDFEFD9),
                                              )),
                                              Positioned(
                                                top: 8,
                                                child: Container(
                                                  color:
                                                      const Color(0xFFDFEFD9),
                                                  height: 10,
                                                  width: 3,
                                                ),
                                              )
                                            ]),
                                        const ReusableSensorsPopMenu()
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "45678987654",
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        color: const Color(0xFF5F676C),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "GGD 375",
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        color: const Color(0xFF979797),
                                      ),
                                    )
                                  ]),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFFFFFFFF)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Stack(
                                            alignment:
                                                AlignmentDirectional.center,
                                            children: [
                                              const Positioned(
                                                  child: CircleAvatar(
                                                radius: 16,
                                                backgroundColor:
                                                    Color(0xFFDFEFD9),
                                              )),
                                              const Positioned(
                                                  child: CircleAvatar(
                                                radius: 8,
                                                backgroundColor:
                                                    Color(0xFF00D600),
                                              )),
                                              const Positioned(
                                                  child: CircleAvatar(
                                                radius: 4,
                                                backgroundColor:
                                                    Color(0xFFDFEFD9),
                                              )),
                                              Positioned(
                                                top: 8,
                                                child: Container(
                                                  color:
                                                      const Color(0xFFDFEFD9),
                                                  height: 10,
                                                  width: 3,
                                                ),
                                              )
                                            ]),
                                        const ReusableSensorsPopMenu()
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "45678987654",
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        color: const Color(0xFF5F676C),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "GGD 375",
                                      style: GoogleFonts.roboto(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        color: const Color(0xFF979797),
                                      ),
                                    )
                                  ]),
                            ),
                          ],
                        )
                      ]),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Color(0x5f676c1a),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Weather Forcast",
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    color: const Color(0xFF20382F)
                                        .withOpacity(0.5),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Statistics",
                                  style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                      color: const Color(0xFF20382F)),
                                )
                              ]),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Period",
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: const Color(0xFF5F676C).withOpacity(0.9),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "31 Nov 2021 - 11 May 2022",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: const Color(0xFF20382F),
                              ),
                            ),
                            const PickDate(
                              restorationId: "statistics1",
                            ),
                          ]),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, top: 30, bottom: 10),
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Temperature",
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: const Color(0xFF20382F)),
                          ),
                        ),
                        isLoading
                            ? DrawGraph()
                            : Column(
                                children: [
                                  CircularProgressIndicator(
                                    value: 0.3,
                                    color: Colors.greenAccent, //<-- SEE HERE
                                    backgroundColor: Colors.grey, //<-- SEE HERE
                                  ),
                                ],
                              ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, top: 30, bottom: 10),
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            "Precipitation",
                            style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: const Color(0xFF20382F)),
                          ),
                        ),
                        isLoading
                            ? PrecipitationGraph()
                            : Column(
                                children: [
                                  CircularProgressIndicator(
                                    value: 0.3,
                                    color: Colors.greenAccent, //<-- SEE HERE
                                    backgroundColor: Colors.grey, //<-- SEE HERE
                                  ),
                                ],
                              ),
                      ],
                    ),
                  ]),
                )
              ],
            )),
      ),
    );
  }
}
