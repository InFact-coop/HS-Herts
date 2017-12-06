module Routes.TextMessagePage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


textMessagePage : Model -> Html Msg
textMessagePage model =
    let
        textValue =
            case model.feedback.text of
                Just text ->
                    text

                Nothing ->
                    ""
    in
    div [ class "w-60-ns center" ]
        [ p [ class "f3 w60 mh1 tc" ] [ text "Notes" ]
        , div [] [ textarea [ class "h-100 w-100 input-reset", onInput UpdateTextFeedback, value textValue, placeholder "Enter feedback here..." ] [] ]
        , a [ href "#stopVisitPage" ] [ button [] [ text "Done" ] ]
        ]
