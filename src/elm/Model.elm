module Model exposing (..)

import Navigation


-- Model


initModel : Model
initModel =
    { route = HomeRoute
    , timerLength = 0
    , previousFeedback = listOfFeedbacks
    , feedback = Feedback Nothing Nothing 0
    , isMenuOpen = False
    , timerRunning = False
    , isRecordingAudio = False
    }


listOfFeedbacks : List Feedback
listOfFeedbacks =
    [ Feedback (Just "Good visit") Nothing 3
    , Feedback (Just "The dad was not there") Nothing 3
    , Feedback (Just "They offered me a cup of tea") Nothing 5
    ]


type Route
    = HomeRoute
    | StartVisitRoute
    | StopVisitQuestionRoute
    | StopVisitRoute
    | AudioMessageRoute
    | TextMessageRoute
    | PreviousVisitsRoute
    | ThankyouRoute
    | NotFoundRoute


type alias Feedback =
    { text : Maybe String
    , audio : Maybe String
    , lengthOfVisit : Int
    }


type alias Model =
    { route : Route
    , timerLength : Int
    , previousFeedback : List Feedback
    , feedback : Feedback
    , isMenuOpen : Bool
    , timerRunning : Bool
    , isRecordingAudio : Bool
    }



-- Update


type Msg
    = UrlChange Navigation.Location
    | ToggleMenu
    | IncrementTimer
    | StartVisit
    | StopVisit
    | RecieveAudio String
    | StartAudio
    | StopAudio
