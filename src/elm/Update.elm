module Update exposing (..)

import Model exposing (..)
import Navigation exposing (..)
import Subscriptions exposing (..)


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

                feedback =
                    model.feedback

                newFeedback =
                    { feedback | lengthOfVisit = model.timerLength }
            in
            ( { model
                | timerRunning = False
                , feedback = newFeedback
                , route = StopVisitRoute
              }
            , command
            )

        RecieveAudio audioUrl ->
            let
                feedback =
                    model.feedback

                newFeedback =
                    { feedback | audio = Just audioUrl }
            in
            ( { model | feedback = newFeedback }, Cmd.none )

        StartAudio ->
            ( { model | isRecordingAudio = True }, recordStart () )

        StopAudio ->
            ( { model | isRecordingAudio = False }, recordStop () )

        UpdateTextFeedback textFeedback ->
            let
                feedback =
                    model.feedback

                newFeedback =
                    { feedback | text = Just textFeedback }
            in
            ( { model | feedback = newFeedback }, Cmd.none )

        FinishFeedback ->
            let
                command =
                    Navigation.newUrl "#thankyouPage"

                resetFb =
                    Feedback Nothing Nothing 0

                updatedFeedbackList =
                    [ model.feedback ] ++ model.previousFeedback
            in
            ( { model
                | feedback = resetFb
                , route = ThankyouRoute
                , previousFeedback = updatedFeedbackList
                , timerLength = 0
              }
            , command
            )
