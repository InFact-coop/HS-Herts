module Routes.AudioMessagePage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


audioMessagePage : Model -> Html Msg
audioMessagePage model =
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "Record your message" ]
        , button [ onClick StartAudio ] [ text "Start" ]
        , button [ onClick StopAudio ] [ text "Stop" ]
        , a [ href "#stopVisitPage" ] [ button [] [ text "All done" ] ]
        , audio [ controls True, id "audio", src model.feedback.audio ] []
        ]
