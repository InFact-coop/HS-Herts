module Routes.TextMessagePage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


textMessagePage : Model -> Html Msg
textMessagePage model =
    div [ class "w-60-ns center" ]
        [ p [ class "f3 w60 mh1 tc" ] [ text "Notes" ]
        , div [] []
        , button [ onClick StopVisit ] [ text "Done" ]
        ]
