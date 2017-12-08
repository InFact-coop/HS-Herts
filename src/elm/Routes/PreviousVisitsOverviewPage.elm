module Routes.PreviousVisitsOverviewPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


previousVisitsOverviewPage : Model -> Html Msg
previousVisitsOverviewPage model =
    div [ class "center listOfVisits vh-100" ]
        [ div [ class "tc center" ]
            ([ p [ class "tc f4" ] [ text "Your visits" ] ] ++ visitContent model)
        ]


visitItem : Feedback -> Html Msg
visitItem feedback =
    button [ onClick <| SelectVisitItem feedback ]
        [ li [ class "db ma3" ]
            [ p [ class "" ] [ text "#6574532" ]
            , img [ src "./assets/mic.svg" ] []
            , img [ src "./assets/write.svg" ] []
            ]
        ]


visitContent : Model -> List (Html Msg)
visitContent model =
    List.map visitItem model.previousFeedback
