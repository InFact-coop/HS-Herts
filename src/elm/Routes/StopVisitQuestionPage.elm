module Routes.StopVisitQuestionPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


stopVisitQuestionPage : Model -> Html Msg
stopVisitQuestionPage model =
    div [ class "white pa2 ma0 bg-brand-pink tc center vh-100" ]
        [ div [ class "tc center f4 ma0 pt5" ]
            [ p [ class "ma1 center tc b-ns" ] [ text "You are about to end your visit and notify the office that all is good.", p [ class "center tc b-ns" ] [ text "Is that OK?" ] ]
            ]
        , section [ class "ma0 mt2 pt10" ]
            [ button [ class "w7 h7 white bg-brand-pink br1 endVisit ma3 center db f4", onClick StopVisit ] [ text "Yes, end my visit" ]
            , a [ href "#startVisitPage", class "pt2 white f5" ] [ text "No, take me back" ]
            ]
        ]
