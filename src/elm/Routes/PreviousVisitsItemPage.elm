module Routes.PreviousVisitsItemPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


previousVisitsItemPage : Model -> Html Msg
previousVisitsItemPage model =
    let
        feebackTextHtml =
            case model.liveFeedback.text of
                Just fbText ->
                    div []
                        [ h3 [] [ text "Notes" ]
                        , p [] [ text fbText ]
                        ]

                Nothing ->
                    div [] []

        feedbackAudioHtml =
            case model.liveFeedback.audio of
                Just audioUrl ->
                    div [] [ audio [ controls True, id "audio", src audioUrl ] [] ]

                Nothing ->
                    div [] []
    in
    div [ class "w-60-ns center" ]
        [ button [] []
        , h1 [] [ text model.liveFeedback.familyId ]
        , feedbackAudioHtml
        , feebackTextHtml
        ]
