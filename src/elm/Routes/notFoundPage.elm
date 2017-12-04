module Routes.NotFoundPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


notFoundPage : Model -> Html Msg
notFoundPage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "not Found" ]
        , p [ class "f3 w60 mh1 tc" ] [ text "sorry wrong address!" ]
        ]
