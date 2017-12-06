module Routes.StopVisitPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


stopVisitPage : Model -> Html Msg
stopVisitPage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "How did you visit go?" ]
        , a [ href "#audioMessagePage", class "pa2 link dim" ] [ text "record Audio" ]
        , a [ href "#textMessagePage", class "pa2 link dim" ] [ text "write message" ]
        ]