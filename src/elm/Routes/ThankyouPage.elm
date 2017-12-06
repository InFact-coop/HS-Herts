module Routes.ThankyouPage exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model exposing (..)


thankyouPage : Model -> Html Msg
thankyouPage model =
    div [ class "w-60-ns center" ]
        [ p [ class "f3 w60 mh1 tc" ] [ text "Thank you for recording your visit, You're a star!" ]
        , a [ href "#home" ] [ button [] [ text "Home" ] ]
        , a [ href "#listOfVisitsPage" ] [ button [] [ text "See my visits" ] ]
        ]