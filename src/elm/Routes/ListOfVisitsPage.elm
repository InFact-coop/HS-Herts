module Routes.ListOfVisitsPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


listOfVisitsPage : Model -> Html Msg
listOfVisitsPage model =
    div [ class "tc w-60-ns center main vh-100" ]
        [ p [ class "tc center brand f3" ] [ text "Your Visits" ]
        ]
