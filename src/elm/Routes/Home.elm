module Routes.Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


home : Model -> Html Msg
home model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "hello Janet!" ]
        , a [ href "#startVisitPage" ] [ button [ class "f3" ] [ text "I'm in" ] ]
        ]
