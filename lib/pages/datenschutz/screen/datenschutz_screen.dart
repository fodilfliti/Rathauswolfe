import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rathauswolfe/pages/datenschutz/widgets/dot_widget.dart';
import 'package:rathauswolfe/pages/datenschutz/widgets/email_widget.dart';
import 'package:rathauswolfe/pages/datenschutz/widgets/link_widget.dart';
import 'package:rathauswolfe/utils/base_text.dart';
import 'package:rathauswolfe/utils/colors.dart';

class DatenschutzScreen extends StatelessWidget {
  const DatenschutzScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data1 = [
      "Präambel",
      "Verantwortlicher",
      "Übersicht der Verarbeitungen",
      "Maßgebliche Rechtsgrundlagen",
      "Sicherheitsmaßnahmen",
      "Löschung von Daten",
      "Einsatz von Cookies",
      "Wahrnehmung von Aufgaben nach Satzung oder Geschäftsordnung",
      "Bereitstellung des Onlineangebotes und Webhosting",
      "Webanalyse, Monitoring und Optimierung",
      "Präsenzen in sozialen Netzwerken (Social Media)"
          "Plugins und eingebettete Funktionen sowie Inhalte",
      "Änderung und Aktualisierung der Datenschutzerklärung",
      "Rechte der betroffenen Personen"
    ];
    final data2 = [
      "Bestandsdaten.",
      "Zahlungsdaten.",
      "Standortdaten.",
      "Kontaktdaten.",
      "Inhaltsdaten.",
      "Vertragsdaten.",
      "Nutzungsdaten.",
      "Meta-, Kommunikations- und Verfahrensdaten."
    ];
    final data3 = ["Nutzer.", "Mitglieder.", "Geschäfts- und Vertragspartner."];
    final data4 = [
      "Erbringung vertraglicher Leistungen und Kundenservice.,",
      "Kontaktanfragen und Kommunikation.",
      "Sicherheitsmaßnahmen.",
      "Reichweitenmessung.",
      "Tracking.",
      "Verwaltung und Beantwortung von Anfragen.",
      "Feedback.",
      "Marketing.",
      "Profile mit nutzerbezogenen Informationen.",
      "Bereitstellung unseres Onlineangebotes und Nutzerfreundlichkeit.",
      "Informationstechnische Infrastruktur."
    ];
    return Container(
      color: colorWhite,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 16),
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 1048),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Datenschutz',
                      textAlign: TextAlign.center,
                      style: cusTextStyle(
                          fontSize: 38,
                          color: colorBlackText,
                          height: 1.5,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                tilteWidget(
                  'Präambel',
                ),
                spaceWidget(16),
                descriptionWidget(
                  'Mit der folgenden Datenschutzerklärung möchten wir Sie darüber aufklären, welche Arten Ihrer personenbezogenen Daten (nachfolgend auch kurz als “Daten“ bezeichnet) wir zu welchen Zwecken und in welchem Umfang verarbeiten. Die Datenschutzerklärung gilt für alle von uns durchgeführten Verarbeitungen personenbezogener Daten, sowohl im Rahmen der Erbringung unserer Leistungen als auch insbesondere auf unseren Webseiten, in mobilen Applikationen sowie innerhalb externer Onlinepräsenzen, wie z.B. unserer Social-Media-Profile (nachfolgend zusammenfassend bezeichnet als “Onlineangebot“).',
                ),
                spaceWidget(12),
                descriptionWidget(
                    "Die verwendeten Begriffe sind nicht geschlechtsspezifisch."),
                spaceWidget(12),
                descriptionWidget("Stand: 13. August 2023"),
                spaceWidget(16),
                tilteWidget(
                  'Inhaltsübersicht',
                ),
                ...List.generate(
                    data1.length,
                    (index) => [
                          spaceWidget(6),
                          subDetailsWidget(data1[index])
                        ]).expand((list) => list).toList(),
                spaceWidget(16),
                tilteWidget('Verantwortlicher'),
                spaceWidget(16),
                descriptionWidget("DC Rathauswölfe Schwebenried"),
                spaceWidget(8),
                descriptionWidget("Steffan Burkard"),
                spaceWidget(8),
                descriptionWidget("Georg-Leder-Str. 15"),
                spaceWidget(8),
                descriptionWidget("97450 Schwebenried"),
                spaceWidget(16),
                Text(
                  'E-Mail-Adresse:',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.roboto(
                      fontSize: 40,
                      color: Colors.black,
                      height: 1.5,
                      fontWeight: FontWeight.w700),
                ),
                spaceWidget(16),
                const EmailWidget(
                  email: "kontakt@Rathauswoelfe.de",
                ),
                spaceWidget(16),
                tilteWidget(
                  'Übersicht der Verarbeitungen',
                ),
                spaceWidget(16),
                descriptionWidget(
                    "Die nachfolgende Übersicht fasst die Arten der verarbeiteten Daten und die Zwecke ihrer Verarbeitung zusammen und verweist auf die betroffenen Personen."),
                spaceWidget(16),
                tilteWidget(
                  'Arten der verarbeiteten Daten',
                ),
                ...List.generate(
                    data2.length,
                    (index) => [
                          spaceWidget(6),
                          subDetailsWidget(data2[index])
                        ]).expand((list) => list).toList(),
                spaceWidget(16),
                tilteWidget(
                  'Kategorien betroffener Personen',
                ),
                ...List.generate(
                    data3.length,
                    (index) => [
                          spaceWidget(6),
                          subDetailsWidget(data3[index])
                        ]).expand((list) => list).toList(),
                spaceWidget(16),
                tilteWidget(
                  'Zwecke der Verarbeitung',
                ),
                ...List.generate(
                    data4.length,
                    (index) => [
                          spaceWidget(6),
                          subDetailsWidget(data4[index])
                        ]).expand((list) => list).toList(),
                spaceWidget(16),
                tilteWidget(
                  'Maßgebliche Rechtsgrundlagen',
                ),
                spaceWidget(16),
                descriptionWidget(
                    "Im Folgenden erhalten Sie eine Übersicht der Rechtsgrundlagen der DSGVO, auf deren Basis wir personenbezogene Daten verarbeiten. Bitte nehmen Sie zur Kenntnis, dass neben den Regelungen der DSGVO nationale Datenschutzvorgaben in Ihrem bzw. unserem Wohn- oder Sitzland gelten können. Sollten ferner im Einzelfall speziellere Rechtsgrundlagen maßgeblich sein, teilen wir Ihnen diese in der Datenschutzerklärung mit."),
                spaceWidget(16),
                subDetailsMultiStyleWidget(
                    "inwilligung (Art. 6 Abs. 1 S. 1 lit. a) DSGVO) – ",
                    "Die betroffene Person hat ihre Einwilligung in die Verarbeitung der sie betreffenden personenbezogenen Daten für einen spezifischen Zweck oder mehrere bestimmte Zwecke gegeben."),
                spaceWidget(6),
                subDetailsMultiStyleWidget(
                    "Vertragserfüllung und vorvertragliche Anfragen (Art. 6 Abs. 1 S. 1 lit. b) DSGVO) – ",
                    "Die Verarbeitung ist für die Erfüllung eines Vertrags, dessen Vertragspartei die betroffene Person ist, oder zur Durchführung vorvertraglicher Maßnahmen erforderlich, die auf Anfrage der betroffenen Person erfolgen."),
                spaceWidget(6),
                subDetailsMultiStyleWidget(
                    "Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f) DSGVO) – ",
                    "Die Verarbeitung ist zur Wahrung der berechtigten Interessen des Verantwortlichen oder eines Dritten erforderlich, sofern nicht die Interessen oder Grundrechte und Grundfreiheiten der betroffenen Person, die den Schutz personenbezogener Daten erfordern, überwiegen."),
                spaceWidget(6),
                descriptionWidget(
                    "Zusätzlich zu den Datenschutzregelungen der DSGVO gelten nationale Regelungen zum Datenschutz in Deutschland. Hierzu gehört insbesondere das Gesetz zum Schutz vor Missbrauch personenbezogener Daten bei der Datenverarbeitung (Bundesdatenschutzgesetz – BDSG). Das BDSG enthält insbesondere Spezialregelungen zum Recht auf Auskunft, zum Recht auf Löschung, zum Widerspruchsrecht, zur Verarbeitung besonderer Kategorien personenbezogener Daten, zur Verarbeitung für andere Zwecke und zur Übermittlung sowie automatisierten Entscheidungsfindung im Einzelfall einschließlich Profiling. Des Weiteren regelt es die Datenverarbeitung für Zwecke des Beschäftigungsverhältnisses (§ 26 BDSG), insbesondere im Hinblick auf die Begründung, Durchführung oder Beendigung von Beschäftigungsverhältnissen sowie die Einwilligung von Beschäftigten. Ferner können Landesdatenschutzgesetze der einzelnen Bundesländer zur Anwendung gelangen."),
                spaceWidget(16),
                tilteWidget(
                  'Sicherheitsmaßnahmen',
                ),
                spaceWidget(16),
                descriptionWidget(
                    "Wir treffen nach Maßgabe der gesetzlichen Vorgaben unter Berücksichtigung des Stands der Technik, der Implementierungskosten und der Art, des Umfangs, der Umstände und der Zwecke der Verarbeitung sowie der unterschiedlichen Eintrittswahrscheinlichkeiten und des Ausmaßes der Bedrohung der Rechte und Freiheiten natürlicher Personen geeignete technische und organisatorische Maßnahmen, um ein dem Risiko angemessenes Schutzniveau zu gewährleisten."),
                spaceWidget(16),
                descriptionWidget(
                    "Zu den Maßnahmen gehören insbesondere die Sicherung der Vertraulichkeit, Integrität und Verfügbarkeit von Daten durch Kontrolle des physischen und elektronischen Zugangs zu den Daten als auch des sie betreffenden Zugriffs, der Eingabe, der Weitergabe, der Sicherung der Verfügbarkeit und ihrer Trennung. Des Weiteren haben wir Verfahren eingerichtet, die eine Wahrnehmung von Betroffenenrechten, die Löschung von Daten und Reaktionen auf die Gefährdung der Daten gewährleisten. Ferner berücksichtigen wir den Schutz personenbezogener Daten bereits bei der Entwicklung bzw. Auswahl von Hardware, Software sowie Verfahren entsprechend dem Prinzip des Datenschutzes, durch Technikgestaltung und durch datenschutzfreundliche Voreinstellungen."),
                spaceWidget(16),
                descriptionWidget(
                    "Kürzung der IP-Adresse: Sofern IP-Adressen von uns oder von den eingesetzten Dienstleistern und Technologien verarbeitet werden und die Verarbeitung einer vollständigen IP-Adresse nicht erforderlich ist, wird die IP-Adresse gekürzt (auch als “IP-Masking” bezeichnet). Hierbei werden die letzten beiden Ziffern, bzw. der letzte Teil der IP-Adresse nach einem Punkt entfernt, bzw. durch Platzhalter ersetzt. Mit der Kürzung der IP-Adresse soll die Identifizierung einer Person anhand ihrer IP-Adresse verhindert oder wesentlich erschwert werden."),
                spaceWidget(16),
                descriptionWidget(
                    "TLS-Verschlüsselung (https): Um Ihre via unserem Online-Angebot übermittelten Daten zu schützen, nutzen wir eine TLS-Verschlüsselung. Sie erkennen derart verschlüsselte Verbindungen an dem Präfix https:// in der Adresszeile Ihres Browsers."),
                spaceWidget(16),
                tilteWidget(
                  'Löschung von Daten',
                ),
                spaceWidget(16),
                descriptionWidget(
                    "Die von uns verarbeiteten Daten werden nach Maßgabe der gesetzlichen Vorgaben gelöscht, sobald deren zur Verarbeitung erlaubten Einwilligungen widerrufen werden oder sonstige Erlaubnisse entfallen (z.B. wenn der Zweck der Verarbeitung dieser Daten entfallen ist oder sie für den Zweck nicht erforderlich sind). Sofern die Daten nicht gelöscht werden, weil sie für andere und gesetzlich zulässige Zwecke erforderlich sind, wird deren Verarbeitung auf diese Zwecke beschränkt. D.h., die Daten werden gesperrt und nicht für andere Zwecke verarbeitet. Das gilt z.B. für Daten, die aus handels- oder steuerrechtlichen Gründen aufbewahrt werden müssen oder deren Speicherung zur Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen oder zum Schutz der Rechte einer anderen natürlichen oder juristischen Person erforderlich ist."),
                spaceWidget(16),
                descriptionWidget(
                    "Unsere Datenschutzhinweise können ferner weitere Angaben zu der Aufbewahrung und Löschung von Daten beinhalten, die für die jeweiligen Verarbeitungen vorrangig gelten."),
                spaceWidget(16),
                tilteWidget(
                  'Einsatz von Cookies',
                ),
                spaceWidget(16),
                descriptionWidget(
                    "Cookies sind kleine Textdateien, bzw. sonstige Speichervermerke, die Informationen auf Endgeräten speichern und Informationen aus den Endgeräten auslesen. Z.B. um den Login-Status in einem Nutzerkonto, einen Warenkorbinhalt in einem E-Shop, die aufgerufenen Inhalte oder verwendete Funktionen eines Onlineangebotes speichern. Cookies können ferner zu unterschiedlichen Zwecken eingesetzt werden, z.B. zu Zwecken der Funktionsfähigkeit, Sicherheit und Komfort von Onlineangeboten sowie der Erstellung von Analysen der Besucherströme."),
                spaceWidget(16),
                textMultiStyleWidget("Hinweise zur Einwilligung: ",
                    "Wir setzen Cookies im Einklang mit den gesetzlichen Vorschriften ein. Daher holen wir von den Nutzern eine vorhergehende Einwilligung ein, außer wenn diese gesetzlich nicht gefordert ist. Eine Einwilligung ist insbesondere nicht notwendig, wenn das Speichern und das Auslesen der Informationen, also auch von Cookies, unbedingt erforderlich sind, um dem den Nutzern einen von ihnen ausdrücklich gewünschten Telemediendienst (also unser Onlineangebot) zur Verfügung zu stellen. Zu den unbedingt erforderlichen Cookies gehören in der Regel Cookies mit Funktionen, die der Anzeige und Lauffähigkeit des Onlineangebotes , dem Lastausgleich, der Sicherheit, der Speicherung der Präferenzen und Auswahlmöglichkeiten der Nutzer oder ähnlichen mit der Bereitstellung der Haupt- und Nebenfunktionen des von den Nutzern angeforderten Onlineangebotes zusammenhängenden Zwecken dienen. Die widerrufliche Einwilligung wird gegenüber den Nutzern deutlich kommuniziert und enthält die Informationen zu der jeweiligen Cookie-Nutzung."),
                spaceWidget(16),
                textMultiStyleWidget(
                    "Hinweise zu datenschutzrechtlichen Rechtsgrundlagen: ",
                    "Auf welcher datenschutzrechtlichen Rechtsgrundlage wir die personenbezogenen Daten der Nutzer mit Hilfe von Cookies verarbeiten, hängt davon ab, ob wir Nutzer um eine Einwilligung bitten. Falls die Nutzer einwilligen, ist die Rechtsgrundlage der Verarbeitung Ihrer Daten die erklärte Einwilligung. Andernfalls werden die mithilfe von Cookies verarbeiteten Daten auf Grundlage unserer berechtigten Interessen (z.B. an einem betriebswirtschaftlichen Betrieb unseres Onlineangebotes und Verbesserung seiner Nutzbarkeit) verarbeitet oder, wenn dies im Rahmen der Erfüllung unserer vertraglichen Pflichten erfolgt, wenn der Einsatz von Cookies erforderlich ist, um unsere vertraglichen Verpflichtungen zu erfüllen. Zu welchen Zwecken die Cookies von uns verarbeitet werden, darüber klären wir im Laufe dieser Datenschutzerklärung oder im Rahmen von unseren Einwilligungs- und Verarbeitungsprozessen auf."),
                spaceWidget(16),
                textMultiStyleWidget("Speicherdauer: ",
                    "Im Hinblick auf die Speicherdauer werden die folgenden Arten von Cookies unterschieden:"),
                spaceWidget(16),
                subDetailsMultiStyleWidget(
                    "emporäre Cookies (auch: Session- oder Sitzungs-Cookies): ",
                    "Temporäre Cookies werden spätestens gelöscht, nachdem ein Nutzer ein Online-Angebot verlassen und sein Endgerät (z.B. Browser oder mobile Applikation) geschlossen hat."),
                spaceWidget(6),
                subDetailsMultiStyleWidget("Permanente Cookies: ",
                    "Permanente Cookies bleiben auch nach dem Schließen des Endgerätes gespeichert. So können beispielsweise der Login-Status gespeichert oder bevorzugte Inhalte direkt angezeigt werden, wenn der Nutzer eine Website erneut besucht. Ebenso können die mit Hilfe von Cookies erhobenen Daten der Nutzer zur Reichweitenmessung verwendet werden. Sofern wir Nutzern keine expliziten Angaben zur Art und Speicherdauer von Cookies mitteilen (z. B. im Rahmen der Einholung der Einwilligung), sollten Nutzer davon ausgehen, dass Cookies permanent sind und die Speicherdauer bis zu zwei Jahre betragen kann."),
                spaceWidget(6),
                RichText(
                  text: TextSpan(
                    text:
                        "Allgemeine Hinweise zum Widerruf und Widerspruch (Opt-Out):",
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.5,
                        fontWeight: FontWeight.w700),
                    children: [
                      TextSpan(
                          text:
                              "Nutzer können die von ihnen abgegebenen Einwilligungen jederzeit widerrufen und zudem einen Widerspruch gegen die Verarbeitung entsprechend den gesetzlichen Vorgaben im Art. 21 DSGVO einlegen. Nutzer können ihren Widerspruch auch über die Einstellungen ihres Browsers erklären, z.B. durch Deaktivierung der Verwendung von Cookies (wobei dadurch auch die Funktionalität unserer Online-Dienste eingeschränkt sein kann). Ein Widerspruch gegen die Verwendung von Cookies zu Online-Marketing-Zwecken kann auch über die Websites ",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              color: Colors.black,
                              height: 1.5,
                              fontWeight: FontWeight.w400)),
                      const WidgetSpan(
                          child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: LinkWidget(
                          link: "optout.aboutads.info",
                        ),
                      )),
                      TextSpan(
                          text: " und ",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              color: Colors.black,
                              height: 1.5,
                              fontWeight: FontWeight.w400)),
                      const WidgetSpan(
                          child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: LinkWidget(
                          link: "www.youronlinechoices.com/",
                        ),
                      )),
                      TextSpan(
                          text: " erklärt werden.",
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              color: Colors.black,
                              height: 1.5,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                spaceWidget(16),
                subDetailsMultiStyleWidget("Rechtsgrundlagen: ",
                    "Einwilligung (Art. 6 Abs. 1 S. 1 lit. a) DSGVO)."),
                spaceWidget(6),
                textMultiStyleWidget(
                    "Weitere Hinweise zu Verarbeitungsprozessen, Verfahren und Diensten:",
                    ""),
                spaceWidget(16),
                subDetailsMultiStyleWidget(
                    "Verarbeitung von Cookie-Daten auf Grundlage einer Einwilligung: ",
                    "Wir setzen ein Verfahren zum Cookie-Einwilligungs-Management ein, in dessen Rahmen die Einwilligungen der Nutzer in den Einsatz von Cookies, bzw. der im Rahmen des Cookie-Einwilligungs-Management-Verfahrens genannten Verarbeitungen und Anbieter eingeholt sowie von den Nutzern verwaltet und widerrufen werden können. Hierbei wird die Einwilligungserklärung gespeichert, um deren Abfrage nicht erneut wiederholen zu müssen und die Einwilligung entsprechend der gesetzlichen Verpflichtung nachweisen zu können. Die Speicherung kann serverseitig und/oder in einem Cookie (sogenanntes Opt-In-Cookie, bzw. mithilfe vergleichbarer Technologien) erfolgen, um die Einwilligung einem Nutzer, bzw. dessen Gerät zuordnen zu können. Vorbehaltlich individueller Angaben zu den Anbietern von Cookie-Management-Diensten, gelten die folgenden Hinweise: Die Dauer der Speicherung der Einwilligung kann bis zu zwei Jahren betragen. Hierbei wird ein pseudonymer Nutzer-Identifikator gebildet und mit dem Zeitpunkt der Einwilligung, Angaben zur Reichweite der Einwilligung (z. B. welche Kategorien von Cookies und/oder Diensteanbieter) sowie dem Browser, System und verwendeten Endgerät gespeichert;"),
                Padding(
                    padding: EdgeInsets.only(left: 42),
                    child: textMultiStyleWidget("Rechtsgrundlagen: ",
                        "Einwilligung (Art. 6 Abs. 1 S. 1 lit. a) DSGVO).")),
                ComplianzWidget(),
                spaceWidget(16),
                tilteWidget(
                  'Wahrnehmung von Aufgaben nach Satzung oder Geschäftsordnung',
                ),
                spaceWidget(16),
                descriptionWidget(
                    "Wir verarbeiten die Daten unserer Mitglieder, Unterstützer, Interessenten, Geschäftspartner oder sonstiger Personen (Zusammenfassend “Betroffene”), wenn wir mit ihnen in einem Mitgliedschafts- oder sonstigem geschäftlichen Verhältnis stehen und unsere Aufgaben wahrnehmen sowie Empfänger von Leistungen und Zuwendungen sind. Im Übrigen verarbeiten wir die Daten Betroffener auf Grundlage unserer berechtigten Interessen, z.B. wenn es sich um administrative Aufgaben oder Öffentlichkeitsarbeit handelt."),
                spaceWidget(16),
                descriptionWidget(
                    "Die hierbei verarbeiteten Daten, die Art, der Umfang und der Zweck und die Erforderlichkeit ihrer Verarbeitung, bestimmen sich nach dem zugrundeliegenden Mitgliedschafts- oder Vertragsverhältnis, aus dem sich auch die Erforderlichkeit etwaiger Datenangaben ergeben (im Übrigen weisen wir auf erforderliche Daten hin)."),
                spaceWidget(16),
                descriptionWidget(
                    "Wir löschen Daten, die zur Erbringung unserer satzungs- und geschäftsmäßigen Zwecke nicht mehr erforderlich sind. Dies bestimmt sich entsprechend der jeweiligen Aufgaben und vertraglichen Beziehungen. Wir bewahren die Daten so lange auf, wie sie zur Geschäftsabwicklung, als auch im Hinblick auf etwaige Gewährleistungs- oder Haftungspflichten auf Grundlage unserer berechtigten Interesse an deren Regelung relevant sein können. Die Erforderlichkeit der Aufbewahrung der Daten wird regelmäßig überprüft; im Übrigen gelten die gesetzlichen Aufbewahrungspflichten."),
                spaceWidget(16),
                subDetailsMultiStyleWidget("Verarbeitete Datenarten: ",
                    "Bestandsdaten (z.B. Namen, Adressen); Zahlungsdaten (z.B. Bankverbindungen, Rechnungen, Zahlungshistorie); Kontaktdaten (z.B. E-Mail, Telefonnummern); Vertragsdaten (z.B. Vertragsgegenstand, Laufzeit, Kundenkategorie)."),
                subDetailsMultiStyleWidget("Betroffene Personen: ",
                    "Nutzer (z.B. Webseitenbesucher, Nutzer von Onlinediensten); Mitglieder; Geschäfts- und Vertragspartner."),
                subDetailsMultiStyleWidget("Zwecke der Verarbeitung:",
                    "Erbringung vertraglicher Leistungen und Kundenservice; Kontaktanfragen und Kommunikation; Verwaltung und Beantwortung von Anfragen."),
                subDetailsMultiStyleWidget("Rechtsgrundlagen: ",
                    "Vertragserfüllung und vorvertragliche Anfragen (Art. 6 Abs. 1 S. 1 lit. b) DSGVO); Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f) DSGVO)."),
                spaceWidget(16),
                tilteWidget(
                  'Bereitstellung des Onlineangebotes und Webhosting',
                ),
                spaceWidget(16),
                descriptionWidget(
                    "Wir verarbeiten die Daten der Nutzer, um ihnen unsere Online-Dienste zur Verfügung stellen zu können. Zu diesem Zweck verarbeiten wir die IP-Adresse des Nutzers, die notwendig ist, um die Inhalte und Funktionen unserer Online-Dienste an den Browser oder das Endgerät der Nutzer zu übermitteln."),
                spaceWidget(16),
                subDetailsMultiStyleWidget("Verarbeitete Datenarten: ",
                    "Nutzungsdaten (z.B. besuchte Webseiten, Interesse an Inhalten, Zugriffszeiten); Meta-, Kommunikations- und Verfahrensdaten (z. B. IP-Adressen, Zeitangaben, Identifikationsnummern, Einwilligungsstatus); Inhaltsdaten (z.B. Eingaben in Onlineformularen)."),
                subDetailsMultiStyleWidget("Betroffene Personen: ",
                    "Nutzer (z.B. Webseitenbesucher, Nutzer von Onlinediensten)."),
                subDetailsMultiStyleWidget("Zwecke der Verarbeitung: ",
                    "Bereitstellung unseres Onlineangebotes und Nutzerfreundlichkeit; Informationstechnische Infrastruktur (Betrieb und Bereitstellung von Informationssystemen und technischen Geräten (Computer, Server etc.).); Sicherheitsmaßnahmen."),
                subDetailsMultiStyleWidget("Rechtsgrundlagen: ",
                    "Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f) DSGVO)."),
                Text(
                    'Weitere Hinweise zu Verarbeitungsprozessen, Verfahren und Diensten:',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.5,
                        fontWeight: FontWeight.w700)),
                spaceWidget(16),
                erhebungWidget(),
                hetznerWidget(),
                wordPressWidget(),
                spaceWidget(16),
                tilteWidget("Webanalyse, Monitoring und Optimierung"),
                spaceWidget(16),
                descriptionWidget(
                    "Die Webanalyse (auch als “Reichweitenmessung” bezeichnet) dient der Auswertung der Besucherströme unseres Onlineangebotes und kann Verhalten, Interessen oder demographische Informationen zu den Besuchern, wie z.B. das Alter oder das Geschlecht, als pseudonyme Werte umfassen. Mit Hilfe der Reichweitenanalyse können wir z.B. erkennen, zu welcher Zeit unser Onlineangebot oder dessen Funktionen oder Inhalte am häufigsten genutzt werden oder zur Wiederverwendung einladen. Ebenso können wir nachvollziehen, welche Bereiche der Optimierung bedürfen."),
                spaceWidget(16),
                descriptionWidget(
                    "Neben der Webanalyse können wir auch Testverfahren einsetzen, um z.B. unterschiedliche Versionen unseres Onlineangebotes oder seiner Bestandteile zu testen und optimieren."),
                spaceWidget(16),
                descriptionWidget(
                    "Sofern nachfolgend nicht anders angegeben, können zu diesen Zwecken Profile, d.h. zu einem Nutzungsvorgang zusammengefasste Daten angelegt und Informationen in einem Browser, bzw. in einem Endgerät gespeichert und aus diesem ausgelesen werden. Zu den erhobenen Angaben gehören insbesondere besuchte Webseiten und dort genutzte Elemente sowie technische Angaben, wie der verwendete Browser, das verwendete Computersystem sowie Angaben zu Nutzungszeiten. Sofern Nutzer in die Erhebung ihrer Standortdaten uns gegenüber oder gegenüber den Anbietern der von uns eingesetzten Dienste einverstanden erklärt haben, können auch Standortdaten verarbeitet werden."),
                spaceWidget(16),
                descriptionWidget(
                    "Es werden ebenfalls die IP-Adressen der Nutzer gespeichert. Jedoch nutzen wir ein IP-Masking-Verfahren (d.h., Pseudonymisierung durch Kürzung der IP-Adresse) zum Schutz der Nutzer. Generell werden die im Rahmen von Webanalyse, A/B-Testings und Optimierung keine Klardaten der Nutzer (wie z.B. E-Mail-Adressen oder Namen) gespeichert, sondern Pseudonyme. D.h., wir als auch die Anbieter der eingesetzten Software kennen nicht die tatsächliche Identität der Nutzer, sondern nur den für Zwecke der jeweiligen Verfahren in deren Profilen gespeicherten Angaben."),
                spaceWidget(16),
                subDetailsMultiStyleWidget("Verarbeitete Datenarten: ",
                    "Nutzungsdaten (z.B. besuchte Webseiten, Interesse an Inhalten, Zugriffszeiten); Meta-, Kommunikations- und Verfahrensdaten (z. B. IP-Adressen, Zeitangaben, Identifikationsnummern, Einwilligungsstatus)."),
                subDetailsMultiStyleWidget("Betroffene Personen: ",
                    "Nutzer (z.B. Webseitenbesucher, Nutzer von Onlinediensten)."),
                subDetailsMultiStyleWidget("Zwecke der Verarbeitung: ",
                    "Reichweitenmessung (z.B. Zugriffsstatistiken, Erkennung wiederkehrender Besucher); Profile mit nutzerbezogenen Informationen (Erstellen von Nutzerprofilen); Tracking (z.B. interessens-/verhaltensbezogenes Profiling, Nutzung von Cookies); Bereitstellung unseres Onlineangebotes und Nutzerfreundlichkeit."),
                subDetailsMultiStyleWidget("Sicherheitsmaßnahmen: ",
                    "IP-Masking (Pseudonymisierung der IP-Adresse)."),
                subDetailsMultiStyleWidget("Rechtsgrundlagen: ",
                    "Einwilligung (Art. 6 Abs. 1 S. 1 lit. a) DSGVO)."),
                Text(
                    'Weitere Hinweise zu Verarbeitungsprozessen, Verfahren und Diensten:',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.5,
                        fontWeight: FontWeight.w700)),
                spaceWidget(16),
                google1Widget(),
                google2Widget(),
                google3Widget(),
                jetpackWidget(),
                spaceWidget(16),
                tilteWidget("Präsenzen in sozialen Netzwerken (Social Media)"),
                spaceWidget(16),
                descriptionWidget(
                    "Wir unterhalten Onlinepräsenzen innerhalb sozialer Netzwerke und verarbeiten in diesem Rahmen Daten der Nutzer, um mit den dort aktiven Nutzern zu kommunizieren oder um Informationen über uns anzubieten."),
                spaceWidget(16),
                descriptionWidget(
                  "Wir weisen darauf hin, dass dabei Daten der Nutzer außerhalb des Raumes der Europäischen Union verarbeitet werden können. Hierdurch können sich für die Nutzer Risiken ergeben, weil so z.B. die Durchsetzung der Rechte der Nutzer erschwert werden könnte.",
                ),
                spaceWidget(16),
                descriptionWidget(
                    "Ferner werden die Daten der Nutzer innerhalb sozialer Netzwerke im Regelfall für Marktforschungs- und Werbezwecke verarbeitet. So können z.B. anhand des Nutzungsverhaltens und sich daraus ergebender Interessen der Nutzer Nutzungsprofile erstellt werden. Die Nutzungsprofile können wiederum verwendet werden, um z.B. Werbeanzeigen innerhalb und außerhalb der Netzwerke zu schalten, die mutmaßlich den Interessen der Nutzer entsprechen. Zu diesen Zwecken werden im Regelfall Cookies auf den Rechnern der Nutzer gespeichert, in denen das Nutzungsverhalten und die Interessen der Nutzer gespeichert werden. Ferner können in den Nutzungsprofilen auch Daten unabhängig der von den Nutzern verwendeten Geräte gespeichert werden (insbesondere, wenn die Nutzer Mitglieder der jeweiligen Plattformen sind und bei diesen eingeloggt sind)."),
                spaceWidget(16),
                descriptionWidget(
                    "Für eine detaillierte Darstellung der jeweiligen Verarbeitungsformen und der Widerspruchsmöglichkeiten (Opt-Out) verweisen wir auf die Datenschutzerklärungen und Angaben der Betreiber der jeweiligen Netzwerke."),
                spaceWidget(16),
                descriptionWidget(
                    "Auch im Fall von Auskunftsanfragen und der Geltendmachung von Betroffenenrechten weisen wir darauf hin, dass diese am effektivsten bei den Anbietern geltend gemacht werden können. Nur die Anbieter haben jeweils Zugriff auf die Daten der Nutzer und können direkt entsprechende Maßnahmen ergreifen und Auskünfte geben. Sollten Sie dennoch Hilfe benötigen, dann können Sie sich an uns wenden."),
                spaceWidget(16),
                subDetailsMultiStyleWidget("Verarbeitete Datenarten: ",
                    "Kontaktdaten (z.B. E-Mail, Telefonnummern); Inhaltsdaten (z.B. Eingaben in Onlineformularen); Nutzungsdaten (z.B. besuchte Webseiten, Interesse an Inhalten, Zugriffszeiten); Meta-, Kommunikations- und Verfahrensdaten (z. B. IP-Adressen, Zeitangaben, Identifikationsnummern, Einwilligungsstatus)."),
                subDetailsMultiStyleWidget("Betroffene Personen: ",
                    "Nutzer (z.B. Webseitenbesucher, Nutzer von Onlinediensten)."),
                subDetailsMultiStyleWidget("Zwecke der Verarbeitung: ",
                    "Kontaktanfragen und Kommunikation; Feedback (z.B. Sammeln von Feedback via Online-Formular); Marketing."),
                subDetailsMultiStyleWidget("Rechtsgrundlagen: ",
                    "Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f) DSGVO)."),
                Text(
                    'Weitere Hinweise zu Verarbeitungsprozessen, Verfahren und Diensten:',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.5,
                        fontWeight: FontWeight.w700)),
                spaceWidget(16),
                instagramWidget(),
                facebookWidget(),
                spaceWidget(16),
                tilteWidget(
                    "Plugins und eingebettete Funktionen sowie Inhalte"),
                spaceWidget(16),
                descriptionWidget(
                    "Wir binden in unser Onlineangebot Funktions- und Inhaltselemente ein, die von den Servern ihrer jeweiligen Anbieter (nachfolgend bezeichnet als “Drittanbieter”) bezogen werden. Dabei kann es sich zum Beispiel um Grafiken, Videos oder Stadtpläne handeln (nachfolgend einheitlich bezeichnet als “Inhalte”)."),
                spaceWidget(16),
                descriptionWidget(
                    "Die Einbindung setzt immer voraus, dass die Drittanbieter dieser Inhalte die IP-Adresse der Nutzer verarbeiten, da sie ohne die IP-Adresse die Inhalte nicht an deren Browser senden könnten. Die IP-Adresse ist damit für die Darstellung dieser Inhalte oder Funktionen erforderlich. Wir bemühen uns, nur solche Inhalte zu verwenden, deren jeweilige Anbieter die IP-Adresse lediglich zur Auslieferung der Inhalte verwenden. Drittanbieter können ferner sogenannte Pixel-Tags (unsichtbare Grafiken, auch als “Web Beacons” bezeichnet) für statistische oder Marketingzwecke verwenden. Durch die “Pixel-Tags” können Informationen, wie der Besucherverkehr auf den Seiten dieser Webseite, ausgewertet werden. Die pseudonymen Informationen können ferner in Cookies auf dem Gerät der Nutzer gespeichert werden und unter anderem technische Informationen zum Browser und zum Betriebssystem, zu verweisenden Webseiten, zur Besuchszeit sowie weitere Angaben zur Nutzung unseres Onlineangebotes enthalten als auch mit solchen Informationen aus anderen Quellen verbunden werden."),
                spaceWidget(16),
                subDetailsMultiStyleWidget("Verarbeitete Datenarten: ",
                    "Nutzungsdaten (z.B. besuchte Webseiten, Interesse an Inhalten, Zugriffszeiten); Meta-, Kommunikations- und Verfahrensdaten (z. B. IP-Adressen, Zeitangaben, Identifikationsnummern, Einwilligungsstatus); Standortdaten (Angaben zur geografischen Position eines Gerätes oder einer Person)."),
                subDetailsMultiStyleWidget("Betroffene Personen: ",
                    "Nutzer (z.B. Webseitenbesucher, Nutzer von Onlinediensten)."),
                subDetailsMultiStyleWidget("Zwecke der Verarbeitung: ",
                    "Bereitstellung unseres Onlineangebotes und Nutzerfreundlichkeit."),
                subDetailsMultiStyleWidget("Rechtsgrundlagen: ",
                    "Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f) DSGVO)."),
                Text(
                    'Weitere Hinweise zu Verarbeitungsprozessen, Verfahren und Diensten:',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.5,
                        fontWeight: FontWeight.w700)),
                spaceWidget(16),
                jQueryWidget(),
                googleFontsWidget(),
                googleFonts2Widget(),
                fontAwesomeWidget(),
                googleMapWidget(),
                spaceWidget(16),
                tilteWidget(
                    "Änderung und Aktualisierung der Datenschutzerklärung"),
                spaceWidget(16),
                descriptionWidget(
                    "Wir bitten Sie, sich regelmäßig über den Inhalt unserer Datenschutzerklärung zu informieren. Wir passen die Datenschutzerklärung an, sobald die Änderungen der von uns durchgeführten Datenverarbeitungen dies erforderlich machen. Wir informieren Sie, sobald durch die Änderungen eine Mitwirkungshandlung Ihrerseits (z.B. Einwilligung) oder eine sonstige individuelle Benachrichtigung erforderlich wird."),
                spaceWidget(16),
                descriptionWidget(
                    "Sofern wir in dieser Datenschutzerklärung Adressen und Kontaktinformationen von Unternehmen und Organisationen angeben, bitten wir zu beachten, dass die Adressen sich über die Zeit ändern können und bitten die Angaben vor Kontaktaufnahme zu prüfen."),
                spaceWidget(16),
                tilteWidget("Rechte der betroffenen Personen"),
                spaceWidget(16),
                descriptionWidget(
                    "Ihnen stehen als Betroffene nach der DSGVO verschiedene Rechte zu, die sich insbesondere aus Art. 15 bis 21 DSGVO ergeben:"),
                subDetailsMultiStyleWidget(
                    "Widerspruchsrecht: Sie haben das Recht, aus Gründen, die sich aus Ihrer besonderen Situation ergeben, jederzeit gegen die Verarbeitung der Sie betreffenden personenbezogenen Daten, die aufgrund von Art. 6 Abs. 1 lit. e oder f DSGVO erfolgt, Widerspruch einzulegen; dies gilt auch für ein auf diese Bestimmungen gestütztes Profiling. Werden die Sie betreffenden personenbezogenen Daten verarbeitet, um Direktwerbung zu betreiben, haben Sie das Recht, jederzeit Widerspruch gegen die Verarbeitung der Sie betreffenden personenbezogenen Daten zum Zwecke derartiger Werbung einzulegen; dies gilt auch für das Profiling, soweit es mit solcher Direktwerbung in Verbindung steht.",
                    ""),
                subDetailsMultiStyleWidget(
                    "Widerrufsrecht bei Einwilligungen: ",
                    "Sie haben das Recht, erteilte Einwilligungen jederzeit zu widerrufen."),
                subDetailsMultiStyleWidget("Auskunftsrecht: ",
                    "Sie haben das Recht, eine Bestätigung darüber zu verlangen, ob betreffende Daten verarbeitet werden und auf Auskunft über diese Daten sowie auf weitere Informationen und Kopie der Daten entsprechend den gesetzlichen Vorgaben."),
                subDetailsMultiStyleWidget("Recht auf Berichtigung: ",
                    "Sie haben entsprechend den gesetzlichen Vorgaben das Recht, die Vervollständigung der Sie betreffenden Daten oder die Berichtigung der Sie betreffenden unrichtigen Daten zu verlangen."),
                subDetailsMultiStyleWidget(
                    "Recht auf Löschung und Einschränkung der Verarbeitung: ",
                    "Sie haben nach Maßgabe der gesetzlichen Vorgaben das Recht, zu verlangen, dass Sie betreffende Daten unverzüglich gelöscht werden, bzw. alternativ nach Maßgabe der gesetzlichen Vorgaben eine Einschränkung der Verarbeitung der Daten zu verlangen."),
                subDetailsMultiStyleWidget("Recht auf Datenübertragbarkeit: ",
                    "Sie haben das Recht, Sie betreffende Daten, die Sie uns bereitgestellt haben, nach Maßgabe der gesetzlichen Vorgaben in einem strukturierten, gängigen und maschinenlesbaren Format zu erhalten oder deren Übermittlung an einen anderen Verantwortlichen zu fordern."),
                subDetailsMultiStyleWidget("Beschwerde bei Aufsichtsbehörde: ",
                    "Sie haben unbeschadet eines anderweitigen verwaltungsrechtlichen oder gerichtlichen Rechtsbehelfs das Recht auf Beschwerde bei einer Aufsichtsbehörde, insbesondere in dem Mitgliedstaat ihres gewöhnlichen Aufenthaltsorts, ihres Arbeitsplatzes oder des Orts des mutmaßlichen Verstoßes, wenn Sie der Ansicht sind, dass die Verarbeitung der Sie betreffenden personenbezogenen Daten gegen die Vorgaben der DSGVO verstößt.")
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding ComplianzWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DotWidget(),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Complianz: ",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.black,
                      height: 1.5,
                      fontWeight: FontWeight.w700),
                  children: [
                    TextSpan(
                        text: "Cookie-Einwilligungs-Management; ",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black,
                            height: 1.5,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                        text: "Dienstanbieter: ",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black,
                            height: 1.5,
                            fontWeight: FontWeight.w700)),
                    TextSpan(
                        text:
                            "Lokal auf unserem Server gehostet, keine Datenweitergabe an Dritte; ",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black,
                            height: 1.5,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                        text: "Website: ",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black,
                            height: 1.5,
                            fontWeight: FontWeight.w700)),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "complianz.io/",
                      ),
                    )),
                    TextSpan(
                        text: "; ",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black,
                            height: 1.5,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                        text: "Datenschutzerklärung: ",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black,
                            height: 1.5,
                            fontWeight: FontWeight.w700)),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "complianz.io/legal/",
                      ),
                    )),
                    TextSpan(
                        text: "; ",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black,
                            height: 1.5,
                            fontWeight: FontWeight.w400)),
                    TextSpan(
                        text: "Weitere Informationen: ",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black,
                            height: 1.5,
                            fontWeight: FontWeight.w700)),
                    TextSpan(
                        text:
                            "Es werden eine individuelle Nutzer-ID, Sprache sowie Arten der Einwilligungen und der Zeitpunkt ihrer Abgabe serverseitig und im Cookie auf dem Gerät der Nutzer gespeichert.",
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black,
                            height: 1.5,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  textMultiStyleWidget(text, text2) => RichText(
        text: TextSpan(
          text: '$text',
          style: GoogleFonts.roboto(
              fontSize: 16,
              color: Colors.black,
              height: 1.5,
              fontWeight: FontWeight.w700),
          children: <TextSpan>[
            TextSpan(
                text: '$text2',
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Colors.black,
                    height: 1.5,
                    fontWeight: FontWeight.w400)),
          ],
        ),
      );
  subDetailsMultiStyleWidget(text, text2) => Padding(
        padding: const EdgeInsets.only(left: 28),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: DotWidget(),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [textMultiStyleWidget(text, text2)],
            ))
          ],
        ),
      );
  subDetailsWidget(text) => Padding(
        padding: const EdgeInsets.only(left: 28),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: DotWidget(),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [descriptionWidget(text)],
            ))
          ],
        ),
      );
  spaceWidget(num) => SizedBox(
        height: num,
      );
  tilteWidget(text) => Text(
        '$text',
        textAlign: TextAlign.start,
        style: GoogleFonts.roboto(
            fontSize: 32,
            color: Colors.black,
            height: 1.5,
            fontWeight: FontWeight.w700),
      );
  descriptionWidget(text) => Text(
        '$text',
        textAlign: TextAlign.start,
        style: GoogleFonts.roboto(
            fontSize: 16,
            color: Colors.black,
            height: 1.5,
            fontWeight: FontWeight.w400),
      );
  Padding erhebungWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DotWidget(),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Erhebung von Zugriffsdaten und Logfiles: ",
                  style: styleBold(),
                  children: [
                    TextSpan(
                        text:
                            "Der Zugriff auf unser Onlineangebot wird in Form von so genannten “Server-Logfiles” protokolliert. Zu den Serverlogfiles können die Adresse und Name der abgerufenen Webseiten und Dateien, Datum und Uhrzeit des Abrufs, übertragene Datenmengen, Meldung über erfolgreichen Abruf, Browsertyp nebst Version, das Betriebssystem des Nutzers, Referrer URL (die zuvor besuchte Seite) und im Regelfall IP-Adressen und der anfragende Provider gehören. Die Serverlogfiles können zum einen zu Zwecken der Sicherheit eingesetzt werden, z.B., um eine Überlastung der Server zu vermeiden (insbesondere im Fall von missbräuchlichen Angriffen, sogenannten DDoS-Attacken) und zum anderen, um die Auslastung der Server und ihre Stabilität sicherzustellen; ",
                        style: styleSmall()),
                    TextSpan(text: "Rechtsgrundlagen: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f) DSGVO); ",
                        style: styleSmall()),
                    TextSpan(text: "Löschung von Daten: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Logfile-Informationen werden für die Dauer von maximal 30 Tagen gespeichert und danach gelöscht oder anonymisiert. Daten, deren weitere Aufbewahrung zu Beweiszwecken erforderlich ist, sind bis zur endgültigen Klärung des jeweiligen Vorfalls von der Löschung ausgenommen.",
                        style: styleSmall()),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Padding hetznerWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DotWidget(),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Hetzner: ",
                  style: styleBold(),
                  children: [
                    TextSpan(
                        text:
                            "Leistungen auf dem Gebiet der Bereitstellung von informationstechnischer Infrastruktur und verbundenen Dienstleistungen (z.B. Speicherplatz und/oder Rechenkapazitäten); ",
                        style: styleSmall()),
                    TextSpan(text: "Dienstanbieter: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Hetzner Online GmbH, Industriestr. 25, 91710 Gunzenhausen, Deutschland; ",
                        style: styleSmall()),
                    TextSpan(text: "Rechtsgrundlagen: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f) DSGVO); ",
                        style: styleSmall()),
                    TextSpan(text: "Website: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "www.hetzner.com",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Datenschutzerklärung: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "www.hetzner.com/de/rechtliches/datenschutz",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Auftragsverarbeitungsvertrag: ",
                        style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link:
                            "docs.hetzner.com/de/general/general-terms-and-conditions/data-privacy-faq/",
                      ),
                    )),
                    TextSpan(text: ". ", style: styleSmall()),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Padding jQueryWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DotWidget(),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text:
                      "Einbindung von Drittsoftware, Skripten oder Frameworks (z. B. jQuery): ",
                  style: styleBold(),
                  children: [
                    TextSpan(
                        text:
                            "Wir binden in unser Onlineangebot Software ein, die wir von Servern anderer Anbieter abrufen (z.B. Funktions-Bibliotheken, die wir zwecks Darstellung oder Nutzerfreundlichkeit unseres Onlineangebotes verwenden). Hierbei erheben die jeweiligen Anbieter die IP-Adresse der Nutzer und können diese zu Zwecken der Übermittlung der Software an den Browser der Nutzer sowie zu Zwecken der Sicherheit, als auch zur Auswertung und Optimierung ihres Angebotes verarbeiten. – Wir binden in unser Onlineangebot Software ein, die wir von Servern anderer Anbieter abrufen (z.B. Funktions-Bibliotheken, die wir zwecks Darstellung oder Nutzerfreundlichkeit unseres Onlineangebotes verwenden). Hierbei erheben die jeweiligen Anbieter die IP-Adresse der Nutzer und können diese zu Zwecken der Übermittlung der Software an den Browser der Nutzer sowie zu Zwecken der Sicherheit, als auch zur Auswertung und Optimierung ihres Angebotes verarbeiten; ",
                        style: styleSmall()),
                    TextSpan(text: "Rechtsgrundlagen: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f) DSGVO). ",
                        style: styleSmall()),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Padding googleFontsWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DotWidget(),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Google Fonts (Bereitstellung auf eigenem Server): ",
                  style: styleBold(),
                  children: [
                    TextSpan(
                        text:
                            "Bereitstellung von Schriftarten-Dateien zwecks einer nutzerfreundlichen Darstellung unseres Onlineangebotes; ",
                        style: styleSmall()),
                    TextSpan(text: "Dienstanbieter: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Die Google Fonts werden auf unserem Server gehostet, es werden keine Daten an Google übermittelt; ",
                        style: styleSmall()),
                    TextSpan(text: "Rechtsgrundlagen: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f) DSGVO).",
                        style: styleSmall()),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Padding googleFonts2Widget() {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DotWidget(),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Google Fonts (Bezug vom Google Server): ",
                  style: styleBold(),
                  children: [
                    TextSpan(
                        text:
                            "Bezug von Schriften (und Symbolen) zum Zwecke einer technisch sicheren, wartungsfreien und effizienten Nutzung von Schriften und Symbolen im Hinblick auf Aktualität und Ladezeiten, deren einheitliche Darstellung und Berücksichtigung möglicher lizenzrechtlicher Beschränkungen. Dem Anbieter der Schriftarten wird die IP-Adresse des Nutzers mitgeteilt, damit die Schriftarten im Browser des Nutzers zur Verfügung gestellt werden können. Darüber hinaus werden technische Daten (Spracheinstellungen, Bildschirmauflösung, Betriebssystem, verwendete Hardware) übermittelt, die für die Bereitstellung der Schriften in Abhängigkeit von den verwendeten Geräten und der technischen Umgebung notwendig sind. Diese Daten können auf einem Server des Anbieters der Schriftarten in den USA verarbeitet werden – Beim Besuch unseres Onlineangebotes senden die Browser der Nutzer ihre Browser HTTP-Anfragen an die Google Fonts Web API (d.h. eine Softwareschnittstelle für den Abruf der Schriftarten). Die Google Fonts Web API stellt den Nutzern die Cascading Style Sheets (CSS) von Google Fonts und danach die in der CCS angegebenen Schriftarten zur Verfügung. Zu diesen HTTP-Anfragen gehören (1) die vom jeweiligen Nutzer für den Zugriff auf das Internet verwendete IP-Adresse, (2) die angeforderte URL auf dem Google-Server und (3) die HTTP-Header, einschließlich des User-Agents, der die Browser- und Betriebssystemversionen der Websitebesucher beschreibt, sowie die Verweis-URL (d.h. die Webseite, auf der die Google-Schriftart angezeigt werden soll). IP-Adressen werden weder auf Google-Servern protokolliert noch gespeichert und sie werden nicht analysiert. Die Google Fonts Web API protokolliert Details der HTTP-Anfragen (angeforderte URL, User-Agent und Verweis-URL). Der Zugriff auf diese Daten ist eingeschränkt und streng kontrolliert. Die angeforderte URL identifiziert die Schriftfamilien, für die der Nutzer Schriftarten laden möchte. Diese Daten werden protokolliert, damit Google bestimmen kann, wie oft eine bestimmte Schriftfamilie angefordert wird. Bei der Google Fonts Web API muss der User-Agent die Schriftart anpassen, die für den jeweiligen Browsertyp generiert wird. Der User-Agent wird in erster Linie zum Debugging protokolliert und verwendet, um aggregierte Nutzungsstatistiken zu generieren, mit denen die Beliebtheit von Schriftfamilien gemessen wird. Diese zusammengefassten Nutzungsstatistiken werden auf der Seite „Analysen“ von Google Fonts veröffentlicht. Schließlich wird die Verweis-URL protokolliert, sodass die Daten für die Wartung der Produktion verwendet und ein aggregierter Bericht zu den Top-Integrationen basierend auf der Anzahl der Schriftartenanfragen generiert werden kann. Google verwendet laut eigener Auskunft keine der von Google Fonts erfassten Informationen, um Profile von Endnutzern zu erstellen oder zielgerichtete Anzeigen zu schalten; ",
                        style: styleSmall()),
                    TextSpan(text: "Dienstanbieter: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Google Ireland Limited, Gordon House, Barrow Street, Dublin 4, Irland; ",
                        style: styleSmall()),
                    TextSpan(text: "Rechtsgrundlagen: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f) DSGVO); ",
                        style: styleSmall()),
                    TextSpan(text: "Website: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "fonts.google.com/",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Datenschutzerklärung: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "policies.google.com/privacy",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Weitere Informationen: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "developers.google.com/fonts/faq/privacy?hl=de",
                      ),
                    )),
                    TextSpan(text: ". ", style: styleSmall()),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Padding fontAwesomeWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DotWidget(),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Font Awesome (Bereitstellung auf eigenem Server): ",
                  style: styleBold(),
                  children: [
                    TextSpan(
                        text: "Darstellung von Schriftarten und Symbolen; ",
                        style: styleSmall()),
                    TextSpan(text: "Dienstanbieter: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Die Font Awesome Icons werden auf unserem Server gehostet, es werden keine Daten an den Anbieter von Font Awesome übermittelt; ",
                        style: styleSmall()),
                    TextSpan(text: "Rechtsgrundlagen: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f) DSGVO).",
                        style: styleSmall()),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Padding googleMapWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DotWidget(),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Google Maps: ",
                  style: styleBold(),
                  children: [
                    TextSpan(
                        text:
                            "Wir binden die Landkarten des Dienstes “Google Maps” des Anbieters Google ein. Zu den verarbeiteten Daten können insbesondere IP-Adressen und Standortdaten der Nutzer gehören;",
                        style: styleSmall()),
                    TextSpan(text: "Dienstanbieter: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Google Cloud EMEA Limited, 70 Sir John Rogerson’s Quay, Dublin 2, Irland; ",
                        style: styleSmall()),
                    TextSpan(text: "Rechtsgrundlagen: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f) DSGVO);  ",
                        style: styleSmall()),
                    TextSpan(text: "Website: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "mapsplatform.google.com/",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Datenschutzerklärung: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "policies.google.com/privacy",
                      ),
                    )),
                    TextSpan(text: ". ", style: styleSmall()),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Padding google1Widget() {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DotWidget(),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Google Analytics: ",
                  style: styleBold(),
                  children: [
                    TextSpan(
                        text: "Reichweitenmessung und Webanalyse; ",
                        style: styleSmall()),
                    TextSpan(text: "Dienstanbieter: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Google Ireland Limited, Gordon House, Barrow Street, Dublin 4, Irland; ",
                        style: styleSmall()),
                    TextSpan(text: "Rechtsgrundlagen: ", style: styleBold()),
                    TextSpan(
                        text:
                            " Einwilligung (Art. 6 Abs. 1 S. 1 lit. a) DSGVO);",
                        style: styleSmall()),
                    TextSpan(text: "Website: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link:
                            "marketingplatform.google.com/intl/de/about/analytics/",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Datenschutzerklärung: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "policies.google.com/privacy",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Auftragsverarbeitungsvertrag: ",
                        style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "business.safety.google/adsprocessorterms/",
                      ),
                    )),
                    TextSpan(
                        text:
                            "Standardvertragsklauseln (Gewährleistung Datenschutzniveau bei Verarbeitung in Drittländern): ",
                        style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "business.safety.google/adsprocessorterms",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Widerspruchsmöglichkeit (Opt-Out): ",
                        style: styleBold()),
                    TextSpan(text: "Opt-Out-Plugin: ", style: styleSmall()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "tools.google.com/dlpage/gaoptout?hl=de",
                      ),
                    )),
                    TextSpan(
                        text:
                            " Einstellungen für die Darstellung von Werbeeinblendungen: ",
                        style: styleSmall()),
                    const WidgetSpan(
                        child: Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: LinkWidget(
                              link: "adssettings.google.com/authenticated",
                            ))),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Weitere Informationen: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: LinkWidget(
                              link: "privacy.google.com/businesses/adsservices",
                            ))),
                    TextSpan(
                        text:
                            "(Arten der Verarbeitung sowie der verarbeiteten Daten).",
                        style: styleSmall()),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Padding google2Widget() {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DotWidget(),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Google Analytics: ",
                  style: styleBold(),
                  children: [
                    TextSpan(
                        text:
                            "Webanalyse, Reichweitenmessung sowie Messung von Nutzerströmen; ",
                        style: styleSmall()),
                    TextSpan(text: "Dienstanbieter: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Google Ireland Limited, Gordon House, Barrow Street, Dublin 4, Irland; Rechtsgrundlagen: Einwilligung (Art. 6 Abs. 1 S. 1 lit. a) DSGVO); ",
                        style: styleSmall()),
                    TextSpan(text: "Website: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link:
                            "marketingplatform.google.com/intl/de/about/analytics/",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Datenschutzerklärung: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "policies.google.com/privacy",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Auftragsverarbeitungsvertrag: ",
                        style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "business.safety.google/adsprocessorterms",
                      ),
                    )),
                    TextSpan(
                        text:
                            "Standardvertragsklauseln (Gewährleistung Datenschutzniveau bei Verarbeitung in Drittländern): ",
                        style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "business.safety.google/adsprocessorterms",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Widerspruchsmöglichkeit (Opt-Out): ",
                        style: styleBold()),
                    TextSpan(text: "Opt-Out-Plugin: ", style: styleSmall()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "tools.google.com/dlpage/gaoptout?hl=de",
                      ),
                    )),
                    TextSpan(
                        text:
                            " Einstellungen für die Darstellung von Werbeeinblendungen: ",
                        style: styleSmall()),
                    const WidgetSpan(
                        child: Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: LinkWidget(
                              link: "adssettings.google.com/authenticated",
                            ))),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Weitere Informationen: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: LinkWidget(
                              link: "privacy.google.com/businesses/adsservices",
                            ))),
                    TextSpan(
                        text:
                            "(Arten der Verarbeitung sowie der verarbeiteten Daten).",
                        style: styleSmall()),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Padding google3Widget() {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DotWidget(),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Google Analytics 4: ",
                  style: styleBold(),
                  children: [
                    TextSpan(
                        text:
                            "Wir verwenden Google Analytics zur Messung und Analyse der Nutzung unseres Onlineangebotes auf der Grundlage einer pseudonymen Nutzeridentifikationsnummer. Diese Identifikationsnummer enthält keine eindeutigen Daten, wie Namen oder E-Mail-Adressen. Sie dient dazu, Analyseinformationen einem Endgerät zuzuordnen, um zu erkennen, welche Inhalte die Nutzer innerhalb eines oder verschiedener Nutzungsvorgänge aufgerufen haben, welche Suchbegriffe sie verwendet haben, diese erneut aufgerufen haben oder mit unserem Onlineangebot interagiert haben. Ebenso werden der Zeitpunkt der Nutzung und deren Dauer gespeichert, sowie die Quellen der Nutzer, die auf unser Onlineangebot verweisen und technische Aspekte ihrer Endgeräte und Browser. Dabei werden pseudonyme Profile von Nutzern mit Informationen aus der Nutzung verschiedener Geräte erstellt, wobei Cookies eingesetzt werden können. In Analytics werden Daten zum geografischen Standort auf höherer Ebene bereitgestellt, indem die folgenden Metadaten anhand der IP-Suche erfasst werden: „Stadt“ (und der abgeleitete Breiten- und Längengrad der Stadt), „Kontinent“, „Land“, „Region“, „Subkontinent“ (und die ID-basierten Entsprechungen). Um den Schutz der Nutzerdaten in der EU zu gewährleisten, empfängt und verarbeitet Google alle Nutzerdaten über Domains und Server innerhalb der EU. Die IP-Adresse der Nutzer wird nicht protokolliert und standardmäßig um die letzten beiden Ziffern gekürzt. Die Kürzung der IP-Adresse findet auf EU-Servern für EU-Nutzer statt. Außerdem werden alle sensiblen Daten, die von Nutzern in der EU erhoben werden, gelöscht, bevor sie über EU-Domänen und -Server erfasst werden; ",
                        style: styleSmall()),
                    TextSpan(text: "Dienstanbieter: ", style: styleBold()),
                    TextSpan(
                        text:
                            " Google Ireland Limited, Gordon House, Barrow Street, Dublin 4, Irland; ",
                        style: styleSmall()),
                    TextSpan(text: "Rechtsgrundlagen: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Einwilligung (Art. 6 Abs. 1 S. 1 lit. a) DSGVO); ",
                        style: styleSmall()),
                    TextSpan(text: "Website: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link:
                            "marketingplatform.google.com/intl/de/about/analytics/",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Datenschutzerklärung: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "policies.google.com/privacy",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Auftragsverarbeitungsvertrag: ",
                        style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "business.safety.google/adsprocessorterms",
                      ),
                    )),
                    TextSpan(
                        text:
                            "Standardvertragsklauseln (Gewährleistung Datenschutzniveau bei Verarbeitung in Drittländern): ",
                        style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "business.safety.google/adsprocessorterms",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Widerspruchsmöglichkeit (Opt-Out): ",
                        style: styleBold()),
                    TextSpan(text: "Opt-Out-Plugin: ", style: styleSmall()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "tools.google.com/dlpage/gaoptout?hl=de",
                      ),
                    )),
                    TextSpan(
                        text:
                            " Einstellungen für die Darstellung von Werbeeinblendungen: ",
                        style: styleSmall()),
                    const WidgetSpan(
                        child: Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: LinkWidget(
                              link: "adssettings.google.com/authenticated",
                            ))),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Weitere Informationen: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: LinkWidget(
                              link: "privacy.google.com/businesses/adsservices",
                            ))),
                    TextSpan(
                        text:
                            "(Arten der Verarbeitung sowie der verarbeiteten Daten).",
                        style: styleSmall()),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Padding jetpackWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DotWidget(),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Jetpack (WordPress Stats): ",
                  style: styleBold(),
                  children: [
                    TextSpan(
                        text:
                            "Jetpack bietet Analyse – Funktionen für WordPress-Software; ",
                        style: styleSmall()),
                    TextSpan(text: "Dienstanbieter: ", style: styleBold()),
                    TextSpan(
                        text:
                            " Aut O’Mattic A8C Irland Ltd., Grand Canal Dock, 25 Herbert Pl, Dublin, D02 AY86, Irland",
                        style: styleSmall()),
                    TextSpan(text: "Rechtsgrundlagen: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Einwilligung (Art. 6 Abs. 1 S. 1 lit. a) DSGVO); ",
                        style: styleSmall()),
                    TextSpan(text: "Website: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "automattic.com",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Datenschutzerklärung: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "automattic.com/privacy",
                      ),
                    )),
                    TextSpan(text: ". ", style: styleSmall()),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Padding instagramWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DotWidget(),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Instagram: ",
                  style: styleBold(),
                  children: [
                    TextSpan(text: "Soziales Netzwerk;  ", style: styleSmall()),
                    TextSpan(text: "Dienstanbieter: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Meta Platforms Irland Limited, 4 Grand Canal Square, Grand Canal Harbour, Dublin 2, Irland;",
                        style: styleSmall()),
                    TextSpan(text: "Rechtsgrundlagen: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f) DSGVO); ",
                        style: styleSmall()),
                    TextSpan(text: "Website: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "www.instagram.com",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Datenschutzerklärung: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "instagram.com/about/legal/privacy",
                      ),
                    )),
                    TextSpan(text: ". ", style: styleSmall()),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Padding facebookWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DotWidget(),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "Facebook-Seiten: ",
                  style: styleBold(),
                  children: [
                    TextSpan(
                        text:
                            "Profile innerhalb des sozialen Netzwerks Facebook – Wir sind gemeinsam mit Meta Platforms Ireland Limited für die Erhebung (jedoch nicht die weitere Verarbeitung) von Daten der Besucher unserer Facebook-Seite (sog. “Fanpage”) verantwortlich. Zu diesen Daten gehören Informationen zu den Arten von Inhalten, die Nutzer sich ansehen oder mit denen sie interagieren, oder die von ihnen vorgenommenen Handlungen (siehe unter „Von dir und anderen getätigte und bereitgestellte Dinge“ in der Facebook-Datenrichtlinie: https://www.facebook.com/policy), sowie Informationen über die von den Nutzern genutzten Geräte (z. B. IP-Adressen, Betriebssystem, Browsertyp, Spracheinstellungen, Cookie-Daten; siehe unter „Geräteinformationen“ in der Facebook-Datenrichtlinie: ",
                        style: styleSmall()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "www.facebook.com/policy",
                      ),
                    )),
                    TextSpan(
                        text:
                            "). Wie in der Facebook-Datenrichtlinie unter „Wie verwenden wir diese Informationen?“ erläutert, erhebt und verwendet Facebook Informationen auch, um Analysedienste, so genannte “Seiten-Insights”, für Seitenbetreiber bereitzustellen, damit diese Erkenntnisse darüber erhalten, wie Personen mit ihren Seiten und mit den mit ihnen verbundenen Inhalten interagieren. Wir haben mit Facebook eine spezielle Vereinbarung abgeschlossen (“Informationen zu Seiten-Insights”, ",
                        style: styleSmall()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link:
                            "www.facebook.com/legal/terms/page_controller_addendum",
                      ),
                    )),
                    TextSpan(
                        text:
                            ", in der insbesondere geregelt wird, welche Sicherheitsmaßnahmen Facebook beachten muss und in der Facebook sich bereit erklärt hat die Betroffenenrechte zu erfüllen (d. h. Nutzer können z. B. Auskünfte oder Löschungsanfragen direkt an Facebook richten). Die Rechte der Nutzer (insbesondere auf Auskunft, Löschung, Widerspruch und Beschwerde bei zuständiger Aufsichtsbehörde), werden durch die Vereinbarungen mit Facebook nicht eingeschränkt. Weitere Hinweise finden sich in den “Informationen zu Seiten-Insights” (",
                        style: styleSmall()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link:
                            "www.facebook.com/legal/terms/information_about_page_insights_data",
                      ),
                    )),
                    TextSpan(text: "); ", style: styleSmall()),
                    TextSpan(text: "Dienstanbieter: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Meta Platforms Ireland Limited, 4 Grand Canal Square, Grand Canal Harbour, Dublin 2, Irland; ",
                        style: styleSmall()),
                    TextSpan(text: "Rechtsgrundlagen: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f) DSGVO); ",
                        style: styleSmall()),
                    TextSpan(text: "Website: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "www.facebook.com",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Datenschutzerklärung: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "www.facebook.com/about/privacy",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text:
                            "Standardvertragsklauseln (Gewährleistung Datenschutzniveau bei Verarbeitung in Drittländern): ",
                        style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link:
                            "www.facebook.com/legal/EU_data_transfer_addendum",
                      ),
                    )),
                    TextSpan(
                        text: "Weitere Informationen: ", style: styleBold()),
                    TextSpan(
                        text: "Vereinbarung gemeinsamer Verantwortlichkeit: ",
                        style: styleSmall()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link:
                            "www.facebook.com/legal/terms/information_about_page_insights_data",
                      ),
                    )),
                    TextSpan(
                        text:
                            ". Die gemeinsame Verantwortlichkeit beschränkt sich auf die Erhebung durch und Übermittlung von Daten an Meta Platforms Ireland Limited, ein Unternehmen mit Sitz in der EU. Die weitere Verarbeitung der Daten liegt in der alleinigen Verantwortung von Meta Platforms Ireland Limited, was insbesondere die Übermittlung der Daten an die Muttergesellschaft Meta Platforms, Inc. in den USA betrifft (auf der Grundlage der zwischen Meta Platforms Ireland Limited und Meta Platforms, Inc. geschlossenen Standardvertragsklauseln).",
                        style: styleSmall()),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  Padding wordPressWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 28),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: DotWidget(),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: "WordPress.com: ",
                  style: styleBold(),
                  children: [
                    TextSpan(
                        text:
                            "Hosting und Software für die Erstellung, Bereitstellung und den Betrieb von Websites, Blogs und anderen Onlineangeboten; ",
                        style: styleSmall()),
                    TextSpan(text: "Dienstanbieter: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Aut O’Mattic A8C Irland Ltd., Grand Canal Dock, 25 Herbert Pl, Dublin, D02 AY86, Irland; ",
                        style: styleSmall()),
                    TextSpan(text: "Rechtsgrundlagen: ", style: styleBold()),
                    TextSpan(
                        text:
                            "Berechtigte Interessen (Art. 6 Abs. 1 S. 1 lit. f) DSGVO); ",
                        style: styleSmall()),
                    TextSpan(text: "Website: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "wordpress.com",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Datenschutzerklärung: ", style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link: "automattic.com/de/privacy/",
                      ),
                    )),
                    TextSpan(text: "; ", style: styleSmall()),
                    TextSpan(
                        text: "Auftragsverarbeitungsvertrag: ",
                        style: styleBold()),
                    const WidgetSpan(
                        child: Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: LinkWidget(
                        link:
                            "wordpress.com/support/data-processing-agreements/",
                      ),
                    )),
                    TextSpan(text: ". ", style: styleSmall()),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }

  styleSmall() => GoogleFonts.roboto(
      fontSize: 16,
      color: Colors.black,
      height: 1.5,
      fontWeight: FontWeight.w400);
  styleBold() => GoogleFonts.roboto(
      fontSize: 16,
      color: Colors.black,
      height: 1.5,
      fontWeight: FontWeight.w700);
}
