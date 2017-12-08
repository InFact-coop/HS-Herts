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
    div [ class "w-60-ns center tc" ]
        [ div [ class "w-100 tl ma2 pa2" ] [ img [ class "h3", onClick GoBack, src "./assets/back_btn.svg" ] [] ]
        , img [ class "vh-15 pa3 br-100", src "./assets/write.svg" ] []
        , div [ class "pa3" ] [ textarea [ class "vh-25 w-100 input-reset pa3 f4 br3 b-orange bg--black-40", onInput UpdateTextFeedback, value textValue, placeholder "Enter feedback here..." ] [] ]
        , a [ href "#stopVisitPage" ] [ button [ class "dim b pointer w7 h8 br1 f3 ma2  bg--bp white" ] [ text "Submit" ] ]
        ]
