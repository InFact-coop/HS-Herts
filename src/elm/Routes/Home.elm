module Routes.Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model exposing (..)


home : Model -> Html Msg
home model =
    div [ class "tc w-60-ns center main" ]
        [ img [ class "center pt5 logo h5 ma0", src "./assets/logo_whole.png" ] []
        , p [ class "tc center brand f3" ] [ text "supporting our volunteers" ]
        , a [ href "#startVisitPage", class "link" ] [ button [ class "ma0 brand bg-white center db ma4 f3 startVisit" ] [ text "Start my visit" ] ]
        , a [ href "#previousVisitsPage", class "link" ] [ button [ class "brand-pink bg-white center db ma4 f3 prevVisits" ] [ text "Go to visits" ] ]
        ]
