module Update exposing (..)

import Model exposing (..)
import Navigation exposing (..)


--UPDATE


getRoute : String -> Route
getRoute hash =
    case hash of
        "" ->
            HomeRoute

        "#home" ->
            HomeRoute

        "#startVisitPage" ->
            StartVisitRoute

        "#stopVisitQuestionPage" ->
            StopVisitQuestionRoute

        "#stopVisitPage" ->
            StopVisitRoute

        "#audioMessagePage" ->
            AudioMessageRoute

        "#textMessagePage" ->
            TextMessageRoute

        "#previousVisitsPage" ->
            PreviousVisitsRoute

        "#thankyouPage" ->
            ThankyouRoute

        "listOfVisitsPage" ->
            ListOfVisitsRoute

        _ ->
            NotFoundRoute


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UrlChange location ->
            ( { model | route = getRoute location.hash }, Cmd.none )

        ToggleMenu ->
            ( { model | isMenuOpen = not model.isMenuOpen }, Cmd.none )

        IncrementTimer ->
            ( { model | timerLength = model.timerLength + 1 }, Cmd.none )

        StartVisit ->
            let
                command =
                    Navigation.newUrl "#startVisitPage"
            in
            ( { model | timerRunning = True, route = StartVisitRoute }, command )

        StopVisit ->
            let
                command =
                    Navigation.newUrl "#stopVisitPage"
            in
            ( { model
                | timerRunning = False
                , route = StopVisitRoute
              }
            , command
            )
