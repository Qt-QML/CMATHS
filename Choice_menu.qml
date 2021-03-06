import QtQuick 2.12
import "WIDGETS/"
import QtGraphicalEffects 1.0

Item {
    property real activity_number: 14
    property int cell_per_row: Math.ceil((activity_number*2) / Math.floor((frm_application.height-90)/220))

    Rectangle{
        anchors.fill: parent
        z: 0

        FastBlur {
            anchors.fill: parent
            source: start_screen
            radius: 32
        }

        Rectangle{
            anchors.fill: parent
            color: "#AA740846"
        }

        WID_Button{
            x: parent.width - 35
            y: 5
            width: 30
            height: 30
            button_title: "X"
            onClicked: {
                fn_return_home()
            }
        }

        Text{
            id: txt_scroll_choice
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 10
            height: 85
            minimumPixelSize: 6
            font.pixelSize: 128
            fontSizeMode: Text.Fit
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: "Sélectionne une activité\nFais glisser pour voir d'autres activités"
            font.family: local_school.name
            color: "#FFFFFF"
            style: Text.Outline
            styleColor: "#000000"
        }

        Flickable {
            anchors.top: txt_scroll_choice.bottom
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            flickableDirection: Flickable.HorizontalFlick
            contentWidth: (350 * cell_per_row) + (20 * cell_per_row)
            contentHeight: parent.height

            Grid {
                x: 0
                y: 0
                width: parent.width
                height: parent.height
                columns: cell_per_row
                spacing: 20

                WID_Activity{
                    wg_txt_activity: "Plus petit / Plus grand"
                    wg_id_activity: 1
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 0.3
                    wg_text_expl: "< ? >"
                }

                WID_Activity{
                    wg_txt_activity: "Ordre croissant"
                    wg_id_activity: 2
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 0.3
                    wg_text_expl: "1 2 3 ..."
                }

                WID_Activity{
                    wg_txt_activity: "Ordre décroissant"
                    wg_id_activity: 4
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 0.3
                    wg_text_expl: "3 2 1 ..."
                }

                WID_Activity{
                    wg_txt_activity: "Compter les objets"
                    wg_id_activity: 3
                    wg_niv_1: 1
                    wg_niv_2: 0.3
                    wg_niv_3: 0.3
                    wg_text_expl: "?"
                }

                WID_Activity{
                    wg_txt_activity: "Memory"
                    wg_id_activity: 25
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 0.3
                    wg_text_expl: "4 | 2 + 2"
                }

                WID_Activity{
                    wg_txt_activity: "Tétri'chiffres"
                    wg_id_activity: 24
                    wg_niv_1: 0.3
                    wg_niv_2: 1
                    wg_niv_3: 1
                    wg_text_expl: "4 + 5 = 9"
                }

                WID_Activity{
                    wg_txt_activity: "Chiffre manquant"
                    wg_id_activity: 20
                    wg_niv_1: 1
                    wg_niv_2: 0.3
                    wg_niv_3: 0.3
                    wg_text_expl: "1 2 ... 4"
                }

                WID_Activity{
                    wg_txt_activity: "Faire des additions"
                    wg_id_activity: 5
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 0.3
                    wg_text_expl: "5 + 8 = ?"
                }

                WID_Activity{
                    wg_txt_activity: "Additions à trou"
                    wg_id_activity: 9
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 1
                    wg_text_expl: "5 + ? = 13"
                }

                WID_Activity{
                    wg_txt_activity: "Faire des soustractions"
                    wg_id_activity: 6
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 0.3
                    wg_text_expl: "4 - 2 = ?"
                }

                WID_Activity{
                    wg_txt_activity: "Soustractions à trou"
                    wg_id_activity: 10
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 1
                    wg_text_expl: "4 - ? = 2"
                }

                WID_Activity{
                    wg_txt_activity: "La grille a compter\nAdditions"
                    wg_id_activity: 22
                    wg_niv_1: 0.3
                    wg_niv_2: 1
                    wg_niv_3: 1
                    wg_text_expl: "4 + 1 | 2 + 6 | 3 + 1"
                }

                WID_Activity{
                    wg_txt_activity: "La grille a compter\nSoustractions"
                    wg_id_activity: 23
                    wg_niv_1: 0.3
                    wg_niv_2: 1
                    wg_niv_3: 1
                    wg_text_expl: "4 - 1 | 6 - 2 | 3 - 1"
                }
                WID_Activity{
                    wg_txt_activity: "Décomposition d'un nombre"
                    wg_id_activity: 7
                    wg_niv_1: 1
                    wg_niv_2: 0.3
                    wg_niv_3: 0.3
                    wg_text_expl: "10 + 1"
                }

                WID_Activity{
                    wg_txt_activity: "Décomposition d'un nombre niveau 2"
                    wg_id_activity: 15
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 0.3
                    wg_text_expl: "10 + 5 + 1"
                }

                WID_Activity{
                    wg_txt_activity: "Algorithmes"
                    wg_id_activity: 8
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 0.3
                    wg_text_expl: "rouge, vert, rouge, ..."
                }

                WID_Activity{
                    wg_txt_activity: "Tables de multiplication"
                    wg_id_activity: 11
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 1
                    wg_text_expl: "4 * 2 = 8"
                }

                WID_Activity{
                    wg_txt_activity: "Tables d'addition"
                    wg_id_activity: 12
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 0.3
                    wg_text_expl: "1 + 1 = 2"
                }

                WID_Activity{
                    wg_txt_activity: "La monnaie - billets"
                    wg_id_activity: 17
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 1
                    wg_text_expl: "50 Euro"
                }

                WID_Activity{
                    wg_txt_activity: "La monnaie - pièces"
                    wg_id_activity: 13
                    wg_niv_1: 0.3
                    wg_niv_2: 1
                    wg_niv_3: 1
                    wg_text_expl: "1.20 Euro"
                }

                WID_Activity{
                    wg_txt_activity: "Repérage"
                    wg_id_activity: 14
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 0.3
                    wg_text_expl: "A4 B6 C1"
                }

                WID_Activity{
                    wg_txt_activity: "L'heure"
                    wg_id_activity: 16
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 1
                    wg_text_expl: "10h30"
                }

                WID_Activity{
                    wg_txt_activity: "La symétrie\nverticale"
                    wg_id_activity: 19
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 0.3
                    wg_text_expl: "A | A"
                }

                WID_Activity{
                    wg_txt_activity: "La balance"
                    wg_id_activity: 21
                    wg_niv_1: 1
                    wg_niv_2: 1
                    wg_niv_3: 0.3
                    wg_text_expl: "10 G | ?"
                }

                WID_Activity{
                    wg_txt_activity: "Conversion\nd unités"
                    wg_id_activity: 26
                    wg_niv_1: 0.3
                    wg_niv_2: 0.3
                    wg_niv_3: 1
                    wg_text_expl: "1km = 1000m, ..."
                }

                WID_Activity{
                    wg_txt_activity: "Pair\nImpair"
                    wg_id_activity: 27
                    wg_niv_1: 0.3
                    wg_niv_2: 1
                    wg_niv_3: 1
                    wg_text_expl: "1, 3, 5 / 2, 4, 6"
                }
            }
        }
    }
}
