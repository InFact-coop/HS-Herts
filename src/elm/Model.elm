module Model exposing (..)

import Navigation


-- Model


initModel : Model
initModel =
    { route = ThankyouRoute
    , timerLength = 0
    , previousFeedback = listOfFeedbacks
    , feedback = Feedback "#3456787" 4 Nothing Nothing 0
    , isMenuOpen = False
    , timerRunning = False
    , isRecordingAudio = False
    , feedbackCount = 4
    , liveFeedback = Feedback "" 0 Nothing Nothing 0
    }


listOfFeedbacks : List Feedback
listOfFeedbacks =
    [ Feedback "#5467839" 1 (Just "Good visit") Nothing 3
    , Feedback "#9767839" 2 (Just "The dad was not there") Nothing 3
    , Feedback "#897839" 3 (Just "They offered me a cup of tea") Nothing 5
    , Feedback "#9768599" 7 (Just "I had a very good time") Nothing 3
    , Feedback "#8977839" 8 (Just "The grandmother was here") Nothing 5
    , Feedback "#897839" 9 (Just "I didn't have a nice time") Nothing 5
    ]


type Route
    = HomeRoute
    | StartVisitRoute
    | StopVisitQuestionRoute
    | StopVisitRoute
    | AudioMessageRoute
    | TextMessageRoute
    | PreviousVisitsOverviewRoute
    | PreviousVisitsItemRoute
    | ThankyouRoute
    | NotFoundRoute


type alias Feedback =
    { familyId : String
    , feedbackId : Int
    , text : Maybe String
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
    , feedbackCount : Int
    , liveFeedback : Feedback
    }



-- Update


type Msg
    = UrlChange Navigation.Location
    | ToggleMenu
    | IncrementTimer
    | StartVisit
    | StopVisit
    | CancelVisit
    | RecieveAudio String
    | StartAudio
    | StopAudio
    | SelectVisitItem Feedback
    | UpdateTextFeedback String
    | FinishFeedback
    | PlayAudio Bool
    | GoBack
    | ReRecord
