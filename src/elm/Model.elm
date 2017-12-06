module Model exposing (..)

import Navigation


-- Model


initModel : Model
initModel =
    { route = HomeRoute
    , timerLength = 0
    , previousFeedback = []
    , feedback = Feedback Nothing Nothing 0
    , isMenuOpen = False
    , timerRunning = False
    , isRecordingAudio = False
    }


type Route
    = HomeRoute
    | StartVisitRoute
    | StopVisitQuestionRoute
    | StopVisitRoute
    | AudioMessageRoute
    | TextMessageRoute
    | PreviousVisitsRoute
    | ThankyouRoute
    | ListOfVisitsRoute
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
    | UpdateTextFeedback String
    | FinishFeedback
