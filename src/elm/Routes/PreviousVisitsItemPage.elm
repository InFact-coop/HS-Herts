module Routes.PreviousVisitsItemPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


previousVisitsItemPage : Model -> Html Msg
previousVisitsItemPage model =
    let
        feedbackTest =
            case model.liveFeedback.text of
                Just string ->
                    string

                Nothing ->
                    ""

        feedbackAudio =
            case model.liveFeedback.audio of
                Just string ->
                    string

                Nothing ->
                    ""
    in
        div [ class "w-60-ns center" ]
            [ button [] []
            , h1 [] [ text model.liveFeedback.familyId ]
            , h2 [] [ text "YESTERDAY" ]
            , audio [ controls True, id "audio", src feedbackAudio ] []
            , h3 [] [ text "Notes" ]
            , p [] [ text feedbackTest ]
            ]
