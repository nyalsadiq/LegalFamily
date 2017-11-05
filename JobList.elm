-- AUTOGENERATED FILE JobList.elm - DO NOT EDIT
-- Update by running nodejs fakedata.js *in* tools

module JobList exposing (..)

import Dict as D exposing (..)
import Job exposing (..)

jobList : Dict Int Job
jobList = D.fromList [
  (0 , Job 0 25 "Referral" False )
  ,
  (1 , Job 1 26 "Cannula" False )
  ,
  (2 , Job 2 21 "CT scan" False )
  ,
  (3 , Job 3 3 "Biopsy" False )
  ,
  (4 , Job 4 7 "CT scan" False )
  ,
  (5 , Job 5 7 "MRI scan" False )
  ,
  (6 , Job 6 11 "Cannula" True )
  ,
  (7 , Job 7 4 "Ultrasound" False )
  ,
  (8 , Job 8 13 "Cannula" True )
  ,
  (9 , Job 9 20 "Cannula" False )
  ,
  (10 , Job 10 25 "Biopsy" False )
  ,
  (11 , Job 11 19 "Biopsy" False )
  ,
  (12 , Job 12 11 "MRI scan" True )
  ,
  (13 , Job 13 26 "Biopsy" True )
  ,
  (14 , Job 14 6 "CT scan" False )
  ,
  (15 , Job 15 18 "Biopsy" True )
  ,
  (16 , Job 16 23 "MRI scan" False )
  ,
  (17 , Job 17 15 "Biopsy" False )
  ,
  (18 , Job 18 13 "Referral" False )
  ,
  (19 , Job 19 21 "Blood test" False )
  ,
  (20 , Job 20 27 "Blood test" True )
  ,
  (21 , Job 21 26 "CT scan" False )
  ,
  (22 , Job 22 8 "Referral" True )
  ,
  (23 , Job 23 19 "Ultrasound" False )
  ,
  (24 , Job 24 28 "Ultrasound" False )
  ]
