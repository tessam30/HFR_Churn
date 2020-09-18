# Purpose: Process HFR, validate with DATIM info
# Author: Tim Essam, SI
# Date: 2020-09-18
# Notes:



# SETTING THINGS UP -------------------------------------------------------

  library(Wavelength)
  library(tidyverse)
  library(glitr)
  library(glamr)

  infolder <- "Data/2020.12/"
  infolder2 <- "Data/2020.12.raw_prepped/"
# READING IN --------------------------------------------------------------
  

# ASIA REGION -------------------------------------------------------------

# PNG -------- 15 min to get all set up
(files <- list.files(infolder, "PNG", full.names = TRUE))

purrr::walk(files, is_hfrtab)
purrr::walk(files, hfr_process_template)
purrr::walk(files,
            hfr_process_template,
            round_hfrdate = TRUE, 
            hfr_pd_sel = 12, 
            folderpath_output = outfolder, 
            datim_path = datim_path)



# LAOS ---------- 10 min to debug
# Notes: Raw submission file had wrong sheet name and a orgunituid pull down error

(files <- list.files(infolder2, "Laos", full.names = TRUE))

purrr::walk(files, is_hfrtab)
purrr::walk(files, hfr_process_template)
purrr::walk(files,
            hfr_process_template,
            round_hfrdate = TRUE, 
            hfr_pd_sel = 12, 
            folderpath_output = outfolder, 
            datim_path = datim_path)

hfr_orgunit_search(orgs, "Mahosot")


# Kazakhstan ---------------------------------------------------------
# Notes: all good; 2 min
(files <- list.files(infolder, "KZ", full.names = TRUE))

purrr::walk(files, is_hfrtab)
purrr::walk(files, hfr_process_template)
purrr::walk(files,
            hfr_process_template,
            round_hfrdate = TRUE, 
            hfr_pd_sel = 12, 
            folderpath_output = outfolder, 
            datim_path = datim_path)



# Indonesia  ---------------------------------------------------------
# Notes: Removed hidden tab, fixed (5 min to debug)
(files <- list.files(infolder2, "Ind", full.names = TRUE))

purrr::walk(files, is_hfrtab)
purrr::walk(files, hfr_process_template)
purrr::walk(files,
            hfr_process_template,
            round_hfrdate = TRUE, 
            hfr_pd_sel = 12, 
            folderpath_output = outfolder, 
            datim_path = datim_path)

# India  ---------------------------------------------------------
# Notes: had to unlock, fix dates 10 min to get PW
Sys.time()
(files <- list.files(infolder2, "IND", full.names = TRUE))

purrr::walk(files, is_hfrtab)
purrr::walk(files, hfr_process_template)
purrr::walk(files,
            hfr_process_template,
            round_hfrdate = TRUE, 
            hfr_pd_sel = 12, 
            folderpath_output = outfolder, 
            datim_path = datim_path)

# Thailand  ---------------------------------------------------------
# Notes: Errors - agecoarse had ALL instead of blank
Sys.time() #2020-09-18 10:17:51 CDT --> 2020-09-18 10:28:05 CDT --> 11 min
(files <- list.files(infolder2, "Tha", full.names = TRUE))

purrr::walk(files, is_hfrtab)
purrr::walk(files, hfr_process_template)
purrr::walk(files,
            hfr_process_template,
            round_hfrdate = TRUE, 
            hfr_pd_sel = 12, 
            folderpath_output = outfolder, 
            datim_path = datim_path)

# TK  ---------------------------------------------------------
# Notes: Errors - 
Sys.time() #10:57  - 2020-09-18 11:00:41 CDT --> 3 min
(files <- list.files(infolder, "TJ", full.names = TRUE))

purrr::walk(files, is_hfrtab)
purrr::walk(files, hfr_process_template)
purrr::walk(files,
            hfr_process_template,
            round_hfrdate = TRUE, 
            hfr_pd_sel = 12, 
            folderpath_output = outfolder, 
            datim_path = datim_path)

# Nepal  ---------------------------------------------------------
# Notes: Errors - none
Sys.time() #2 min 
(files <- list.files(infolder, "NEPAL", full.names = TRUE))

purrr::walk(files, is_hfrtab)
purrr::walk(files, hfr_process_template)
purrr::walk(files,
            hfr_process_template,
            round_hfrdate = TRUE, 
            hfr_pd_sel = 12, 
            folderpath_output = outfolder, 
            datim_path = datim_path)

# Kyrgyz  ---------------------------------------------------------
# Notes: Errors - none 
Sys.time() #"2020-09-18 11:03:22 CDT" - 1 min
(files <- list.files(infolder, "KG", full.names = TRUE))

purrr::walk(files, is_hfrtab)
purrr::walk(files, hfr_process_template)
purrr::walk(files,
            hfr_process_template,
            round_hfrdate = TRUE, 
            hfr_pd_sel = 12, 
            folderpath_output = outfolder, 
            datim_path = datim_path)


# Burma  ---------------------------------------------------------
# Notes: Errors - none
Sys.time() #11:05:09 - 1 Min
(files <- list.files(infolder, "BURMA", full.names = TRUE))

purrr::walk(files, is_hfrtab)
purrr::walk(files, hfr_process_template)
purrr::walk(files,
            hfr_process_template,
            round_hfrdate = TRUE, 
            hfr_pd_sel = 12, 
            folderpath_output = outfolder, 
            datim_path = datim_path)


# CENTRAL AMERICA ---------------------------------------------------------
# Notes: Errors - none
Sys.time() #11:07:14  --> 11:22:53
(files <- list.files(infolder, "Central.*PSI", full.names = TRUE))
(files <- list.files(infolder2, "Central.*Intra", full.names = TRUE))

purrr::walk(files, is_hfrtab)
purrr::walk(files, hfr_process_template)
purrr::walk(files,
            hfr_process_template,
            round_hfrdate = TRUE, 
            hfr_pd_sel = 12, 
            folderpath_output = outfolder, 
            datim_path = datim_path)




