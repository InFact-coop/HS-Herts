module Routes.EndVisitPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


endVisitPage : Model -> Html Msg
endVisitPage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "end" ]
        , p [ class "f3 w60 mh1 tc" ] [ text "this is the end....." ]
        ]
