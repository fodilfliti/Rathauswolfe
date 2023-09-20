import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rathauswolfe/utils/base_text.dart';
import 'package:rathauswolfe/utils/colors.dart';

class ImpressumScreen extends StatelessWidget {
  const ImpressumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Impressum',
            textAlign: TextAlign.center,
            style: cusTextStyle(
                fontSize: 38,
                color: colorBlackText,
                height: 1.5,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            'Angaben gemäß § 5 TMG',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 32,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 60,
          ),
          /////////////////////////////////////////////////////

          Text(
            'DC Rathauswölfe Schwebenried',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Georg-Leder-Str. 15',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            '97460 Schwebenried',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 60,
          ),
          /////////////////////////////////////////////////////

          Text(
            'Vereinsregister: VR 201249',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Registergericht: Amtsgericht Würzburg',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 60,
          ),
          /////////////////////////////////////////////////////
          Text(
            'Vertreten durch:',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Steffan Burkard',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Telefon: 0151 59449970',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'E-Mail: kontakt@Rathauswoelfe.de',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 60,
          ),
          /////////////
          Text(
            'Verantwortlicher für den Inhalt:',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Jxnxs.de',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Jonas Kupka',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 80,
          ),
          ////////////
          Text(
            'EU-Streitschlichtung',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 32,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Die Europäische Kommission stellt eine Plattform zur Online-Streitbeilegung (OS) bereit:',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'https://ec.europa.eu/consumers/odr/.',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Unsere E-Mail-Adresse finden Sie oben im Impressum.',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Verbraucherstreitbeilegung/Universalschlichtungsstelle',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Wir sind nicht bereit oder verpflichtet, an Streitbeilegungsverfahren vor einer Verbraucherschlichtungsstelle teilzunehmen.',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.black,
                height: 1.5,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
