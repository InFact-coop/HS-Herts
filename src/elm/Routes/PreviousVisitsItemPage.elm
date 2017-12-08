module Routes.PreviousVisitsItemPage exposing (..)

import Helpers.ConvertToMin exposing (..)
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
                    div
                        [ class "flex v-mid bb bw2 b--black-10" ]
                        [ img [ class "ma3", src "./assets/write.svg" ] []
                        , p [ class "gray" ] [ text fbText ]
                        ]

                Nothing ->
                    div [] []

        feedbackAudioHtml =
            case model.liveFeedback.audio of
                Just audioUrl ->
                    div [ class "flex v-mid bb bw2 b--black-10" ] [ img [ class "ma3 br-100", src "./assets/mic.svg" ] [], audio [ class "mv3 pa3", controls True, id "audio", src audioUrl ] [] ]

                Nothing ->
                    div [] []
    in
    div [ class "w-60-ns center brand tc" ]
        [ div [ class "w-100 tl pa2 flex bg-near-white bb b--black-10 v-mid" ] [ img [ class "pa3 h2", onClick GoBack, src "./assets/back_btn.svg" ] [], h2 [ class "pl3" ] [ text <| "Family ID: " ++ model.liveFeedback.familyId ] ]
        , div [ class "w-100 tl ph4 pv0 ma0 flex b justify-between bg-near-white bb f6" ] [ p [ class "ph2 pv0" ] [ text "01/03/2018" ], p [ class "ph2 pv0" ] [ text <| "Length of Visit: " ++ convertToMin model.liveFeedback.lengthOfVisit ] ]
        , feedbackAudioHtml
        , feebackTextHtml
        ]
