import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:frontend_app/screens/menu_estacionamientos.dart';
import 'package:frontend_app/utils/colors.dart';

class Cantidad extends StatefulWidget {
  const Cantidad({Key? key}) : super(key: key);

  @override
  State<Cantidad> createState() => _CantidadState();
}

class _CantidadState extends State<Cantidad> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff023059),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Estacionamiento N.º 1 Pinacoteca',
                  style: GoogleFonts.lato(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    height: 1,
                    color: const Color(0xffffffff),
                  ),
                ),
                Text(
                  'Dirección: Lorenzo Arenas 123456',
                  style: GoogleFonts.lato(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    height: 1,
                    color: const Color(0xffffffff),
                  ),
                ),
              ],
            ),
          ),
        ),
        toolbarHeight: screenHeight / 6,
        backgroundColor: naranjaUdec,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(screenWidth, 40.0),
          ),
        ),
        elevation: 10.0,
        shadowColor: negroUdec,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(
              'HAY',
              style: GoogleFonts.lato(
                fontSize: 38,
                fontWeight: FontWeight.w500,
                height: 1,
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 25),
            width: double.infinity,
            height: 279,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 0, 176, 60),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '10',
                style: GoogleFonts.inter(
                  fontSize: 140,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffffffff),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 20),
            constraints: const BoxConstraints(
              maxWidth: 254,
            ),
            child: Text(
              'ESPACIOS\nDISPONIBLES',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontSize: 36,
                fontWeight: FontWeight.w500,
                height: 1.2,
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            constraints: const BoxConstraints(
              maxWidth: 254,
            ),
            child: Text(
              'Última actualización:',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1,
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(10, 2, 10, 20),
              constraints: const BoxConstraints(
                maxWidth: 254,
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Icon(Icons.access_time, color: Color(0xffffffff)),
                      const SizedBox(width: 10),
                      Text(
                        '15:53',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Icon(Icons.calendar_month_outlined,
                          color: Color(0xffffffff)),
                      const SizedBox(width: 10),
                      Text(
                        '13-05-203',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ],
                  )
                ],
              )),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: SizedBox(
              width: double.infinity,
              height: 95,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color(0xf9f27d16),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(30)),
                  child: const Icon(
                    Icons.home,
                    size: 50,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MenuEstacionamientos()),
                    );
                    //
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}