module Routes.StartVisitPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


startVisitPage : Model -> Html Msg
startVisitPage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "Timer" ]
        , p [ class "f3 w60 mh1 tc" ] [ text <| convertToMin model.timerLength ]
        , button [ onClick StartTimer ] [ text "Start" ]
        , button [ onClick StopTimer ] [ text "Stop" ]
        ]


convertToMin : Int -> String
convertToMin number =
    let
        minutes =
            number // 60

        seconds =
            number % 60
    in
    toString minutes ++ " minutes " ++ toString seconds ++ " seconds"
