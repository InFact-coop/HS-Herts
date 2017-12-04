module Routes.Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


home : Model -> Html Msg
home model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "center tc f1" ] [ text "hello Janet!" ]
        , a [ href "#previousVisitsPage" ] [ p [ class "f3" ] [ text "see previous Visits" ] ]
        , a [ href "#startVisitPage" ] [ button [ class "f3" ] [ text "I'm in" ] ]
        ]
