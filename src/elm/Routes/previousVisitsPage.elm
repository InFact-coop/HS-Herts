module Routes.PreviousVisitsPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


previousVisitsPage : Model -> Html Msg
previousVisitsPage model =
    div [ class "w-60-ns center" ]
        ([ h1 [ class "tc f1" ] [ text "Your visits" ] ] ++ visitContent model)


visitItem : FeedBack -> Html Msg
visitItem feedback =
    let
        visitDescription =
            case feedback.text of
                Just string ->
                    string

                Nothing ->
                    ""
    in
        li [ class "dib ma3" ]
            [ p [] [ text visitDescription ]
            , button [] []
            , button [] []
            ]


visitContent : Model -> List (Html Msg)
visitContent model =
    List.map visitItem model.previousFeedback
