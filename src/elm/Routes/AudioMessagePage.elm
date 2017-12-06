module Routes.AudioMessagePage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


audioMessagePage : Model -> Html Msg
audioMessagePage model =
    div [ class "w-60-ns center" ]
        [ p [ class "f3 w60 mh1 tc" ] [ text "Recording..." ]
        , button [ onClick StopVisit ] [ text "Done" ]
        ]
