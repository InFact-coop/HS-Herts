module Routes.ThankyouPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model exposing (..)


thankyouPage : Model -> Html Msg
thankyouPage model =
    div [ class "white ma0 bg-brand-pink tc center vh-100 pa3" ]
        [ div [ class "tc center ma0 pt5 " ]
            [ p [ class "w60 mh1 tc ma0 pt2 f4" ] [ text "Thank you for recording your visit, You're a star!" ]
            , img [ src "./assets/heart.svg", class "pt5 center" ] []
            , p [ class "w60 mh1 tc ma3 pt6 f5" ] [ text "Would you like Home Start to contact you about this visit?" ]
            , div [ class "flex justify-center" ]
                [ a [ href "#home", class "ma2" ] [ button [ class "dib w4 h3 white bg-brand-pink br1 center db f6" ] [ text "Yes, please" ] ]
                , a [ href "#home", class "ma2" ] [ button [ class "dib w4 h3 white bg-brand-pink br1  center db f6" ] [ text "No, thanks" ] ]
                ]
            ]
        ]
