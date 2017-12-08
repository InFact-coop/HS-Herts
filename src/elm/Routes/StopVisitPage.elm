module Routes.StopVisitPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


stopVisitPage : Model -> Html Msg
stopVisitPage model =
    div [ class "brand w-60-ns center" ]
        [ p [ class "tc f3 pa4" ] [ text "Great! How did you visit go?" ]
        , section [ class "flex justify-center pa2" ]
            [ a [ href "#audioMessagePage", class "tc ma2 link dim dib f4" ]
                [ img [ src "./assets/mic.svg" ] [], p [ class "brand" ] [ text "record Audio" ] ]
            , a [ href "#textMessagePage", class "tc ma2 link dim dib f4" ]
                [ img [ src "./assets/write.svg" ] [], p [ class "brand" ] [ text "write message" ] ]
            ]
        , section [ class "pa4 flex justify-center" ]
            [ button [ class "tc ma0 center brand bg-white h3 w5 b br1 b-orange f4", onClick FinishFeedback ] [ text "Finish" ]
            ]
        ]
