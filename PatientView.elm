module PatientView exposing (patientView)

import Models exposing (Model)
import Html exposing (Html, text, h1, div, span, a)
import Html.Attributes exposing (style)
import Material
import Material.Scheme as Scheme
import Material.Button as Button
import Material.Card as Card
import Material.Color as Color
import Material.Chip as Chip
import Material.Options as Options
import Material.Options exposing (css, cs, onClick, attribute)  -- NB Avoiding inline css; use cs to select community.css classes
import Material.List as Lists
import Material.Table as Table
import Material.Grid exposing (offset, grid, size, cell, Device (..) )
import Dict as D exposing (get)
import PatientPageTypes exposing (Patient, Entry, Drug)
import Routing exposing (drugPath)
import Msgs exposing (Msg(..))

emptyPatient : Patient
emptyPatient = Patient 4000 "" "" "" [] []

emptyEntry : Entry
emptyEntry = Entry 0 "" "" PatientPageTypes.GP PatientPageTypes.Low False

white : Options.Property c m
white =
  Color.text Color.white


patientView : Model -> Int -> Html Msg
patientView model id =
  let patient = (Maybe.withDefault emptyPatient) (D.get id model.patients)
      entries = patient.entries
      viewEntries = List.map entryView entries
      path = drugPath id
  in div [] [ div [] [ text patient.name, text "\n", div [style [("width", "100%")]] viewEntries, 
    Button.render Mdl [0] model.mdl [Button.link path] [text "Drugs"]]]

entryView : Entry -> Html Msg
entryView entry =
  grid [Options.css "height" "150px", Options.css "padding-bottom" "1px"] [ cell [offset All 2, size All 10]
          [text "13:34",Card.view [Card.expand, Options.css "height" "inherit", Options.css "width" "inherit", Color.background (Color.color Color.Blue Color.S500)]
            [Card.title [] [ Card.head [ white ] [ text entry.title ] ] , Card.text [] [ text entry.text ]]]]

