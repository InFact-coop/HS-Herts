module View exposing (..)

-- My Elm Files

import Html exposing (..)
import Model exposing (..)
import Routes.AudioMessagePage exposing (..)
import Routes.Home exposing (..)
import Routes.Navbar exposing (..)
import Routes.NotFoundPage exposing (..)
import Routes.PreviousVisitsPage exposing (..)
import Routes.StartVisitPage exposing (..)
import Routes.StopVisitPage exposing (..)
import Routes.TextMessagePage exposing (..)


view : Model -> Html Msg
view model =
    let
        page =
            case model.route of
                HomeRoute ->
                    home model

                StartVisitRoute ->
                    startVisitPage model

                StopVisitRoute ->
                    stopVisitPage model

                AudioMessageRoute ->
                    audioMessagePage model

                TextMessageRoute ->
                    textMessagePage model

                PreviousVisitsRoute ->
                    previousVisitsPage model

                NotFoundRoute ->
                    notFoundPage model
    in
    div []
        [ navbar model
        , page
        ]
