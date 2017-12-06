module Routes.StopVisitQuestionPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model exposing (..)


stopVisitQuestionPage : Model -> Html Msg
stopVisitQuestionPage model =
    div [ class "tc w-60-ns center main vh-100" ]
        [ p [ class "tc center f3" ] [ text "You are about to end your visit and notify the office that all is good. Is that ok?" ]
        , section [ class "center ma0 mt2 pt2" ]
            [ a [ href "#stopVisitPage", class "link" ] [ button [ class "ma3 center db f3" ] [ text "Yes, end my visit" ] ]
            , a [ href "#startVisitPage", class "link" ] [ text "No, take me back" ]
            ]
        ]
