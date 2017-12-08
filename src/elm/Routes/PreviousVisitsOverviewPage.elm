module Routes.PreviousVisitsOverviewPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


previousVisitsOverviewPage : Model -> Html Msg
previousVisitsOverviewPage model =
    div [ class "center ma0 pa0" ]
        [ div [ class "h4 bb b--black-10 listOfVisits pt4 v-mid bw2" ]
            [ p [ class "ma0 tc f3 b brand" ] [ text "Your visits" ]
            ]
        , div
            []
            (visitContent
                model
            )
        ]


visitItem : Feedback -> Html Msg
visitItem feedback =
    button [ class "w-100", onClick <| SelectVisitItem feedback ]
        [ div [ class "" ]
            [ li [ class "db flex bb bw2 b--black-10" ]
                [ p [ class "" ] [ text "Today" ]
                , p [ class "center f4 pt2" ] [ text feedback.familyId ]
                , img [ src "./assets/mic.svg", class "w2" ] []
                , img [ src "./assets/write.svg", class "w2" ] []
                ]
            ]
        ]


visitContent : Model -> List (Html Msg)
visitContent model =
    List.map visitItem model.previousFeedback
