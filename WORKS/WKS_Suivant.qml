import QtQuick 2.12
import "../WIDGETS/"

Item {

    property int wl_calc_val_1: 0
    property int wl_good_answer: 0
    property int wl_interval: 0
    property int wl_alea: 0
    property int wl_alea_sorte: 0
    property int wl_alea_sorte_plus: 0

    WID_Button{
        x: parent.width - 35
        y: 5
        width: 30
        height: 30
        button_title: "X"
        onClicked: {
            player_next.playing = false
            fn_close_activity()
        }
    }

    Flow{
        anchors.top: parent.top
        anchors.topMargin: 40
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.bottom: player_next.top
        anchors.bottomMargin: 10
        spacing: 20

        Text{
            id: rock_1_answer
            width: (parent.width - 40)/3
            height: parent.height
            minimumPixelSize: 8
            font.pixelSize: 128
            fontSizeMode: Text.Fit
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: ""
            color: "#FFFFFF"
            style: Text.Outline
            styleColor: "#000000"

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    fn_click_ans_next(parent.text)
                }
            }
        }

        Text{
            id: rock_2_answer
            width: (parent.width - 40)/3
            height: parent.height
            minimumPixelSize: 8
            font.pixelSize: 128
            fontSizeMode: Text.Fit
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: ""
            color: "#FFFFFF"
            style: Text.Outline
            styleColor: "#000000"

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    fn_click_ans_next(parent.text)
                }
            }
        }

        Text{
            id: rock_3_answer
            width: (parent.width - 40)/3
            height: parent.height
            minimumPixelSize: 8
            font.pixelSize: 128
            fontSizeMode: Text.Fit
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: ""
            color: "#FFFFFF"
            style: Text.Outline
            styleColor: "#000000"

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    fn_click_ans_next(parent.text)
                }
            }
        }
    }

    Item{
        id: sol_suivant
        x: 0
        y: parent.height - 176
        width: frm_application.width*3
        height: 176

        Behavior on x {
            NumberAnimation {
                easing.overshoot: 0
                duration: 1000
                easing.type: Easing.InOutQuad
            }
        }

        Image{
            x: 0
            y: 0
            width: parent.width
            height: 40
            source: "../Images/Game_art/terre_haut.png"
            fillMode: Image.Tile
        }

        Image{
            x: 0
            y: 36
            width: parent.width
            height: parent.height - 34
            source: "../Images/Game_art/terre_bas.png"
            fillMode: Image.Tile
        }
    }

    AnimatedImage{
        id: player_next
        x: 20
        y: parent.height - 286
        cache: true
        smooth: false
        playing: false
        asynchronous: true
        width: 80
        height: 110
        source: "../Images/Game_art/player.gif"
    }

    Item{
        id: flotte_next

        x: frm_application.width + 10
        y: parent.height - 176
        width: 210
        height: 176

        Behavior on x {
            NumberAnimation {
                easing.overshoot: 0
                duration: 1000
                easing.type: Easing.InOutQuad
            }
        }

        Image{
            x: 0
            y: 70
            width: parent.width
            height: parent.height - 70
            source: "../Images/Game_art/eau_bas.png"
            fillMode: Image.Tile
        }

        Image{
            x: 0
            y: 0
            width: parent.width
            height: 70
            source: "../Images/Game_art/eau_haut.png"
            fillMode: Image.Tile
        }

        Flow{
            x: 0
            y: 0
            anchors.right: parent.right
            height: 70

            Image{
                id: rock_1_p
                width: 70
                height: 70
                source: "../Images/Game_art/stone.png"

                Text{
                    id: rock_1
                    anchors.fill: parent
                    minimumPixelSize: 8
                    font.pixelSize: 128
                    fontSizeMode: Text.Fit
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: "#FFFFFF"
                    style: Text.Outline
                    styleColor: "#000000"
                }
            }

            Image{
                id: rock_2_p
                width: 70
                height: 70
                source: "../Images/Game_art/stone.png"
                opacity: 1

                Text{
                    id: rock_2
                    anchors.fill: parent
                    minimumPixelSize: 8
                    font.pixelSize: 128
                    fontSizeMode: Text.Fit
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: "#FFFFFF"
                    style: Text.Outline
                    styleColor: "#000000"
                }
            }

            Image{
                id: rock_3_p
                width: 70
                height: 70
                source: "../Images/Game_art/stone.png"

                Text{
                    id: rock_3
                    anchors.fill: parent
                    minimumPixelSize: 8
                    font.pixelSize: 128
                    fontSizeMode: Text.Fit
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: "#FFFFFF"
                    style: Text.Outline
                    styleColor: "#000000"
                }
            }
        }

    }

    function init_work()
    {
        player_next.playing = true
        flotte_next.x = frm_application.width + 10
        //sol_suivant.x = 0
        timer_move.start()
    }

    function change_values()
    {
        switch(wl_level_of_difficulty){
        case 5:
            // *** NIVEAU CP ***
            wl_calc_val_1 = Math.ceil(Math.random() * wl_current_max)

            while ( wl_calc_val_1 < 3 )
            {
                wl_calc_val_1 = Math.ceil(Math.random() * wl_current_max)
            }

            wl_alea = Math.ceil(Math.random() * 3)
            if ( wl_alea < 1 )
            {
                wl_alea = 1
            }

            switch(wl_alea){
                case 1:
                    rock_1_p.opacity = 0.7
                    rock_2_p.opacity = 1
                    rock_3_p.opacity = 1

                    rock_1.text = "?"
                    rock_2.text = wl_calc_val_1+1
                    rock_3.text = wl_calc_val_1+2

                    rock_1_answer.text = wl_calc_val_1
                    rock_2_answer.text = wl_calc_val_1 - 1
                    rock_3_answer.text = wl_calc_val_1 + 3

                    wl_good_answer = wl_calc_val_1
                    break;
                case 2:
                    rock_1_p.opacity = 1
                    rock_2_p.opacity = 0.7
                    rock_3_p.opacity = 1

                    rock_1.text = wl_calc_val_1
                    rock_2.text = "?"
                    rock_3.text = wl_calc_val_1+2

                    rock_1_answer.text = wl_calc_val_1 - 1
                    rock_2_answer.text = wl_calc_val_1 + 1
                    rock_3_answer.text = wl_calc_val_1 + 3

                    wl_good_answer = wl_calc_val_1 + 1
                    break;
                case 3:
                    rock_1_p.opacity = 1
                    rock_2_p.opacity = 1
                    rock_3_p.opacity = 0.7

                    rock_1.text = wl_calc_val_1
                    rock_2.text = wl_calc_val_1+1
                    rock_3.text = "?"

                    rock_1_answer.text = wl_calc_val_1 + 2
                    rock_2_answer.text = wl_calc_val_1 - 1
                    rock_3_answer.text = wl_calc_val_1 + 3

                    wl_good_answer = wl_calc_val_1 + 2
                    break;
            }

            break;
        case 30:
            // *** NIVEAU CE1 ***
            wl_calc_val_1 = Math.ceil(Math.random() * wl_current_max)

            while ( wl_calc_val_1 < 3 )
            {
                wl_calc_val_1 = Math.ceil(Math.random() * wl_current_max)
            }

            wl_alea_sorte = Math.ceil(Math.random() * 4)
            if ( wl_alea_sorte < 1 )
            {
                wl_alea_sorte = 1
            }
            wl_alea_sorte = wl_alea_sorte * 5
            if ( wl_calc_val_1 < wl_alea_sorte )
            {
                wl_calc_val_1 = wl_alea_sorte
            }

            wl_alea = Math.ceil(Math.random() * 3)
            if ( wl_alea < 1 )
            {
                wl_alea = 1
            }

            switch(wl_alea){
                case 1:
                    rock_1_p.opacity = 0.7
                    rock_2_p.opacity = 1
                    rock_3_p.opacity = 1

                    rock_1.text = "?"
                    rock_2.text = wl_calc_val_1+wl_alea_sorte
                    rock_3.text = wl_calc_val_1+(wl_alea_sorte*2)

                    rock_1_answer.text = wl_calc_val_1
                    rock_2_answer.text = wl_calc_val_1 - wl_alea_sorte
                    rock_3_answer.text = wl_calc_val_1 + wl_alea_sorte

                    wl_good_answer = wl_calc_val_1
                    break;
                case 2:
                    rock_1_p.opacity = 1
                    rock_2_p.opacity = 0.7
                    rock_3_p.opacity = 1

                    rock_1.text = wl_calc_val_1
                    rock_2.text = "?"
                    rock_3.text = wl_calc_val_1+(wl_alea_sorte*2)

                    rock_1_answer.text = wl_calc_val_1 - wl_alea_sorte
                    rock_2_answer.text = wl_calc_val_1 + wl_alea_sorte
                    rock_3_answer.text = wl_calc_val_1 + (wl_alea_sorte*2)

                    wl_good_answer = wl_calc_val_1 + wl_alea_sorte
                    break;
                case 3:
                    rock_1_p.opacity = 1
                    rock_2_p.opacity = 1
                    rock_3_p.opacity = 0.7

                    rock_1.text = wl_calc_val_1
                    rock_2.text = wl_calc_val_1+wl_alea_sorte
                    rock_3.text = "?"

                    rock_1_answer.text = wl_calc_val_1 + (wl_alea_sorte*2)
                    rock_2_answer.text = wl_calc_val_1 - wl_alea_sorte
                    rock_3_answer.text = wl_calc_val_1 + (wl_alea_sorte*3)

                    wl_good_answer = wl_calc_val_1 + (wl_alea_sorte*2)
                    break;
            }

            break;
        case 70:
            // *** NIVEAU CE2 ***
            wl_calc_val_1 = Math.ceil(Math.random() * wl_current_max)

            while ( wl_calc_val_1 < 3 )
            {
                wl_calc_val_1 = Math.ceil(Math.random() * wl_current_max)
            }

            wl_alea_sorte = Math.ceil(Math.random() * 4)
            if ( wl_alea_sorte < 1 )
            {
                wl_alea_sorte = 1
            }

            wl_alea_sorte_plus = Math.ceil(Math.random() * 10)
            if ( wl_alea_sorte < 5 )
            {
                wl_alea_sorte = 5
            }

            wl_alea_sorte = wl_alea_sorte * wl_alea_sorte_plus
            if ( wl_calc_val_1 < wl_alea_sorte )
            {
                wl_calc_val_1 = wl_alea_sorte
            }

            wl_alea = Math.ceil(Math.random() * 3)
            if ( wl_alea < 1 )
            {
                wl_alea = 1
            }

            switch(wl_alea){
                case 1:
                    rock_1_p.opacity = 0.7
                    rock_2_p.opacity = 1
                    rock_3_p.opacity = 1

                    rock_1.text = "?"
                    rock_2.text = wl_calc_val_1+wl_alea_sorte
                    rock_3.text = wl_calc_val_1+(wl_alea_sorte*2)

                    rock_1_answer.text = wl_calc_val_1
                    rock_2_answer.text = wl_calc_val_1 - wl_alea_sorte
                    rock_3_answer.text = wl_calc_val_1 + wl_alea_sorte

                    wl_good_answer = wl_calc_val_1
                    break;
                case 2:
                    rock_1_p.opacity = 1
                    rock_2_p.opacity = 0.7
                    rock_3_p.opacity = 1

                    rock_1.text = wl_calc_val_1
                    rock_2.text = "?"
                    rock_3.text = wl_calc_val_1+(wl_alea_sorte*2)

                    rock_1_answer.text = wl_calc_val_1 - wl_alea_sorte
                    rock_2_answer.text = wl_calc_val_1 + wl_alea_sorte
                    rock_3_answer.text = wl_calc_val_1 + (wl_alea_sorte*2)

                    wl_good_answer = wl_calc_val_1 + wl_alea_sorte
                    break;
                case 3:
                    rock_1_p.opacity = 1
                    rock_2_p.opacity = 1
                    rock_3_p.opacity = 0.7

                    rock_1.text = wl_calc_val_1
                    rock_2.text = wl_calc_val_1+wl_alea_sorte
                    rock_3.text = "?"

                    rock_1_answer.text = wl_calc_val_1 + (wl_alea_sorte*2)
                    rock_2_answer.text = wl_calc_val_1 - wl_alea_sorte
                    rock_3_answer.text = wl_calc_val_1 + (wl_alea_sorte*3)

                    wl_good_answer = wl_calc_val_1 + (wl_alea_sorte*2)
                    break;
            }
            break;
        }
        sol_suivant.x = -(frm_application.width - 112)
        flotte_next.x = 102
    }

    function fn_click_ans_next(wl_response)
    {
        if ( wl_good_answer == wl_response )
        {
            switch(wl_alea){
                case 1:
                    rock_1_p.opacity = 1
                    rock_1.text = wl_response

                    break;
                case 2:

                    rock_2_p.opacity = 1
                    rock_2.text = wl_response

                    break;
                case 3:
                    rock_3_p.opacity = 1
                    rock_3.text = wl_response

                    break;
            }
            sol_suivant.x = sol_suivant.x-(flotte_next.x + 220)
            flotte_next.x = -220
            timer_wait.start()
        }
        else
        {
            result_question.fn_show_hit("NOK")
        }
    }

    function fn_bravo()
    {
        flotte_next.x = frm_application.width + 10
        sol_suivant.x = 0
        result_question.fn_show_hit("OK")
        if ( wl_current_point > 10 )
        {
            wl_current_max = wl_current_max+(5*wl_current_level)
            wl_current_level++
            wl_current_point = 0

            if ( wl_current_point_cumul >= 50 )
            {
                player_next.playing = false
                fn_show_victory()
            }
        }
        wl_interval = 3100
        timer_move.start()
    }

    Timer {
        id: timer_move
        interval: wl_interval
        running: false
        repeat: false
        onTriggered: change_values()
    }

    Timer {
        id: timer_wait
        interval: 1000
        running: false
        repeat: false
        onTriggered: fn_bravo()
    }
}
