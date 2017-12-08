module Routes.StartVisitPage exposing (..)

import Helpers.ConvertToMin exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


startVisitPage : Model -> Html Msg
startVisitPage model =
    div [ class "w-60-ns center" ]
        [ img [ class "center pt5 h5 ma0", src "./assets/logo.png" ] []
        , p [ class "brand f5 w60 mh1 tc pt4" ] [ text <| convertToMin model.timerLength ]
        , section [ class "center ma0 mt2 pt2" ]
            [ a [ href "#stopVisitQuestionPage", class "link" ] [ button [ class "br1 h3 w7 ma3 brand bg-white center db f4 b-orange" ] [ text "Finish my visit" ] ]
            , section [ class "center ma0 mt2" ] [ button [ class "h3 w7 br1 ma3 brand-pink bg-white center db f4 br-pink ", onClick CancelVisit ] [ text "Cancel the visit" ] ]
            ]
        ]
