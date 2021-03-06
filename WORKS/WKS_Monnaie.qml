import QtQuick 2.12
import "../WIDGETS/"

Item {
    id: item1
    property real wg_cumul_monnaie: 0
    property int wg_sens: 0

    Image{
        y: parent.height-41
        anchors.left: parent.left
        anchors.right: parent.right
        height: 41
        source: "../Images/Game_art/sand.png"
        fillMode: Image.Tile
    }

    Image{
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 41
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: etagere_monnaie.bottom
        source: "../Images/Game_art/block.png"
        fillMode: Image.Tile
    }

    WID_Button{
        x: parent.width - 35
        y: 5
        width: 30
        height: 30
        button_title: "X"
        onClicked: {
            fn_close_activity()
        }
    }

    Rectangle{
        id: etagere_monnaie
        height: 20
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 250
        color: "#e6ac46"
        border.width: 1
        border.color: "#c2913d"
    }

    Flow{
        id: flowmonnaie
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.bottom: action_monnaie.top
        anchors.bottomMargin: 10
        anchors.top: etagere_monnaie.bottom
        anchors.topMargin: 10
        spacing: 10
        Image {
            id: p0
            width: (parent.width-30)/3
            height: (parent.height-10)/2
            cache: false
            fillMode: Image.PreserveAspectFit
            source: ""
            horizontalAlignment: Image.AlignHCenter
            verticalAlignment: Image.AlignVCenter
            asynchronous: true
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    fn_put_monnaie(0)
                }
            }
        }
        Image {
            id: p1
            width: (parent.width-30)/3
            height: (parent.height-10)/2
            cache: false
            fillMode: Image.PreserveAspectFit
            source: ""
            horizontalAlignment: Image.AlignHCenter
            verticalAlignment: Image.AlignVCenter
            asynchronous: true
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    fn_put_monnaie(1)
                }
            }
        }
        Image {
            id: p2
            width: (parent.width-30)/3
            height: (parent.height-10)/2
            cache: false
            fillMode: Image.PreserveAspectFit
            source: ""
            horizontalAlignment: Image.AlignHCenter
            verticalAlignment: Image.AlignVCenter
            asynchronous: true
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    fn_put_monnaie(2)
                }
            }
        }
        Image {
            id: p3
            width: (parent.width-30)/3
            height: (parent.height-10)/2
            cache: false
            fillMode: Image.PreserveAspectFit
            source: ""
            horizontalAlignment: Image.AlignHCenter
            verticalAlignment: Image.AlignVCenter
            asynchronous: true
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    fn_put_monnaie(3)
                }
            }
        }
        Image {
            id: p4
            width: (parent.width-30)/3
            height: (parent.height-10)/2
            cache: false
            fillMode: Image.PreserveAspectFit
            source: ""
            horizontalAlignment: Image.AlignHCenter
            verticalAlignment: Image.AlignVCenter
            asynchronous: true
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    fn_put_monnaie(4)
                }
            }
        }
    }


    Flow{
        id: action_monnaie
        height: 50
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        spacing: 10
        WID_Button{
            button_title: "Annuler"
            width: (parent.width/2)-10
            height: parent.height
            onClicked: {
                fn_cancel_exomonnaie()
            }
        }
        WID_Button{
            button_title: "Valider"
            width: (parent.width/2)-10
            height: parent.height
            gradcolor_2: "#DCE775"
            gradcolor_1: "#D4E157"
            textcolor: "#222222"
            onClicked: {
                fn_valide_exomonnaie()
            }
        }
    }

    Flow {
        id: flow1
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 50
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.bottom: etagere_monnaie.top
        anchors.bottomMargin: 0

        Item{
            id: item2
            width: parent.width / 2
            height: parent.height
            Image{
                id: imgnounours
                anchors.fill: parent
                smooth: false
                cache: false
                asynchronous: true
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignBottom
                source: "../Images/toy3.png"
                fillMode: Image.PreserveAspectFit
            }

            Rectangle{
                id: support_price_monnaie
                x: 0
                y: parent.height / 3
                width: parent.width
                height: parent.height / 3
                color: "#CCffffff"
                border.width: 1
                border.color: "#777777"
                anchors.bottom: parent.bottom
                anchors.bottomMargin: -14
                rotation: -1
                Text{
                    id: price_monnaie
                    anchors.fill: parent

                    minimumPixelSize: 8
                    font.pixelSize: 128
                    fontSizeMode: Text.Fit
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter

                    text: "0"
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    color: "#FFFFFF"
                    style: Text.Outline
                    styleColor: "#000000"
                }
            }
        }

        Item{
            id: item3
            width: (parent.width-10)/2
            height: parent.height

            Text{
                id: cumul_enfant
                minimumPixelSize: 8
                font.pixelSize: 128
                fontSizeMode: Text.Fit
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

                text: "0"
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                color: "#FFFFFF"
                style: Text.Outline
                styleColor: "#000000"
            }
        }
    }

    function init_work()
    {
        if ( wg_sens == 0 )
        {
            p0.source = "../Images/10cent.png"
            p1.source = "../Images/20cent.png"
            p2.source = "../Images/50cent.png"
            p3.source = "../Images/1euro.png"
            p4.source = "../Images/2euro.png"

            if ( wl_level_of_difficulty == 5 )
            {
                wl_current_max = 100
            }
            else
            {
                if ( wl_level_of_difficulty == 30 )
                {
                    wl_current_max = 200
                }
                else
                {
                    wl_current_max = 300
                }
            }
        }
        else
        {
            p0.source = "../Images/b5.png"
            p1.source = "../Images/b10.png"
            p2.source = "../Images/b20.png"
            p3.source = "../Images/b50.png"
            p4.source = "../Images/b100.png"
        }

        change_values()
    }

    function change_values()
    {
        var wl_prix = 0

        cumul_enfant.text = "Déjà payé\n0.00"
        wg_cumul_monnaie = 0

        if ( wg_sens == 0 )
        {
            wl_prix = 0.1 * Math.round((Math.random() * wl_current_max))

            while ( wl_prix == 0 )
            {
                wl_prix = 0.1 * Math.round((Math.random() * wl_current_max))
            }
        }
        else
        {
            wl_prix = 5 * Math.round((Math.random() * wl_current_max))

            while ( wl_prix == 0 )
            {
                wl_prix = 5 * Math.round((Math.random() * wl_current_max))
            }
        }

        price_monnaie.text = wl_prix.toFixed(2) + " €"
    }

    function fn_put_monnaie(id_piece)
    {
        if ( wg_sens == 0 )
        {
            switch(id_piece){
            case 0:
                wg_cumul_monnaie += 0.10
                break;
            case 1:
                wg_cumul_monnaie += 0.20
                break;
            case 2:
                wg_cumul_monnaie += 0.50
                break;
            case 3:
                wg_cumul_monnaie += 1
                break;
            case 4:
                wg_cumul_monnaie += 2
                break;
            }
        }
        else
        {
            switch(id_piece){
            case 0:
                wg_cumul_monnaie += 5
                break;
            case 1:
                wg_cumul_monnaie += 10
                break;
            case 2:
                wg_cumul_monnaie += 20
                break;
            case 3:
                wg_cumul_monnaie += 50
                break;
            case 4:
                wg_cumul_monnaie += 100
                break;
            }
        }

        cumul_enfant.text = "Déjà payé\n" + wg_cumul_monnaie.toFixed(2) + "€"
    }

    function fn_cancel_exomonnaie()
    {
        cumul_enfant.text = "Déjà payé\n0.00 €"
        wg_cumul_monnaie = 0
    }

    function fn_valide_exomonnaie()
    {
        if ( price_monnaie.text.substr(0,price_monnaie.text.length-2) == wg_cumul_monnaie.toFixed(2) )
        {
            result_question.fn_show_hit("OK")

            if ( wl_current_point > 10 )
            {
                wl_current_max = wl_current_max+(10*wl_current_level)
                wl_current_level++
                wl_current_point = 0

                if ( wl_current_point_cumul >= 50 )
                {
                    fn_show_victory()
                }
                else
                {
                    change_values()
                }
            }
            else
            {
                change_values()
            }
        }
        else
        {
            result_question.fn_show_hit("NOK")
            fn_cancel_exomonnaie()
        }
    }
}
