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
                div []
                    [ audio [ controls False, id "audio", src audioSrc ] []
                    , button [ id "play-button", class buttonClass1, onClick <| PlayAudio True ] [ text "Listen Back" ]
                    , button [ class buttonClass2, onClick ReRecord ] [ text "Record again" ]
                    , a [ href "#stopVisitPage" ] [ button [ class "dim b pointer prevVisits f4 ma2  bg--bp white" ] [ text "Submit" ] ]
                    ]
            else
                div []
                    [ button [ onClick StartAudio, class buttonClass1, disabled model.isRecordingAudio ] [ text "Begin recording" ]
                    , button [ onClick StopAudio, class buttonClass2, disabled <| not model.isRecordingAudio ] [ text "Finish recording" ]
                    ]
    in
    div [ class "w-60-ns center tc" ]
        [ div [ class "w-100 tl ma2 pa2" ] [ img [ class "", onClick GoBack, src "./assets/back_btn.svg" ] [] ]
        , img [ class "vh-25 mt4 mb3 pa3 br-100", classList [ ( "flash", model.isRecordingAudio ) ], src "./assets/mic.svg" ] []
        , audioHtml
        ]


buttonClass1 =
    "dim b pointer b-orange br1 w7 h8 f4 ma2 bg-white brand"


buttonClass2 =
    "dim b pointer b-pink br1 w7 h8 f4 ma2 bg-white brand-pink"
