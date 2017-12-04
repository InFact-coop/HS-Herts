module Routes.PreviousVisitsPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


previousVisitsPage : Model -> Html Msg
previousVisitsPage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "Previous visits" ]
        ]
