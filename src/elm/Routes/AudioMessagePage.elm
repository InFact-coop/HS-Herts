module Routes.AudioMessagePage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


audioMessagePage : Model -> Html Msg
audioMessagePage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "Record your message" ]
        , p [ class "f3 w60 mh1 tc" ] [ text "Welcome to this SPA elm boiler plate. Tachyons is included. Go nuts." ]
        , a [ href "#previousVisitsPage", class "pa2 link dim" ] [ text "Done" ]
        , button [ onClick StartAudio ] [ text "PRESS ME" ]
        ]
