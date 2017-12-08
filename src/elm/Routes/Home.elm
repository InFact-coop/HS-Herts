module Routes.Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


home : Model -> Html Msg
home model =
    div [ class "tc center main vh-100 ma0" ]
        [ img [ class "center pt5 logo h5", src "./assets/logo_whole.png" ] []
        , p [ class "tc center brand f4" ] [ text "supporting our volunteers" ]
        , section [ class "center ma0 mt2 pt5" ]
            [ button [ class "br1 w7 h8 ma3 brand bg-white center db f3 b-orange", onClick StartVisit ] [ text "Start my visit" ]
            , a [ href "#previousVisitsOverviewPage", class "link" ] [ button [ class "br1 w7 h8 ma3 brand-pink bg-white center db f3 br-pink " ] [ text "Go to visits" ] ]
            ]
        ]
