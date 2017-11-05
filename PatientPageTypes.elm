<<<<<<< HEAD
module PatientPageTypes exposing (Doctype(..), Importance(..), Patient, Entry, Drug, Doctype, Appointment)
=======
module PatientPageTypes exposing (Doctype(..), Importance(..), Patient, emptyPatient, Entry, Drug, Doctype)
>>>>>>> 45d44262e776de415cdc7b80142884bf2423b9e7

import Dict exposing (Dict)

type Doctype
    = GP
    | Inpatient
    | Letter
    | Results

type Importance
    = High
    | Intermediate
    | Low

type alias Patient = {
  id : Int
  , name : String
  , dob : String
  , age : String
  , entries : List Entry
  , medications : List Drug
  , appointments : List Appointment
}

emptyPatient : Patient
emptyPatient = Patient 4000 "" "" "" [] [] []

type alias Appointment =
  { id: Int
  , time: String
  , date: String
  , speciality: String
  }

type alias Entry = {
  id : Int
  , title: String
  , text: String
  , docType: Doctype
  , importance: Importance
  , acute: Bool
  , result: Dict String Float
}

type alias Drug = {
  id: Int
  , name: String
  , dose: String
  , frequency: String
  , repeat: Bool
}
