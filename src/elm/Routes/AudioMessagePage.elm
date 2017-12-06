module Routes.AudioMessagePage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


audioMessagePage : Model -> Html Msg
audioMessagePage model =
    let
        ( audioSrc, exists ) =
            case model.feedback.audio of
                Just src ->
                    ( src, True )

                Nothing ->
                    ( "", False )

        audioHtml =
            if exists then
                audio [ controls True, id "audio", src audioSrc ] []
            else
                div [] []
    in
    div [ class "w-60-ns center" ]
        [ h1 [ class "tc f1" ] [ text "Record your message" ]
        , button [ onClick StartAudio, disabled model.isRecordingAudio ] [ text "Start" ]
        , button [ onClick StopAudio, disabled <| not model.isRecordingAudio ] [ text "Stop" ]
        , a [ href "#stopVisitPage" ] [ button [] [ text "All done" ] ]
        , audioHtml
        ]
