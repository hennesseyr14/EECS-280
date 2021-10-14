/**************************************************************************
 |                                                                         
 |                    STATA SETUP FILE FOR ICPSR 30103
 |        HOW COUPLES MEET AND STAY TOGETHER (HCMST), WAVE 1 2009,
 |          WAVE 2 2010, WAVE 3 2011, WAVE 4 2013, WAVE 5 2015,
 |                             UNITED STATES
 |                    (DATASET 0001: PUBLIC USE DATA)
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 30103-0001-statasetup.do)
 |
 **************************************************************************/


set more off  /* This prevents the Stata output viewer from pausing the
                 process */

/****************************************************

Section 1: File Specifications
   This section assigns local macros to the necessary files.
   Please edit:
        "data-filename" ==> The name of data file downloaded from ICPSR
        "dictionary-filename" ==> The name of the dictionary file downloaded.
        "stata-datafile" ==> The name you wish to call your Stata data file.

   Note:  We assume that the raw data, dictionary, and setup (this do file) all
          reside in the same directory (or folder).  If that is not the case
          you will need to include paths as well as filenames in the macros.

********************************************************/

local raw_data "data-filename"
local dict "dictionary-filename"
local outfile "stata-datafile"

/********************************************************

Section 2: Infile Command

This section reads the raw data into Stata format.  If Section 1 was defined
properly, there should be no reason to modify this section.  These macros
should inflate automatically.

**********************************************************/

infile using `dict', using (`raw_data') clear


/********************************************************************

 Section 3: Reformat

  This section applies optimized formats to variables.

*********************************************************************/

format CASEID_NEW %7.0f
format WEIGHT1 %6.0f
format WEIGHT2 %6.0f
format PPAGE %2.0f
format PPAGECAT %2.0f
format PPAGECT4 %2.0f
format PPEDUC %2.0f
format PPEDUCAT %2.0f
format PPETHM %2.0f
format PPGENDER %2.0f
format PPHHHEAD %2.0f
format PPHOUSEHOLDSIZE %2.0f
format PPHOUSE %2.0f
format PPINCIMP %2.0f
format HHINC %6.0f
format PPMARIT %2.0f
format PPMSACAT %2.0f
format PPREG4 %2.0f
format PPREG9 %1.0f
format PPRENT %2.0f
format PPT01 %2.0f
format PPT1317 %2.0f
format PPT18OV %2.0f
format PPT25 %2.0f
format PPT612 %2.0f
format CHILDREN_IN_HH %1.0f
format PPWORK %2.0f
format PPNET %1.0f
format PPQ14ARACE %2.0f
format PPHISPAN %2.0f
format PPRACE_WHITE %2.0f
format PPRACE_BLACK %2.0f
format PPRACE_NATIVEAMERICAN %2.0f
format PPRACE_ASIANINDIAN %2.0f
format PPRACE_CHINESE %2.0f
format PPRACE_FILIPINO %2.0f
format PPRACE_JAPANESE %2.0f
format PPRACE_KOREAN %2.0f
format PPRACE_VIETNAMESE %2.0f
format PPRACE_OTHERASIAN %2.0f
format PPRACE_HAWAIIAN %2.0f
format PPRACE_GUAMANIAN %2.0f
format PPRACE_SAMOAN %2.0f
format PPRACE_OTHERPACIFICISLANDER %2.0f
format PPRACE_SOMEOTHERRACE %2.0f
format PAPGLB_FRIEND %2.0f
format PPPARTYID3 %2.0f
format PAPEVANGELICAL %2.0f
format PAPRELIGION %2.0f
format PPPPCMDATE_YRMO %6.0f
format PPPADATE_YRMO %6.0f
format PPHHCOMP11_MEMBER2_AGE %2.0f
format PPHHCOMP11_MEMBER3_AGE %2.0f
format PPHHCOMP11_MEMBER4_AGE %2.0f
format PPHHCOMP11_MEMBER5_AGE %3.0f
format PPHHCOMP11_MEMBER6_AGE %2.0f
format PPHHCOMP11_MEMBER7_AGE %2.0f
format PPHHCOMP11_MEMBER8_AGE %2.0f
format PPHHCOMP11_MEMBER9_AGE %2.0f
format PPHHCOMP11_MEMBER10_AGE %2.0f
format PPHHCOMP11_MEMBER11_AGE %2.0f
format PPHHCOMP11_MEMBER12_AGE %1.0f
format PPHHCOMP11_MEMBER13_AGE %1.0f
format PPHHCOMP11_MEMBER14_AGE %1.0f
format PPHHCOMP11_MEMBER15_AGE %1.0f
format PPHHCOMP11_MEMBER2_GENDER %2.0f
format PPHHCOMP11_MEMBER3_GENDER %2.0f
format PPHHCOMP11_MEMBER4_GENDER %2.0f
format PPHHCOMP11_MEMBER5_GENDER %2.0f
format PPHHCOMP11_MEMBER6_GENDER %2.0f
format PPHHCOMP11_MEMBER7_GENDER %2.0f
format PPHHCOMP11_MEMBER8_GENDER %2.0f
format PPHHCOMP11_MEMBER9_GENDER %2.0f
format PPHHCOMP11_MEMBER10_GENDER %2.0f
format PPHHCOMP11_MEMBER11_GENDER %2.0f
format PPHHCOMP11_MEMBER12_GENDER %2.0f
format PPHHCOMP11_MEMBER13_GENDER %2.0f
format PPHHCOMP11_MEMBER14_GENDER %2.0f
format PPHHCOMP11_MEMBER15_GENDER %2.0f
format PPHHCOMP11_MEMBER2_RELATIONSHIP %2.0f
format PPHHCOMP11_MEMBER3_RELATIONSHIP %2.0f
format PPHHCOMP11_MEMBER4_RELATIONSHIP %2.0f
format PPHHCOMP11_MEMBER5_RELATIONSHIP %2.0f
format PPHHCOMP11_MEMBER6_RELATIONSHIP %2.0f
format PPHHCOMP11_MEMBER7_RELATIONSHIP %2.0f
format PPHHCOMP11_MEMBER8_RELATIONSHIP %2.0f
format PPHHCOMP11_MEMBER9_RELATIONSHIP %2.0f
format PPHHCOMP11_MEMBER10_RELATIONSHIP %2.0f
format PPHHCOMP11_MEMBER11_RELATIONSHIP %2.0f
format PPHHCOMP11_MEMBER12_RELATIONSHIP %2.0f
format PPHHCOMP11_MEMBER13_RELATIONSHIP %2.0f
format PPHHCOMP11_MEMBER14_RELATIONSHIP %2.0f
format PPHHCOMP11_MEMBER15_RELATIONSHIP %2.0f
format IRB_CONSENT %2.0f
format WEIGHT3 %6.0f
format WEIGHT4 %6.0f
format WEIGHT5 %6.0f
format WEIGHT6 %6.0f
format WEIGHT7 %6.0f
format WEIGHT_COUPLES_CORESIDENT %15.8f
format HCMST_MAIN_INTERVIEW_YRMO %6.0f
format DURATION %5.0f
format QFLAG %1.0f
format GLBSTATUS %1.0f
format PAPGLB_STATUS %2.0f
format RECSOURCE %1.0f
format S1 %2.0f
format S1A %2.0f
format S2 %2.0f
format Q3_CODES %2.0f
format Q4 %2.0f
format Q5 %2.0f
format Q6A %2.0f
format Q6B %2.0f
format Q7A %2.0f
format Q7B %2.0f
format Q8A %2.0f
format Q8B %2.0f
format Q9 %2.0f
format Q10 %2.0f
format Q11 %2.0f
format Q12 %2.0f
format Q13A %2.0f
format Q13B %2.0f
format Q14 %2.0f
format Q15A1_COMPRESSED %2.0f
format Q16 %2.0f
format Q17A %2.0f
format Q17B %2.0f
format Q17C %2.0f
format Q17D %2.0f
format GENDER_ATTRACTION %1.0f
format Q18A_1 %2.0f
format Q18A_2 %2.0f
format Q18A_3 %2.0f
format Q18A_REFUSED %1.0f
format Q18B_CODES %2.0f
format Q18C_CODES %2.0f
format Q19 %2.0f
format Q20 %2.0f
format Q21A %2.0f
format Q21A_REFUSAL %1.0f
format Q21B %2.0f
format Q21B_REFUSAL %1.0f
format Q21C %2.0f
format Q21C_REFUSAL %1.0f
format Q21D %2.0f
format Q21D_REFUSAL %1.0f
format Q21E %2.0f
format Q21E_REFUSAL %1.0f
format Q22 %2.0f
format Q23 %2.0f
format Q24_CODES %2.0f
format Q25 %2.0f
format Q26 %2.0f
format Q27 %2.0f
format Q28 %2.0f
format Q29 %2.0f
format Q30 %2.0f
format Q31_1 %2.0f
format Q31_2 %2.0f
format Q31_3 %2.0f
format Q31_4 %2.0f
format Q31_5 %2.0f
format Q31_6 %2.0f
format Q31_7 %2.0f
format Q31_8 %2.0f
format Q31_9 %2.0f
format Q31_OTHER_TEXT_ENTERED %1.0f
format Q32 %2.0f
format Q33_1 %2.0f
format Q33_2 %2.0f
format Q33_3 %2.0f
format Q33_4 %2.0f
format Q33_5 %2.0f
format Q33_6 %2.0f
format Q33_7 %2.0f
format Q33_OTHER_TEXT_ENTERED %1.0f
format Q34 %2.0f
format Q35_CODES %2.0f
format Q35_TEXT_ENTERED %1.0f
format Q24_MET_ONLINE %1.0f
format SUMMARY_Q24_TOTAL %1.0f
format Q24_R_COWORK %1.0f
format Q24_R_FRIEND %1.0f
format Q24_R_FAMILY %1.0f
format Q24_R_SIG_OTHER %1.0f
format Q24_R_NEIGHBOR %1.0f
format Q24_P_COWORK %1.0f
format Q24_P_FRIEND %1.0f
format Q24_P_FAMILY %1.0f
format Q24_P_SIG_OTHER %1.0f
format Q24_P_NEIGHBOR %1.0f
format Q24_BTWN_I_COWORK %1.0f
format Q24_BTWN_I_FRIEND %1.0f
format Q24_BTWN_I_FAMILY %1.0f
format Q24_BTWN_I_SIG_OTHER %1.0f
format Q24_BTWN_I_NEIGHBOR %1.0f
format Q24_SCHOOL %1.0f
format Q24_COLLEGE %1.0f
format Q24_MILITARY %1.0f
format Q24_CHURCH %1.0f
format Q24_VOL_ORG %1.0f
format Q24_CUSTOMER %1.0f
format Q24_BAR_RESTAURANT %1.0f
format Q24_INTERNET_DATING %1.0f
format Q24_INTERNET_SOCIAL_NETWORKING %1.0f
format Q24_INTERNET_GAME %1.0f
format Q24_INTERNET_CHAT %1.0f
format Q24_INTERNET_COMMUNITY %1.0f
format Q24_INTERNET_OTHER %1.0f
format Q24_PUBLIC %1.0f
format Q24_PRIVATE_PARTY %1.0f
format Q24_BLIND_DATE %1.0f
format Q24_VACATION %1.0f
format Q24_SINGLES_SERVICE_NON_INTERNET %1.0f
format Q24_BUSINESS_TRIP %1.0f
format Q24_WORK_NEIGHBOR %1.0f
format Q24_FAM_SISTER_ACTIVE %1.0f
format Q24_FAM_BROTHER_ACTIVE %1.0f
format Q24_FAM_MOTHER_ACTIVE %1.0f
format Q24_FAM_FATHER_ACTIVE %1.0f
format Q24_FAM_OTHER_ACTIVE %1.0f
format Q24_FAM_COUSINS_ACTIVE %1.0f
format Q24_FAM_AUNT_NIECE_ACTIVE %1.0f
format Q24_FAM_UNCLE_NEPHEW_ACTIVE %1.0f
format Q24_FAM_GRANDMOTHER_ACTIVE %1.0f
format Q24_FAM_GRANDFATHER_ACTIVE %1.0f
format Q24_FAM_SISTER_PASSIVE %1.0f
format Q24_FAM_BROTHER_PASSIVE %1.0f
format Q24_FAM_MOTHER_PASSIVE %1.0f
format Q24_FAM_FATHER_PASSIVE %1.0f
format Q24_FAM_OTHER_PASSIVE %1.0f
format Q24_FAM_COUSINS_PASSIVE %1.0f
format Q24_FAM_AUNT_NIECE_PASSIVE %1.0f
format Q24_FAM_UNCLE_NEPHEW_PASSIVE %1.0f
format Q24_FAM_GRANDMOTHER_PASSIVE %1.0f
format Q24_FAM_GRANDFATHER_PASSIVE %1.0f
format Q24_FAM_FEMALE %1.0f
format Q24_FAM_MALE %1.0f
format DISTANCEMOVED_10MI %5.0f
format MARRYNOTREALLY %1.0f
format CIVILNOTREALLY %1.0f
format PARTNER_DECEASED %1.0f
format PARTNER_RELIGION_RECLASSIFIED %2.0f
format PARTNER_RELIGION_CHILD_RECLASS %2.0f
format OWN_RELIGION_CHILD_RECLASS %2.0f
format Q32_INTERNET %1.0f
format HOW_MET_ONLINE %1.0f
format EITHER_INTERNET %1.0f
format EITHER_INTERNET_ADJUSTED %2.0f
format SAME_SEX_COUPLE %1.0f
format POTENTIAL_PARTNER_GENDER_RECODES %2.0f
format ALT_PARTNER_GENDER %2.0f
format HOW_LONG_AGO_FIRST_MET %2.0f
format HOW_LONG_AGO_FIRST_ROMANTIC %2.0f
format HOW_LONG_AGO_FIRST_COHAB %2.0f
format HOW_LONG_AGO_FIRST_MET_CAT %1.0f
format HOW_LONG_RELATIONSHIP %14.11f
format RESPONDENT_RACE %1.0f
format PARTNER_RACE %1.0f
format AGE_DIFFERENCE %2.0f
format MET_THROUGH_FRIENDS %1.0f
format MET_THROUGH_FAMILY %1.0f
format MET_THROUGH_AS_NEIGHBORS %1.0f
format MET_THROUGH_AS_COWORKERS %1.0f
format RESPONDENT_RELIGION_AT_16 %2.0f
format RESPONDENT_RELIG_16_CAT %1.0f
format PARTNER_RELIGION_AT_16 %2.0f
format PARTNER_RELIG_16_CAT %1.0f
format MARRIED %1.0f
format PARENTAL_APPROVAL %1.0f
format RESPONDENT_YRSED %4.1f
format PARTNER_YRSED %4.1f
format HOME_COUNTRY_RECODE %2.0f
format US_RAISED %1.0f
format PARTNER_MOM_YRSED %4.1f
format RESPONDENT_MOM_YRSED %4.1f
format RELATIONSHIP_QUALITY %1.0f
format CORESIDENT %1.0f
format PP2_AFTERP1 %1.0f
format PP2_PPHHHEAD %2.0f
format PP2_PPHHSIZE %2.0f
format PP2_PPHOUSE %2.0f
format PP2_PPINCIMP %2.0f
format PP2_PPMARIT %2.0f
format PP2_PPMSACAT %2.0f
format PP2_PPEDUC %2.0f
format PP2_PPEDUCAT %2.0f
format PP2_RESPONDENT_YRSED %4.1f
format PP2_PPETHM %2.0f
format PP2_PPREG4 %2.0f
format PP2_PPREG9 %1.0f
format PP2_PPRENT %2.0f
format PP2_PPT01 %2.0f
format PP2_PPT1317 %2.0f
format PP2_PPT18OV %2.0f
format PP2_PPT25 %2.0f
format PP2_PPT612 %2.0f
format PP2_PPWORK %2.0f
format PP2_PPNET %1.0f
format PP2_PPCMDATE_YRMO %6.0f
format PP_IGDR1 %1.0f
format PP_IEDUC1 %1.0f
format PP2_IGDR2 %1.0f
format PP2_IEDUC2 %1.0f
format W2_DECEASED %1.0f
format W2_MULTINAME %1.0f
format W2_PANELSTAT %1.0f
format W2_DONOTCONTACT %1.0f
format W2_ASSIGNED %1.0f
format W2_F1COMPLETE %1.0f
format W2_HCMST_INTERVIEW_FIN_YRMO %6.0f
format W2_DURATION %5.0f
format W2_XMARRY %1.0f
format W2_XSS %1.0f
format W2_SOURCE %1.0f
format W2_Q1 %2.0f
format W2_Q2 %2.0f
format W2_Q3 %2.0f
format W2_Q4 %2.0f
format W2_Q5 %2.0f
format W2_Q6 %2.0f
format W2_Q7 %2.0f
format W2_Q8 %2.0f
format W2_Q9 %2.0f
format W2_Q10 %2.0f
format W2_BROKE_UP %1.0f
format W2_DAYS_ELAPSED %3.0f
format PP3_PPHHHEAD %2.0f
format PP3_PPHHSIZE %2.0f
format PP3_PPHOUSE %2.0f
format PP3_PPINCIMP %2.0f
format PP3_PPMARIT %2.0f
format PP3_PPMSACAT %2.0f
format PP3_PPRENT %2.0f
format PP3_PPREG4 %2.0f
format PP3_PPREG9 %1.0f
format INTERSTATE_MOVER_PP1_PP2 %1.0f
format INTERSTATE_MOVER_PP2_PP3 %1.0f
format INTERSTATE_MOVER_PP1_PP3 %1.0f
format PP3_PPT01 %2.0f
format PP3_PPT1317 %2.0f
format PP3_PPT18OV %2.0f
format PP3_PPT25 %2.0f
format PP3_PPT612 %2.0f
format PP3_PPWORK %2.0f
format PP3_PPNET %1.0f
format PP3_PPCMDATE_YRMO %6.0f
format PP3_PPEDUC %2.0f
format PP3_PPEDUCAT %2.0f
format PP3_RESPONDENT_YRSED %4.1f
format PP3_PPETHM %2.0f
format PP3_NEWER %1.0f
format W2W3_COMBO_BREAKUP %1.0f
format W3_BROKE_UP %1.0f
format W3_XPARTNERED %1.0f
format W3_XDECEASED %1.0f
format W3_MULTINAME %1.0f
format W3_XSS %1.0f
format W3_XLAST %1.0f
format W3_XYEAR %4.0f
format W3_XMONTH %1.0f
format W3_XQUALIFIED %1.0f
format W3_STATUS %1.0f
format W3_COMPLETE %1.0f
format W3_SOURCE %1.0f
format W3_HCMST_INTERVIEW_FIN_YRMO %6.0f
format W3_DAYS_ELAPSED %3.0f
format W3_DURATION %6.0f
format W3_XMARRY %1.0f
format W3_XTYPE %1.0f
format W3_Q1 %2.0f
format W3_Q2 %2.0f
format W3_Q3 %2.0f
format W3_Q4 %2.0f
format W3_MBTIMING_YEAR %2.0f
format W3_MBTIMING_MONTH %2.0f
format W3_Q5 %2.0f
format W3_Q6 %2.0f
format W3_Q7 %2.0f
format W3_Q8 %2.0f
format W3_Q9 %2.0f
format W3_Q10 %2.0f
format W3_NONMBTIMING_YEAR %4.0f
format W3_NONMBTIMING_MONTH %2.0f
format ZPNHWHITE_CAT %1.0f
format ZPNHBLACK_CAT %1.0f
format ZPHISP_CAT %1.0f
format ZPMEDHHINC_CAT %1.0f
format ZPFORBORN_CAT %1.0f
format ZPRURAL_CAT %1.0f
format Q15A1 %2.0f
format Q15A3_CODES %2.0f
format W4_XQUALIFIED %1.0f
format W4_STATUS %1.0f
format W4_COMPLETE %1.0f
format W4_SOURCE %1.0f
format W4_DURATION %5.0f
format W4_HCMST_INTERVIEW_FIN_YRMO %6.0f
format W4_XTYPE %1.0f
format W4_XYEAR %4.0f
format W4_XMONTH %2.0f
format W4_XMARRY %1.0f
format W4_XLAST %1.0f
format W4_XWAVE1_MONTH %1.0f
format W4_XCIVIL %1.0f
format W4_XSS %1.0f
format W4_Q1 %2.0f
format W4_Q2 %2.0f
format W4_QUALITY %2.0f
format W4_ATTRACTIVE %2.0f
format W4_ATTRACTIVE_PARTNER %2.0f
format W4_Q3 %2.0f
format W4_Q4 %2.0f
format W4_MBTIMING_YEAR %4.0f
format W4_MBTIMING_MONTH %2.0f
format W4_Q5 %1.0f
format W4_Q6 %1.0f
format W4_Q7 %2.0f
format W4_MAR_YEAR %4.0f
format W4_MAR_MONTH %2.0f
format W4_CIV_YEAR %4.0f
format W4_Q8_A %2.0f
format W4_Q8_B %2.0f
format W4_Q9 %1.0f
format W4_Q10 %2.0f
format W4_NONMBTIMING_YEAR %4.0f
format W4_NONMBTIMING_MONTH %2.0f
format RELATIONSHIP_QUALITY_W4 %1.0f
format W4_BROKE_UP %1.0f
format W234_COMBO_BREAKUP %1.0f
format PP4_PPEDUC %2.0f
format PP4_PPEDUCAT %2.0f
format PP4_PPETHM %2.0f
format PP4_PPHHHEAD %2.0f
format PP4_PPHHSIZE %2.0f
format PP4_PPHOUSE %2.0f
format PP4_PPINCIMP %2.0f
format PP4_PPMARIT %2.0f
format PP4_PPMSACAT %2.0f
format PP4_PPREG4 %2.0f
format PP4_PPREG9 %1.0f
format PP4_PPRENT %2.0f
format PP4_PPT01 %2.0f
format PP4_PPT25 %2.0f
format PP4_PPT612 %2.0f
format PP4_PPT1317 %2.0f
format PP4_PPT18OV %2.0f
format PP4_PPWORK %2.0f
format PP4_PPNET %1.0f
format PP4_PPCMDATE_YRMO %6.0f
format PP4_NEWER %1.0f
format PPA2009_SERVICES_YRMO %6.0f
format PPA2009_HOW_OFTEN_SERVICES %2.0f
format W5_DURATION %5.0f
format W5_SOURCE %1.0f
format W5_COMPLETE %1.0f
format W5_STATUS %1.0f
format W5X_QUALIFIED %1.0f
format W5X_MARRY %1.0f
format W5X_LAST %1.0f
format W5X_YEAR %4.0f
format W5X_CIVIL %1.0f
format W5X_MONTH %2.0f
format W5X_CIVYEAR %4.0f
format W5X_CIVMONTH %2.0f
format W5_Q1 %2.0f
format W5_Q2 %2.0f
format W5_SEX_FREQUENCY %2.0f
format W5_P_MONOGAMY %2.0f
format W5_IDENTITY %2.0f
format W5_OUTNESS %2.0f
format W5_Q3 %1.0f
format W5_Q4 %1.0f
format W5_MBTIMING_MONTH %2.0f
format W5_MBTIMING_YEAR %4.0f
format W5_Q5 %2.0f
format W5_Q6 %2.0f
format W5_Q7 %2.0f
format W5_MAR_YEAR %4.0f
format W5_MAR_MONTH %2.0f
format W5_Q8 %2.0f
format W5_CIV_YEAR %4.0f
format W5_CIV_MONTH %2.0f
format W5_Q9 %1.0f
format W5_Q10 %1.0f
format W5_NONMBTIMING_YEAR %4.0f
format W5_NONMBTIMING_MONTH %2.0f
format W5_BROKE_UP %1.0f
format W5_HCMST_INTERVIEW_FIN_YRMO %6.0f
format W2345_COMBO_BREAKUP %1.0f
format RESPONDED_TO_W234OR5 %1.0f
format PP5_PPAGE %3.0f
format PP5_PPAGECAT %2.0f
format PP5_PPAGECT4 %2.0f
format PP5_PPEDUC %2.0f
format PP5_PPEDUCAT %2.0f
format PP5_PPETHM %2.0f
format PP5_PPGENDER %2.0f
format PP5_PPHHHEAD %1.0f
format PP5_PPHHSIZE %2.0f
format PP5_PPHOUSE %2.0f
format PP5_PPINCIMP %2.0f
format PP5_PPMARIT %2.0f
format PP5_PPCMDATE_YRMO %6.0f
format PP5_NEWER %1.0f
format PP5_PPMSACAT %1.0f
format PP5_PPREG4 %2.0f
format PP5_PPREG9 %1.0f
format PP5_PPRENT %1.0f
format PP5_PPT01 %2.0f
format PP5_PPT25 %1.0f
format PP5_PPT612 %2.0f
format PP5_PPT1317 %2.0f
format PP5_PPT18OV %2.0f
format PP5_PPWORK %2.0f
format PP5_PPNET %1.0f
format PPMARIT_2014 %2.0f
format PPCMARIT_2014_YRMO %6.0f
format PPMARIT_2013 %2.0f
format PPCMARIT_2013_YRMO %6.0f
format PPMARIT_2012 %2.0f
format PPCMARIT_2012_YRMO %6.0f
format PPMARIT_2011 %2.0f
format PPCMARIT_2011_YRMO %6.0f
format PPMARIT_2010 %2.0f
format PPCMARIT_2010_YRMO %6.0f
format PPMARIT_2009 %2.0f
format PPCMARIT_2009_YRMO %6.0f
format PPMARIT_2007 %2.0f
format PPCMARIT_2007_YRMO %6.0f


/*********************************************************

Section 4: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "How Couples Meet and Stay Together (HCMST), Wave 1 2009, Wave 2 2010, Wave 3 2011, Wave 4 2013, Wave 5 2015, United States, Public Use Data"

#delimit ;
label define PPAGE     -2 "not asked" -1 "refused" ;
label define PPAGECAT  1 "18-24" 2 "25-34" 3 "35-44" 4 "45-54" 5 "55-64"
                       6 "65-74" 7 "75+" 99 "under 18" ;
label define PPAGECT4  1 "18-29" 2 "30-44" 3 "45-59" 4 "60+" 99 "under 18" ;
label define PPEDUC    -2 "not asked" -1 "refused" 1 "no formal education"
                       2 "1st, 2nd, 3rd, or 4th grade" 3 "5th or 6th grade"
                       4 "7th or 8th grade" 5 "9th grade" 6 "10th grade"
                       7 "11th grade" 8 "12th grade no diploma"
                       9 "high school graduate - high school diploma or the equivalent (ged)"
                       10 "some college, no degree" 11 "associate degree"
                       12 "bachelors degree" 13 "masters degree"
                       14 "professional or doctorate degree" ;
label define PPEDUCAT  -2 "not asked" -1 "refused" 1 "less than high school"
                       2 "high school" 3 "some college"
                       4 "bachelor's degree or higher" ;
label define PPETHM    -2 "not asked" -1 "refused" 1 "white, non-hispanic"
                       2 "black, non-hispanic" 3 "other, non-hispanic"
                       4 "hispanic" 5 "2+ races, non-hispanic" ;
label define PPGENDER  -2 "not asked" -1 "refused" 1 "male" 2 "female" ;
label define PPHHHEAD  -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PPHOUSE   -2 "not asked" -1 "refused"
                       1 "a one-family house detached from any other house"
                       2 "a one-family house attached to one or more houses"
                       3 "a building with 2 or more apartments"
                       4 "a mobile home" 5 "boat, rv, van, etc." ;
label define PPINCIMP  -2 "not asked" -1 "refused" 1 "less than $5,000"
                       2 "$5,000 to $7,499" 3 "$7,500 to $9,999"
                       4 "$10,000 to $12,499" 5 "$12,500 to $14,999"
                       6 "$15,000 to $19,999" 7 "$20,000 to $24,999"
                       8 "$25,000 to $29,999" 9 "$30,000 to $34,999"
                       10 "$35,000 to $39,999" 11 "$40,000 to $49,999"
                       12 "$50,000 to $59,999" 13 "$60,000 to $74,999"
                       14 "$75,000 to $84,999" 15 "$85,000 to $99,999"
                       16 "$100,000 to $124,999" 17 "$125,000 to $149,999"
                       18 "$150,000 to $174,999" 19 "$175,000 or more" ;
label define PPMARIT   -2 "not asked" -1 "refused" 1 "married" 2 "widowed"
                       3 "divorced" 4 "separated" 5 "never married"
                       6 "living with partner" ;
label define PPMSACAT  -2 "not asked" -1 "refused" 0 "non-metro" 1 "metro" ;
label define PPREG4    -2 "not asked" -1 "refused" 1 "northeast" 2 "midwest"
                       3 "south" 4 "west" ;
label define PPREG9    1 "new england" 2 "mid-atlantic"
                       3 "east-north central" 4 "west-north central"
                       5 "south atlantic" 6 "east-south central"
                       7 "west-south central" 8 "mountain" 9 "pacific" ;
label define PPRENT    -2 "not asked" -1 "refused"
                       1 "owned or being bought by you or someone in your household"
                       2 "rented for cash"
                       3 "occupied without payment of cash rent" ;
label define PPT01     -2 "not asked" -1 "refused" ;
label define PPT1317   -2 "not asked" -1 "refused" ;
label define PPT18OV   -2 "not asked" -1 "refused" ;
label define PPT25     -2 "not asked" -1 "refused" ;
label define PPT612    -2 "not asked" -1 "refused" ;
label define PPWORK    -2 "not asked" -1 "refused"
                       1 "working - as a paid employee"
                       2 "working - self-employed"
                       3 "not working - on temporary layoff from a job"
                       4 "not working - looking for work"
                       5 "not working - retired" 6 "not working - disabled"
                       7 "not working - other" ;
label define PPNET     0 "no" 1 "yes" ;
label define PPQ14ARACE -2 "not asked" -1 "refused" 1 "white"
                       2 "black, or african american"
                       3 "american indian or alaska native" 4 "asian indian"
                       5 "chinese" 6 "filipino" 7 "japanese" 8 "korean"
                       9 "vietnamese" 10 "other asian" 11 "native hawaiian"
                       12 "guamanian or chamorro" 13 "samoan"
                       14 "other pacific islander" 15 "some other race" ;
label define PPHISPAN  -2 "not asked" -1 "refused" 1 "no, i am not"
                       2 "yes, mexican, mexican-american, chicano"
                       3 "yes, puerto rican" 4 "yes, cuban"
                       5 "yes, central american" 6 "yes, south american"
                       7 "yes, caribbean"
                       8 "yes, other spanish/hispanic/latino" ;
label define PPRACE_WHITE -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PPRACE_BLACK -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PPRACE_NATIVEAMERICAN -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PPRACE_ASIANINDIAN -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PPRACE_CHINESE -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PPRACE_FILIPINO -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PPRACE_JAPANESE -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PPRACE_KOREAN -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PPRACE_VIETNAMESE -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PPRACE_OTHERASIAN -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PPRACE_HAWAIIAN -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PPRACE_GUAMANIAN -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PPRACE_SAMOAN -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PPRACE_OTHERPACIFICISLANDER -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PPRACE_SOMEOTHERRACE -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PAPGLB_FRIEND -2 "not asked" -1 "refused" 1 "yes, friends"
                       2 "yes, relatives" 3 "yes, both" 4 "no"
                       5 "i would prefer to not answer this question" ;
label define PPPARTYID3 -2 "not asked" -1 "refused" 1 "republican" 2 "other"
                       3 "democrat" ;
label define PAPEVANGELICAL -2 "not asked" -1 "refused" 1 "yes" 2 "no" ;
label define PAPRELIGION 1 "Baptist- any denomination"
                       2 "Protestant (e.g., Methodist, Lutheran, Presbyterian, Episcopal)"
                       3 "Catholic" 4 "Mormon" 5 "Jewish" 6 "Muslim"
                       7 "Hindu" 8 "Buddhist" 9 "Pentecostal"
                       10 "Eastern Orthodox" 11 "other Christian"
                       12 "other non-Christian, please specify" 13 "None" ;
label define PPHHCOMP11_MEMBER2_GENDER -1 "please select" 2 "male" 3 "female" ;
label define PPHHCOMP11_MEMBER3_GENDER -1 "please select" 2 "male" 3 "female" ;
label define PPHHCOMP11_MEMBER4_GENDER -1 "please select" 2 "male" 3 "female" ;
label define PPHHCOMP11_MEMBER5_GENDER -1 "please select" 2 "male" 3 "female" ;
label define PPHHCOMP11_MEMBER6_GENDER -1 "please select" 2 "male" 3 "female" ;
label define PPHHCOMP11_MEMBER7_GENDER -1 "please select" 2 "male" 3 "female" ;
label define PPHHCOMP11_MEMBER8_GENDER -1 "please select" 2 "male" 3 "female" ;
label define PPHHCOMP11_MEMBER9_GENDER -1 "please select" 2 "male" 3 "female" ;
label define PPHHCOMP11_MEMBER10_GENDER -1 "please select" 2 "male" 3 "female" ;
label define PPHHCOMP11_MEMBER11_GENDER -1 "please select" 2 "male" 3 "female" ;
label define PPHHCOMP11_MEMBER12_GENDER -1 "please select" 2 "male" 3 "female" ;
label define PPHHCOMP11_MEMBER13_GENDER -1 "please select" 2 "male" 3 "female" ;
label define PPHHCOMP11_MEMBER14_GENDER -1 "please select" 2 "male" 3 "female" ;
label define PPHHCOMP11_MEMBER15_GENDER -1 "please select" 2 "male" 3 "female" ;
label define PPHHCOMP11_MEMBER2_RELATIONSHIP -1 "please select" 2 "spouse"
                       3 "child (biological, adopted, or stepchild)"
                       4 "grandchild" 5 "parent" 6 "sibling"
                       7 "other relative" 8 "unmarried partner"
                       9 "housemate/roommate" 10 "other non-relative" ;
label define PPHHCOMP11_MEMBER3_RELATIONSHIP -1 "please select" 2 "spouse"
                       3 "child (biological, adopted, or stepchild)"
                       4 "grandchild" 5 "parent" 6 "sibling"
                       7 "other relative" 8 "unmarried partner"
                       9 "housemate/roommate" 10 "other non-relative" ;
label define PPHHCOMP11_MEMBER4_RELATIONSHIP -1 "please select" 2 "spouse"
                       3 "child (biological, adopted, or stepchild)"
                       4 "grandchild" 5 "parent" 6 "sibling"
                       7 "other relative" 8 "unmarried partner"
                       9 "housemate/roommate" 10 "other non-relative" ;
label define PPHHCOMP11_MEMBER5_RELATIONSHIP -1 "please select" 2 "spouse"
                       3 "child (biological, adopted, or stepchild)"
                       4 "grandchild" 5 "parent" 6 "sibling"
                       7 "other relative" 8 "unmarried partner"
                       9 "housemate/roommate" 10 "other non-relative" ;
label define PPHHCOMP11_MEMBER6_RELATIONSHIP -1 "please select" 2 "spouse"
                       3 "child (biological, adopted, or stepchild)"
                       4 "grandchild" 5 "parent" 6 "sibling"
                       7 "other relative" 8 "unmarried partner"
                       9 "housemate/roommate" 10 "other non-relative" ;
label define PPHHCOMP11_MEMBER7_RELATIONSHIP -1 "please select" 2 "spouse"
                       3 "child (biological, adopted, or stepchild)"
                       4 "grandchild" 5 "parent" 6 "sibling"
                       7 "other relative" 8 "unmarried partner"
                       9 "housemate/roommate" 10 "other non-relative" ;
label define PPHHCOMP11_MEMBER8_RELATIONSHIP -1 "please select" 2 "spouse"
                       3 "child (biological, adopted, or stepchild)"
                       4 "grandchild" 5 "parent" 6 "sibling"
                       7 "other relative" 8 "unmarried partner"
                       9 "housemate/roommate" 10 "other non-relative" ;
label define PPHHCOMP11_MEMBER9_RELATIONSHIP -1 "please select" 2 "spouse"
                       3 "child (biological, adopted, or stepchild)"
                       4 "grandchild" 5 "parent" 6 "sibling"
                       7 "other relative" 8 "unmarried partner"
                       9 "housemate/roommate" 10 "other non-relative" ;
label define PPHHCOMP11_MEMBER10_RELATIONSHIP -1 "please select" 2 "spouse"
                       3 "child (biological, adopted, or stepchild)"
                       4 "grandchild" 5 "parent" 6 "sibling"
                       7 "other relative" 8 "unmarried partner"
                       9 "housemate/roommate" 10 "other non-relative" ;
label define PPHHCOMP11_MEMBER11_RELATIONSHIP -1 "please select" 2 "spouse"
                       3 "child (biological, adopted, or stepchild)"
                       4 "grandchild" 5 "parent" 6 "sibling"
                       7 "other relative" 8 "unmarried partner"
                       9 "housemate/roommate" 10 "other non-relative" ;
label define PPHHCOMP11_MEMBER12_RELATIONSHIP -1 "please select" 2 "spouse"
                       3 "child (biological, adopted, or stepchild)"
                       4 "grandchild" 5 "parent" 6 "sibling"
                       7 "other relative" 8 "unmarried partner"
                       9 "housemate/roommate" 10 "other non-relative" ;
label define PPHHCOMP11_MEMBER13_RELATIONSHIP -1 "please select" 2 "spouse"
                       3 "child (biological, adopted, or stepchild)"
                       4 "grandchild" 5 "parent" 6 "sibling"
                       7 "other relative" 8 "unmarried partner"
                       9 "housemate/roommate" 10 "other non-relative" ;
label define PPHHCOMP11_MEMBER14_RELATIONSHIP -1 "please select" 2 "spouse"
                       3 "child (biological, adopted, or stepchild)"
                       4 "grandchild" 5 "parent" 6 "sibling"
                       7 "other relative" 8 "unmarried partner"
                       9 "housemate/roommate" 10 "other non-relative" ;
label define PPHHCOMP11_MEMBER15_RELATIONSHIP -1 "please select" 2 "spouse"
                       3 "child (biological, adopted, or stepchild)"
                       4 "grandchild" 5 "parent" 6 "sibling"
                       7 "other relative" 8 "unmarried partner"
                       9 "housemate/roommate" 10 "other non-relative" ;
label define IRB_CONSENT -1 "refused" 1 "yes, i agree to participate"
                       2 "no, i don't agree to participate" ;
label define QFLAG     1 "partnered"
                       2 "no spouse or partner or otherwise unqualified" ;
label define GLBSTATUS 0 "not glb" 1 "glb" ;
label define PAPGLB_STATUS -2 "not asked" -1 "refused" 1 "yes" 2 "no"
                       3 "i would prefer to not answer this question" ;
label define RECSOURCE 1 "gen pop sample" 2 "glb augment sample"
                       3 "glb withdrawn sample" 4 "glb item refused sample" ;
label define S1        -1 "refused" 1 "yes, i am married"
                       2 "no, i am not married" ;
label define S1A       -1 "refused" 1 "yes" 2 "no"
                       3 "i would prefer not to answer this question" ;
label define S2        -1 "refused"
                       1 "yes, i have a sexual partner (boyfriend or girlfriend)"
                       2 "i have a romantic partner who is not yet a sexual partner"
                       3 "no, i am single, with no boyfriend, no girlfriend and no romantic or sexual partner" ;
label define Q3_CODES  -1 "refused" ;
label define Q4        -1 "refused" 1 "male" 2 "female"
                       3 "other, please specify" ;
label define Q5        -1 "refused" 1 "yes, we are a same-sex couple"
                       2 "no, we are an opposite-sex couple" ;
label define Q6A       -1 "refused" 1 "no (not latino or hispanic)"
                       2 "yes, mexican, mexican american, chicano"
                       3 "yes, puerto rican" 4 "yes, cuban"
                       5 "yes, other latino/hispanic" ;
label define Q6B       -1 "refused" 1 "white" 2 "black or african american"
                       3 "american indian, aleut, or eskimo"
                       4 "asian or pacific islander"
                       5 "other (please specify)" ;
label define Q7A       -1 "refused" 1 "yes" 2 "no" ;
label define Q7B       -1 "refused" 1 "baptist - any denomination"
                       2 "protestant (e.g. methodist, lutheran, presbyterian, episcopal)"
                       3 "catholic" 4 "mormon" 5 "jewish" 6 "muslim"
                       7 "hindu" 8 "buddhist" 9 "pentecostal"
                       10 "eastern orthodox" 11 "other christian"
                       12 "other non-christian, please specify" 13 "none" ;
label define Q8A       -1 "refused" 1 "yes, the same"
                       2 "no, has changed religions" ;
label define Q8B       -1 "refused" 1 "baptist - any denomination"
                       2 "protestant (e.g. methodist, lutheran, presbyterian, episcopal)"
                       3 "catholic" 4 "mormon" 5 "jewish" 6 "muslim"
                       7 "hindu" 8 "buddhist" 9 "pentecostal"
                       10 "eastern orthodox" 11 "other christian"
                       12 "other non-christian, please specify" 13 "none" ;
label define Q10       -1 "refused" 1 "no formal education"
                       2 "1st - 4th grade" 3 "5th or 6th grade"
                       4 "7th or 8th grade" 5 "9th grade" 6 "10th grade"
                       7 "11th grade" 8 "12th grade no diploma"
                       9 "hs graduate or ged" 10 "some college, no degree"
                       11 "associate degree" 12 "bachelor's degree"
                       13 "master's degree"
                       14 "professional or doctorate degree" ;
label define Q11       -1 "refused" 1 "no formal education"
                       2 "1st - 4th grade" 3 "5th or 6th grade"
                       4 "7th or 8th grade" 5 "9th grade" 6 "10th grade"
                       7 "11th grade" 8 "12th grade no diploma"
                       9 "hs graduate or ged" 10 "some college, no degree"
                       11 "associate degree" 12 "bachelor's degree"
                       13 "master's degree"
                       14 "professional or doctorate degree" ;
label define Q12       -1 "refused" 1 "republican" 2 "democrat"
                       3 "independent" 4 "another party, please specify"
                       5 "no preference" ;
label define Q13A      -1 "refused" 1 "yes, the same"
                       2 "no, i have changed religions" ;
label define Q13B      -1 "refused" 1 "baptist - any denomination"
                       2 "protestant (e.g. methodist, lutheran, presbyterian, episcopal)"
                       3 "catholic" 4 "mormon" 5 "jewish" 6 "muslim"
                       7 "hindu" 8 "buddhist" 9 "pentecostal"
                       10 "eastern orthodox" 11 "other christian"
                       12 "other non-christian, please specify" 13 "none" ;
label define Q14       -1 "refused" 1 "no formal education"
                       2 "1st - 4th grade" 3 "5th or 6th grade"
                       4 "7th or 8th grade" 5 "9th grade" 6 "10th grade"
                       7 "11th grade" 8 "12th grade no diploma"
                       9 "hs graduate or ged" 10 "some college, no degree"
                       11 "associate degree" 12 "bachelor's degree"
                       13 "master's degree"
                       14 "professional or doctorate degree" ;
label define Q15A1_COMPRESSED -1 "refused" 1 "United States" 2 "all others" ;
label define Q16       -1 "refused" ;
label define Q17A      -1 "refused" 1 "once (this is my first marriage)"
                       2 "twice" 3 "three times" 4 "four or more times" ;
label define Q17B      -1 "refused" 1 "never married" 2 "once" 3 "twice"
                       4 "three times" 5 "four or more times" ;
label define Q17C      -1 "refused" 1 "i am sexually attracted only to men"
                       2 "i am mostly sexually attracted to men, less often sexually attracted to women"
                       3 "i am equally sexually attracted to men and women"
                       4 "i am mostly sexually attracted to women, less often sexually attracted to men"
                       5 "i am sexually attracted only to women" ;
label define Q17D      -1 "refused" 1 "i am sexually attracted only to women"
                       2 "i am mostly sexually attracted to women, less often sexually attracted to men"
                       3 "i am equally sexually attracted to men and women"
                       4 "i am mostly sexually attracted to men, less often sexually attracted to women"
                       5 "i am sexually attracted only to men" ;
label define GENDER_ATTRACTION 1 "opposite gender only" 2 "mostly opposite"
                       3 "both genders equally" 4 "same gender mostly"
                       5 "only same gender" ;
label define Q18A_1    -1 "refused" 0 "no" 1 "yes" ;
label define Q18A_2    -1 "refused" 0 "no" 1 "yes" ;
label define Q18A_3    -1 "refused" 0 "have either DP or CU"
                       1 "have neither DP nor CU" ;
label define Q18A_REFUSED 0 "no" 1 "yes" ;
label define Q18B_CODES -1 "refused" ;
label define Q18C_CODES -1 "refused" ;
label define Q19       -1 "refused" 1 "yes" 2 "no" ;
label define Q20       -1 "refused" 1 "yes" 2 "no" ;
label define Q21A_REFUSAL 1 "refused" ;
label define Q21B_REFUSAL 1 "refused" ;
label define Q21C_REFUSAL 1 "refused" ;
label define Q21D_REFUSAL 1 "refused" ;
label define Q21E_REFUSAL 1 "refused" ;
label define Q22       -1 "refused" 1 "less than one month" 2 "1-3 months"
                       3 "4-6 months" 4 "7 months - 1 year"
                       5 "more than 1 year, less than 2 years"
                       6 "more than 2 years, less than 3 years"
                       7 "3 years or more" ;
label define Q23       -1 "refused" 1 "i earned more"
                       2 "we earned about the same amount"
                       3 "partner earned more" ;
label define Q24_CODES -1 "refused"
                       1 "answered but refused to provide information" ;
label define Q25       -1 "refused" 1 "same high school"
                       2 "different high school" ;
label define Q26       -1 "refused" 1 "attended same college or university"
                       2 "did not attend same college or university" ;
label define Q27       -1 "refused" 1 "yes" 2 "no" ;
label define Q28       -1 "refused" 1 "yes" 2 "no" ;
label define Q29       -1 "refused" 1 "father and mother" 2 "father only"
                       3 "mother only"
                       4 "neither father nor mother are alive" ;
label define Q30       -1 "refused" 1 "approve"
                       2 "neither approve nor disapprove" 3 "disapprove"
                       4 "do not know" ;
label define Q31_1     -1 "refused" 0 "no" 1 "yes" ;
label define Q31_2     -1 "refused" 0 "no" 1 "yes" ;
label define Q31_3     -1 "refused" 0 "no" 1 "yes" ;
label define Q31_4     -1 "refused" 0 "no" 1 "yes" ;
label define Q31_5     -1 "refused" 0 "no" 1 "yes" ;
label define Q31_6     -1 "refused" 0 "no" 1 "yes" ;
label define Q31_7     -1 "refused" 0 "no" 1 "yes" ;
label define Q31_8     -1 "refused" 0 "no" 1 "yes" ;
label define Q31_9     -1 "refused" 0 "no" 1 "yes" ;
label define Q31_OTHER_TEXT_ENTERED 0 "No" 1 "Yes" ;
label define Q32       -1 "refused"
                       1 "yes, a social networking site (like facebook or myspace)"
                       2 "no, we did not meet through the internet"
                       3 "yes, an internet dating or matchmaking site (like eharmony or match.com)"
                       4 "yes, an internet classified advertising site (like craigslist)"
                       5 "yes, an internet chat room"
                       6 "yes, a different kind of internet service" ;
label define Q33_1     -1 "refused" 0 "no" 1 "yes" ;
label define Q33_2     -1 "refused" 0 "no" 1 "yes" ;
label define Q33_3     -1 "refused" 0 "no" 1 "yes" ;
label define Q33_4     -1 "refused" 0 "no" 1 "yes" ;
label define Q33_5     -1 "refused" 0 "no" 1 "yes" ;
label define Q33_6     -1 "refused" 0 "no" 1 "yes" ;
label define Q33_7     -1 "refused" 0 "no" 1 "yes" ;
label define Q33_OTHER_TEXT_ENTERED 0 "No" 1 "Yes" ;
label define Q34       -1 "refused" 1 "excellent" 2 "good" 3 "fair" 4 "poor"
                       5 "very poor" ;
label define Q35_CODES -1 "refused" ;
label define Q35_TEXT_ENTERED 0 "No" 1 "Yes" ;
label define Q24_MET_ONLINE 0 "met offline" 1 "met online" ;
label define Q24_R_COWORK 0 "No" 1 "Yes" ;
label define Q24_R_FRIEND 0 "No" 1 "Yes" ;
label define Q24_R_FAMILY 0 "No" 1 "Yes" ;
label define Q24_R_SIG_OTHER 0 "No" 1 "Yes" ;
label define Q24_R_NEIGHBOR 0 "No" 1 "Yes" ;
label define Q24_P_COWORK 0 "No" 1 "Yes" ;
label define Q24_P_FRIEND 0 "No" 1 "Yes" ;
label define Q24_P_FAMILY 0 "No" 1 "Yes" ;
label define Q24_P_SIG_OTHER 0 "No" 1 "Yes" ;
label define Q24_P_NEIGHBOR 0 "No" 1 "Yes" ;
label define Q24_BTWN_I_COWORK 0 "No" 1 "Yes" ;
label define Q24_BTWN_I_FRIEND 0 "No" 1 "Yes" ;
label define Q24_BTWN_I_FAMILY 0 "No" 1 "Yes" ;
label define Q24_BTWN_I_SIG_OTHER 0 "No" 1 "Yes" ;
label define Q24_BTWN_I_NEIGHBOR 0 "No" 1 "Yes" ;
label define Q24_SCHOOL 0 "No" 1 "Yes" ;
label define Q24_COLLEGE 0 "No" 1 "Yes" ;
label define Q24_MILITARY 0 "No" 1 "Yes" ;
label define Q24_CHURCH 0 "No" 1 "Yes" ;
label define Q24_VOL_ORG 0 "No" 1 "Yes" ;
label define Q24_CUSTOMER 0 "No" 1 "Yes" ;
label define Q24_BAR_RESTAURANT 0 "No" 1 "Yes" ;
label define Q24_INTERNET_DATING 0 "No" 1 "Yes" ;
label define Q24_INTERNET_SOCIAL_NETWORKING 0 "No" 1 "Yes" ;
label define Q24_INTERNET_GAME 0 "No" 1 "Yes" ;
label define Q24_INTERNET_CHAT 0 "No" 1 "Yes" ;
label define Q24_INTERNET_COMMUNITY 0 "No" 1 "Yes" ;
label define Q24_INTERNET_OTHER 0 "No" 1 "Yes" ;
label define Q24_PUBLIC 0 "No" 1 "Yes" ;
label define Q24_PRIVATE_PARTY 0 "No" 1 "Yes" ;
label define Q24_BLIND_DATE 0 "No" 1 "Yes" ;
label define Q24_VACATION 0 "No" 1 "Yes" ;
label define Q24_SINGLES_SERVICE_NON_INTERNET 0 "No" 1 "Yes" ;
label define Q24_BUSINESS_TRIP 0 "No" 1 "Yes" ;
label define Q24_WORK_NEIGHBOR 0 "No" 1 "Yes" ;
label define Q24_FAM_SISTER_ACTIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_BROTHER_ACTIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_MOTHER_ACTIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_FATHER_ACTIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_OTHER_ACTIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_COUSINS_ACTIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_AUNT_NIECE_ACTIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_UNCLE_NEPHEW_ACTIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_GRANDMOTHER_ACTIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_GRANDFATHER_ACTIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_SISTER_PASSIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_BROTHER_PASSIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_MOTHER_PASSIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_FATHER_PASSIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_OTHER_PASSIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_COUSINS_PASSIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_AUNT_NIECE_PASSIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_UNCLE_NEPHEW_PASSIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_GRANDMOTHER_PASSIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_GRANDFATHER_PASSIVE 0 "No" 1 "Yes" ;
label define Q24_FAM_FEMALE 0 "No" 1 "Yes" ;
label define Q24_FAM_MALE 0 "No" 1 "Yes" ;
label define MARRYNOTREALLY 0 "married" 1 "not legally married" ;
label define CIVILNOTREALLY 0 "real civ union or dom partnership"
                       1 "perhaps not real civ union or dom partnership" ;
label define PARTNER_DECEASED 0 "not deceased" 1 "apparently deceased" ;
label define PARTNER_RELIGION_RECLASSIFIED -1 "refused" 1 "baptist - any denomination"
                       2 "protestant (e.g. methodist, lutheran, presbyterian, episcopal)"
                       3 "catholic" 4 "mormon" 5 "jewish" 6 "muslim"
                       7 "hindu" 8 "buddhist" 9 "pentecostal"
                       10 "eastern orthodox" 11 "other christian"
                       12 "other non-christian, please specify" 13 "none" ;
label define PARTNER_RELIGION_CHILD_RECLASS -1 "refused" 1 "baptist - any denomination"
                       2 "protestant (e.g. methodist, lutheran, presbyterian, episcopal)"
                       3 "catholic" 4 "mormon" 5 "jewish" 6 "muslim"
                       7 "hindu" 8 "buddhist" 9 "pentecostal"
                       10 "eastern orthodox" 11 "other christian"
                       12 "other non-christian, please specify" 13 "none" ;
label define OWN_RELIGION_CHILD_RECLASS -1 "refused" 1 "baptist - any denomination"
                       2 "protestant (e.g. methodist, lutheran, presbyterian, episcopal)"
                       3 "catholic" 4 "mormon" 5 "jewish" 6 "muslim"
                       7 "hindu" 8 "buddhist" 9 "pentecostal"
                       10 "eastern orthodox" 11 "other christian"
                       12 "other non-christian, please specify" 13 "none" ;
label define Q32_INTERNET 0 "met offline according to q32"
                       1 "met online according to q32" ;
label define HOW_MET_ONLINE
                       1 "reconnected: already knew partner but reconnected online"
                       2 "Mediated: Online connection was mediated by friends, family, or others"
                       3 "Previously Strangers: Before online connection respondent and partner were strangers"
                       4 "We cannot tell from the existed data whether the respondent and partner knew each other prior to online connection"
                       5 "Probably Did Not meet partner online, despite positive answer to q32 or q24" ;
label define EITHER_INTERNET 0 "No" 1 "Yes" ;
label define EITHER_INTERNET_ADJUSTED -1 "probably not met online, q32 and q24 disagree"
                       0 "not met online" 1 "met online" ;
label define SAME_SEX_COUPLE 0 "different sex couple" 1 "same-sex couple" ;
label define POTENTIAL_PARTNER_GENDER_RECODES -1 "refused" 1 "male" 2 "female"
                       3 "other, please specify" ;
label define ALT_PARTNER_GENDER -1 "refused" 1 "male" 2 "female"
                       3 "other, please specify" ;
label define HOW_LONG_AGO_FIRST_MET_CAT 1 "0-2" 2 "3-5" 3 "6-10" 4 "11-15" 5 "16-20" 6 "21-30"
                       7 "31+" ;
label define RESPONDENT_RACE 1 "NH white" 2 "NH black" 3 "NH Amer Indian"
                       4 "NH Asian Pac Islander" 5 "NH Other" 6 "Hispanic" ;
label define PARTNER_RACE 1 "NH white" 2 "NH black" 3 "NH Amer Indian"
                       4 "NH Asian Pac Islander" 5 "NH Other" 6 "Hispanic" ;
label define MET_THROUGH_FRIENDS 0 "not met through friends" 1 "meet through friends" ;
label define MET_THROUGH_FAMILY 0 "not met through family" 1 "met through family" ;
label define MET_THROUGH_AS_NEIGHBORS 0 "did not meet through or as neighbors"
                       1 "met through or as neighbors" ;
label define MET_THROUGH_AS_COWORKERS 0 "did not meet through or as coworkers"
                       1 "met through or as coworkers" ;
label define RESPONDENT_RELIGION_AT_16 -1 "refused" 1 "baptist - any denomination"
                       2 "protestant (e.g. methodist, lutheran, presbyterian, episcopal)"
                       3 "catholic" 4 "mormon" 5 "jewish" 6 "muslim"
                       7 "hindu" 8 "buddhist" 9 "pentecostal"
                       10 "eastern orthodox" 11 "other christian"
                       12 "other non-christian, please specify" 13 "none" ;
label define RESPONDENT_RELIG_16_CAT 1 "Protestant or oth Christian" 2 "Catholic"
                       3 "Jewish" 4 "Neither Christian nor Jewish"
                       5 "No religion" ;
label define PARTNER_RELIGION_AT_16 -1 "refused" 1 "baptist - any denomination"
                       2 "protestant (e.g. methodist, lutheran, presbyterian, episcopal)"
                       3 "catholic" 4 "mormon" 5 "jewish" 6 "muslim"
                       7 "hindu" 8 "buddhist" 9 "pentecostal"
                       10 "eastern orthodox" 11 "other christian"
                       12 "other non-christian, please specify" 13 "none" ;
label define PARTNER_RELIG_16_CAT 1 "Protestant or oth Christian" 2 "Catholic"
                       3 "Jewish" 4 "Neither Christian nor Jewish"
                       5 "No religion" ;
label define MARRIED   0 "not married" 1 "married" ;
label define PARENTAL_APPROVAL 0 "don't approve or don't know" 1 "approve" ;
label define HOME_COUNTRY_RECODE -1 "refused" 1 "united states" 2 "cambodia" 3 "canada"
                       4 "china" 5 "colombia" 6 "cuba" 7 "dominican republic"
                       8 "ecuador" 9 "el salvador" 10 "former yugoslavia"
                       11 "france" 12 "germany" 13 "great britain"
                       14 "greece" 15 "guatemala" 16 "guyana" 17 "haiti"
                       18 "honduras" 19 "hungary" 20 "india" 21 "iran"
                       22 "ireland" 23 "italy" 24 "jamaica" 25 "japan"
                       26 "korea" 27 "laos" 28 "mexico" 29 "nicaragua"
                       30 "peru" 31 "philippines" 32 "poland" 33 "portugal"
                       34 "russia" 35 "taiwan" 36 "thailand"
                       37 "trinidad and tobago" 38 "vietnam"
                       39 "another country, please specify" ;
label define US_RAISED 0 "raised outside US" 1 "raised in US" ;
label define RELATIONSHIP_QUALITY 1 "very poor" 2 "poor" 3 "fair" 4 "good" 5 "excellent" ;
label define CORESIDENT 0 "No" 1 "Yes" ;
label define PP2_AFTERP1 0 "No second background survey"
                       1 "Yes second background survey" ;
label define PP2_PPHHHEAD -2 "not asked" -1 "refused" 0 "no" 1 "yes" ;
label define PP2_PPHHSIZE -2 "not asked" -1 "refused" ;
label define PP2_PPHOUSE -2 "not asked" -1 "refused"
                       1 "a one-family house detached from any other house"
                       2 "a one-family house attached to one or more houses"
                       3 "a building with 2 or more apartments"
                       4 "a mobile home" 5 "boat, rv, van, etc." ;
label define PP2_PPINCIMP -2 "not asked" -1 "refused" 1 "less than $5,000"
                       2 "$5,000 to $7,499" 3 "$7,500 to $9,999"
                       4 "$10,000 to $12,499" 5 "$12,500 to $14,999"
                       6 "$15,000 to $19,999" 7 "$20,000 to $24,999"
                       8 "$25,000 to $29,999" 9 "$30,000 to $34,999"
                       10 "$35,000 to $39,999" 11 "$40,000 to $49,999"
                       12 "$50,000 to $59,999" 13 "$60,000 to $74,999"
                       14 "$75,000 to $84,999" 15 "$85,000 to $99,999"
                       16 "$100,000 to $124,999" 17 "$125,000 to $149,999"
                       18 "$150,000 to $174,999" 19 "$175,000 or more" ;
label define PP2_PPMARIT -2 "not asked" -1 "refused" 1 "married" 2 "widowed"
                       3 "divorced" 4 "separated" 5 "never married"
                       6 "living with partner" ;
label define PP2_PPMSACAT -2 "not asked" -1 "refused" 0 "non-metro" 1 "metro" ;
label define PP2_PPEDUC -2 "not asked" -1 "refused" 1 "no formal education"
                       2 "1st, 2nd, 3rd, or 4th grade" 3 "5th or 6th grade"
                       4 "7th or 8th grade" 5 "9th grade" 6 "10th grade"
                       7 "11th grade" 8 "12th grade no diploma"
                       9 "high school graduate - high school diploma or the equivalent (ged)"
                       10 "some college, no degree" 11 "associate degree"
                       12 "bachelors degree" 13 "masters degree"
                       14 "professional or doctorate degree" ;
label define PP2_PPEDUCAT -2 "not asked" -1 "refused" 1 "less than high school"
                       2 "high school" 3 "some college"
                       4 "bachelor's degree or higher" ;
label define PP2_PPETHM -2 "not asked" -1 "refused" 1 "white, non-hispanic"
                       2 "black, non-hispanic" 3 "other, non-hispanic"
                       4 "hispanic" 5 "2+ races, non-hispanic" ;
label define PP2_PPREG4 -2 "not asked" -1 "refused" 1 "northeast" 2 "midwest"
                       3 "south" 4 "west" ;
label define PP2_PPREG9 1 "new england" 2 "mid-atlantic"
                       3 "east-north central" 4 "west-north central"
                       5 "south atlantic" 6 "east-south central"
                       7 "west-south central" 8 "mountain" 9 "pacific" ;
label define PP2_PPRENT -2 "not asked" -1 "refused"
                       1 "owned or being bought by you or someone in your household"
                       2 "rented for cash"
                       3 "occupied without payment of cash rent" ;
label define PP2_PPT01 -2 "not asked" -1 "refused" ;
label define PP2_PPT1317 -2 "not asked" -1 "refused" ;
label define PP2_PPT18OV -2 "not asked" -1 "refused" ;
label define PP2_PPT25 -2 "not asked" -1 "refused" ;
label define PP2_PPT612 -2 "not asked" -1 "refused" ;
label define PP2_PPWORK -2 "not asked" -1 "refused"
                       1 "working - as a paid employee"
                       2 "working - self-employed"
                       3 "not working - on temporary layoff from a job"
                       4 "not working - looking for work"
                       5 "not working - retired" 6 "not working - disabled"
                       7 "not working - other" ;
label define PP2_PPNET 0 "no" 1 "yes" ;
label define PP_IGDR1  0 "value not imputed" 1 "value imputed" ;
label define PP_IEDUC1 0 "value not imputed" 1 "value imputed" ;
label define PP2_IGDR2 0 "value not imputed" 1 "value imputed" ;
label define PP2_IEDUC2 0 "value not imputed" 1 "value imputed" ;
label define W2_DECEASED 0 "not deceased" 1 "apparently deceased" ;
label define W2_MULTINAME 1 "includes multiple names" ;
label define W2_PANELSTAT 1 "active kn panelist" 2 "withdrawn kn panelist" ;
label define W2_DONOTCONTACT 1 "withdrawn case on noncontact list"
                       2 "all other cases" ;
label define W2_ASSIGNED 1 "assigned to survey" 2 "not assigned to survey" ;
label define W2_F1COMPLETE 0 "did not complete followup survey"
                       1 "completed followup survey" ;
label define W2_XMARRY 1 "married" 2 "partnered" ;
label define W2_XSS
                       1 "yes, qualified to ask about new domestic parterships"
                       2 "no" ;
label define W2_SOURCE 1 "online" 2 "telephone" ;
label define W2_Q1     -1 "refused" 1 "yes" 2 "no" ;
label define W2_Q2     -1 "refused" 1 "yes" 2 "no" ;
label define W2_Q3     -1 "refused" 1 "divorce"
                       2 "separation with no divorce"
                       3 "(partner) passed away, is deceased" ;
label define W2_Q4     -1 "refused"
                       1 "i wanted the (divorce/separation) more"
                       2 "(partner) wanted the (divorce/separation) more"
                       3 "we both equally wanted the (divorce/separation)" ;
label define W2_Q5     -1 "refused" 1 "yes" 2 "no" ;
label define W2_Q6     -1 "refused" 1 "yes" 2 "no" ;
label define W2_Q7     -1 "refused" 1 "yes, married (partner)"
                       2 "no, did not marry (partner)" ;
label define W2_Q8     -1 "refused"
                       1 "no, we have not gotten a domestic partnership or civil union agreement"
                       2 "yes, we have gotten a domestic partnership or civil union agreement" ;
label define W2_Q9     -1 "refused" 1 "we broke up"
                       2 "(partner) passed away, is deceased"
                       3 "other (please describe)" ;
label define W2_Q10    -1 "refused" 1 "i wanted to break up more"
                       2 "(partner) wanted to break up more"
                       3 "we both equally wanted to break up" ;
label define W2_BROKE_UP 0 "still together" 1 "broke up"
                       2 "partner passed away" ;
label define PP3_PPHHHEAD -2 "Not asked" -1 "refused" 0 "No" 1 "Yes" ;
label define PP3_PPHHSIZE -2 "not asked" -1 "refused" ;
label define PP3_PPHOUSE -2 "Not asked" -1 "refused"
                       1 "A one-family house detached from any other house"
                       2 "A one-family house attached to one or more houses"
                       3 "A building with 2 or more apartments"
                       4 "A mobile home" 5 "Boat, RV, van, etc." ;
label define PP3_PPINCIMP -2 "Not asked" -1 "refused" 1 "Less than $5,000"
                       2 "$5,000 to $7,499" 3 "$7,500 to $9,999"
                       4 "$10,000 to $12,499" 5 "$12,500 to $14,999"
                       6 "$15,000 to $19,999" 7 "$20,000 to $24,999"
                       8 "$25,000 to $29,999" 9 "$30,000 to $34,999"
                       10 "$35,000 to $39,999" 11 "$40,000 to $49,999"
                       12 "$50,000 to $59,999" 13 "$60,000 to $74,999"
                       14 "$75,000 to $84,999" 15 "$85,000 to $99,999"
                       16 "$100,000 to $124,999" 17 "$125,000 to $149,999"
                       18 "$150,000 to $174,999" 19 "$175,000 or more" ;
label define PP3_PPMARIT -2 "Not asked" -1 "refused" 1 "Married" 2 "Widowed"
                       3 "Divorced" 4 "Separated" 5 "Never married"
                       6 "Living with partner" ;
label define PP3_PPMSACAT -2 "Not asked" -1 "refused" 0 "Non-Metro" 1 "Metro" ;
label define PP3_PPRENT -2 "Not asked" -1 "refused"
                       1 "Owned or being bought by you or someone in your household"
                       2 "Rented for cash"
                       3 "Occupied without payment of cash rent" ;
label define PP3_PPREG4 -2 "Not asked" -1 "refused" 1 "Northeast" 2 "Midwest"
                       3 "South" 4 "West" ;
label define PP3_PPREG9 1 "New England" 2 "Mid-Atlantic"
                       3 "East-North Central" 4 "West-North Central"
                       5 "South Atlantic" 6 "East-South Central"
                       7 "West-South Central" 8 "Mountain" 9 "Pacific" ;
label define INTERSTATE_MOVER_PP1_PP2 0 "stayer" 1 "mover" ;
label define INTERSTATE_MOVER_PP2_PP3 0 "stayer" 1 "mover" ;
label define INTERSTATE_MOVER_PP1_PP3 0 "stayer" 1 "mover" ;
label define PP3_PPT01 -2 "not asked" -1 "refused" ;
label define PP3_PPT1317 -2 "not asked" -1 "refused" ;
label define PP3_PPT18OV -2 "not asked" -1 "refused" ;
label define PP3_PPT25 -2 "not asked" -1 "refused" ;
label define PP3_PPT612 -2 "not asked" -1 "refused" ;
label define PP3_PPWORK -2 "Not asked" -1 "refused"
                       1 "Working - as a paid employee"
                       2 "Working - self-employed"
                       3 "Not working - on temporary layoff from a job"
                       4 "Not working - looking for work"
                       5 "Not working - retired" 6 "Not working - disabled"
                       7 "Not working - other" ;
label define PP3_PPNET 0 "No" 1 "Yes" ;
label define PP3_PPEDUC -2 "Not asked" -1 "refused" 1 "No formal education"
                       2 "1st, 2nd, 3rd, or 4th grade" 3 "5th or 6th grade"
                       4 "7th or 8th grade" 5 "9th grade" 6 "10th grade"
                       7 "11th grade" 8 "12th grade NO DIPLOMA"
                       9 "HIGH SCHOOL GRADUATE - high school DIPLOMA or the equivalent (GED)"
                       10 "Some college, no degree" 11 "Associate degree"
                       12 "Bachelors degree" 13 "Masters degree"
                       14 "Professional or Doctorate degree" ;
label define PP3_PPEDUCAT -2 "Not asked" -1 "refused" 1 "Less than high school"
                       2 "High school" 3 "Some college"
                       4 "Bachelor's degree or higher" ;
label define PP3_PPETHM -2 "Not asked" -1 "refused" 1 "White, Non-Hispanic"
                       2 "Black, Non-Hispanic" 3 "Other, Non-Hispanic"
                       4 "Hispanic" 5 "2+ Races, Non-Hispanic" ;
label define PP3_NEWER 0 "no, newer pp3 data is Not available"
                       1 "Yes, pp3 data is newer and available" ;
label define W2W3_COMBO_BREAKUP
                       0 "still together, or lost to follow-up, or partner deceased"
                       1 "broke up" ;
label define W3_BROKE_UP 0 "still together" 1 "broke up" 2 "partner deceased" ;
label define W3_XPARTNERED 0 "unqualified bc unpartnered at main survery"
                       1 "Qualified for follow-up at wave3"
                       2 "unqualified bc broke up at wave 2" ;
label define W3_XDECEASED 0 "not deceased" 1 "apparently deceased" ;
label define W3_MULTINAME 1 "reported multiple partner names in main survey" ;
label define W3_XSS    1 "yes" 2 "no" ;
label define W3_XLAST  1 "1 year ago" 2 "2 years ago" ;
label define W3_XQUALIFIED 0 "unqualified for wave 3" 1 "qualified for wave 3" ;
label define W3_STATUS 1 "active member of KN panel"
                       2 "subject withdrew from KN panel"
                       3 "subject retired from KN panel, KN decision"
                       4 "Do Not Contact- subject withdrew and asked not to be contacted" ;
label define W3_COMPLETE 0 "no" 1 "yes" ;
label define W3_SOURCE 1 "Online" 2 "Telephone" ;
label define W3_XMARRY 1 "Married" 2 "Partnered" ;
label define W3_XTYPE  1 "same sex couple" 2 "heterosexual couple" ;
label define W3_Q1     -1 "Refused" 1 "yes" 2 "no" ;
label define W3_Q2     -1 "Refused" 1 "yes" 2 "no" ;
label define W3_Q3     -1 "Refused" 1 "divorce"
                       2 "separation with no divorce"
                       3 "(xNameP) passed away, is deceased" ;
label define W3_Q4     -1 "Refused"
                       1 "I wanted the (divorce/separation) more."
                       2 "(xNameP) wanted the (divorce/separation) more."
                       3 "We both equally wanted the (divorce/separation)." ;
label define W3_MBTIMING_YEAR -1 "Please Select" 2 "2009" 3 "2010" 4 "2011" ;
label define W3_MBTIMING_MONTH 1 "January" 2 "February" 3 "March" 4 "April" 5 "May"
                       6 "June" 7 "July" 8 "August" 9 "September"
                       10 "October" 11 "November" 12 "December" ;
label define W3_Q5     -1 "Refused" 1 "yes" 2 "no" ;
label define W3_Q6     -1 "Refused" 1 "yes" 2 "no" ;
label define W3_Q7     -1 "Refused" 1 "yes, married (xNameP)"
                       2 "no, did not marry (xNameP)" ;
label define W3_Q8     -1 "Refused"
                       1 "No, we have not gotten a domestic partnership or civil union agreement"
                       2 "Yes, we have gotten a domestic partnership or civil union agreement" ;
label define W3_Q9     -1 "Refused" 1 "We broke up"
                       2 "(xNameP) passed away, is deceased"
                       3 "Other (please describe)" ;
label define W3_Q10    -1 "Refused" 1 "I wanted to break up more"
                       2 "(xNameP) wanted to break up more"
                       3 "We both equally wanted to break up" ;
label define W3_NONMBTIMING_MONTH 1 "January" 2 "February" 3 "March" 4 "April" 5 "May"
                       6 "June" 7 "July" 8 "August" 9 "September"
                       10 "October" 11 "November" 12 "December" ;
label define ZPNHWHITE_CAT 0 "<55%" 1 "55%-79.99%" 2 "80%-91.99%"
                       3 "92% and higher" ;
label define ZPNHBLACK_CAT 0 "<1%" 1 "1%-2.99%" 2 "3%-19.99%" 3 "20% or more" ;
label define ZPHISP_CAT 0 "<2%" 1 "2%-3.99%" 2 "4%-19.99%" 3 "20%+" ;
label define ZPMEDHHINC_CAT 0 "<$34K" 1 "$34000-$41999" 2 "$42000-$64999"
                       3 "$65K+" ;
label define ZPFORBORN_CAT 0 "<2%" 1 "2%-4.99%" 2 "5%-11.99%" 3 "12%+" ;
label define ZPRURAL_CAT 0 "non rural" 1 "rural" ;
label define Q15A1     -1 "refused" 1 "united states" 2 "cambodia" 3 "canada"
                       4 "china" 5 "colombia" 6 "cuba" 7 "dominican republic"
                       8 "ecuador" 9 "el salvador" 10 "former yugoslavia"
                       11 "france" 12 "germany" 13 "great britain"
                       14 "greece" 15 "guatemala" 16 "guyana" 17 "haiti"
                       18 "honduras" 19 "hungary" 20 "india" 21 "iran"
                       22 "ireland" 23 "italy" 24 "jamaica" 25 "japan"
                       26 "korea" 27 "laos" 28 "mexico" 29 "nicaragua"
                       30 "peru" 31 "philippines" 32 "poland" 33 "portugal"
                       34 "russia" 35 "taiwan" 36 "thailand"
                       37 "trinidad and tobago" 38 "vietnam"
                       39 "another country, please specify" ;
label define Q15A3_CODES -1 "refused" ;
label define W4_XQUALIFIED 0 "unqualified for wave 4" 1 "qualified for wave 4" ;
label define W4_STATUS 1 "Active" 2 "Withdrawn" 3 "Retired" 4 "Do not call" ;
label define W4_COMPLETE 0 "No" 1 "Yes" ;
label define W4_SOURCE 1 "On-line" 2 "Telephone" ;
label define W4_XTYPE  1 "same-sex couple" 2 "different sex couple" ;
label define W4_XMONTH 1 "January" 2 "February" 3 "March" 4 "April" 5 "May"
                       6 "June" 7 "July" 8 "August" 9 "September"
                       10 "October" 11 "November" 12 "December" ;
label define W4_XMARRY 1 "Married" 2 "Unmarried partners" ;
label define W4_XCIVIL 0 "No" 1 "Yes" ;
label define W4_XSS    1 "Yes" 2 "No" ;
label define W4_Q1     -1 "Refused" 1 "yes" 2 "no" ;
label define W4_Q2     -1 "Refused" 1 "yes" 2 "no" ;
label define W4_QUALITY -1 "Refused" 1 "Excellent" 2 "Good" 3 "Fair" 4 "Poor"
                       5 "Very Poor" ;
label define W4_ATTRACTIVE -1 "Refused" 1 "very attractive"
                       2 "moderately attractive" 3 "slightly attractive"
                       4 "not at all attractive" ;
label define W4_ATTRACTIVE_PARTNER -1 "Refused" 1 "very attractive"
                       2 "moderately attractive" 3 "slightly attractive"
                       4 "not at all attractive" ;
label define W4_Q3     -1 "Refused" 1 "divorce"
                       2 "separation with no divorce"
                       3 "(xnamep) passed away, is deceased" ;
label define W4_Q4     -1 "Refused"
                       1 "I wanted the (divorce/separation) more"
                       2 "(xname) wanted the (divorce/separation) more"
                       3 "We both equally wanted the (divorce/separation)" ;
label define W4_MBTIMING_MONTH 1 "January" 2 "February" 3 "March" 4 "April" 5 "May"
                       6 "June" 7 "July" 8 "August" 9 "September"
                       10 "October" 11 "November" 12 "December" ;
label define W4_Q5     0 "No" 1 "Yes" ;
label define W4_Q6     0 "No" 1 "Yes" ;
label define W4_Q7     -1 "Refused" 1 "Yes, married (xnamep)"
                       2 "No, did not marry (xnamep)" ;
label define W4_MAR_MONTH 1 "January" 2 "February" 3 "March" 4 "April" 5 "May"
                       6 "June" 7 "July" 8 "August" 9 "September"
                       10 "October" 11 "November" 12 "December" ;
label define W4_Q8_A   -1 "Refused"
                       1 "No, we have not gotten a domestic partnership or civil union agreement"
                       2 "Yes, we have gotten a domestic partnership or civil union agreement" ;
label define W4_Q8_B   -1 "Refused"
                       1 "No, we have not gotten a domestic partnership or civil union agreement"
                       2 "Yes, we have gotten a domestic partnership or civil union agreement" ;
label define W4_Q9     1 "We broke up" 2 "(xnamep) passed away, is deceased" ;
label define W4_Q10    -1 "Refused" 1 "I wanted to break up more"
                       2 "(xnamep) , wanted to break up more"
                       3 "We both equally wanted to break up" ;
label define W4_NONMBTIMING_MONTH 1 "January" 2 "February" 3 "March" 4 "April" 5 "May"
                       6 "June" 7 "July" 8 "August" 9 "September"
                       10 "October" 11 "November" 12 "December" ;
label define W4_BROKE_UP 0 "still together" 1 "broke up"
                       2 "partner passed away" ;
label define W234_COMBO_BREAKUP
                       0 "still together at w4, or some follow-up w/o break-up"
                       1 "broke up at wave 2, 3, or 4" ;
label define PP4_PPEDUC -2 "Not asked" -1 "refused" 1 "No formal education"
                       2 "1st, 2nd, 3rd, or 4th grade" 3 "5th or 6th grade"
                       4 "7th or 8th grade" 5 "9th grade" 6 "10th grade"
                       7 "11th grade" 8 "12th grade NO DIPLOMA"
                       9 "HIGH SCHOOL GRADUATE - high school DIPLOMA or the equivalent (GED)"
                       10 "Some college, no degree" 11 "Associate degree"
                       12 "Bachelors degree" 13 "Masters degree"
                       14 "Professional or Doctorate degree" ;
label define PP4_PPEDUCAT -2 "Not asked" -1 "refused" 1 "Less than high school"
                       2 "High school" 3 "Some college"
                       4 "Bachelor's degree or higher" ;
label define PP4_PPETHM -2 "Not asked" -1 "refused" 1 "White, Non-Hispanic"
                       2 "Black, Non-Hispanic" 3 "Other, Non-Hispanic"
                       4 "Hispanic" 5 "2+ Races, Non-Hispanic" ;
label define PP4_PPHHHEAD -2 "Not asked" -1 "refused" 0 "No" 1 "Yes" ;
label define PP4_PPHHSIZE -2 "Not asked" -1 "refused" ;
label define PP4_PPHOUSE -2 "Not asked" -1 "refused"
                       1 "A one-family house detached from any other house"
                       2 "A one-family house attached to one or more houses"
                       3 "A building with 2 or more apartments"
                       4 "A mobile home" 5 "Boat, RV, van, etc." ;
label define PP4_PPINCIMP -2 "Not asked" -1 "refused" 1 "Less than $5,000"
                       2 "$5,000 to $7,499" 3 "$7,500 to $9,999"
                       4 "$10,000 to $12,499" 5 "$12,500 to $14,999"
                       6 "$15,000 to $19,999" 7 "$20,000 to $24,999"
                       8 "$25,000 to $29,999" 9 "$30,000 to $34,999"
                       10 "$35,000 to $39,999" 11 "$40,000 to $49,999"
                       12 "$50,000 to $59,999" 13 "$60,000 to $74,999"
                       14 "$75,000 to $84,999" 15 "$85,000 to $99,999"
                       16 "$100,000 to $124,999" 17 "$125,000 to $149,999"
                       18 "$150,000 to $174,999" 19 "$175,000 or more" ;
label define PP4_PPMARIT -2 "Not asked" -1 "refused" 1 "Married" 2 "Widowed"
                       3 "Divorced" 4 "Separated" 5 "Never married"
                       6 "Living with partner" ;
label define PP4_PPMSACAT -2 "Not asked" -1 "refused" 0 "Non-Metro" 1 "Metro" ;
label define PP4_PPREG4 -2 "Not asked" -1 "refused" 1 "Northeast" 2 "Midwest"
                       3 "South" 4 "West" ;
label define PP4_PPREG9 1 "New England" 2 "Mid-Atlantic"
                       3 "East-North Central" 4 "West-North Central"
                       5 "South Atlantic" 6 "East-South Central"
                       7 "West-South Central" 8 "Mountain" 9 "Pacific" ;
label define PP4_PPRENT -2 "Not asked" -1 "refused"
                       1 "Owned or being bought by you or someone in your household"
                       2 "Rented for cash"
                       3 "Occupied without payment of cash rent" ;
label define PP4_PPT01 -2 "Not asked" -1 "refused" ;
label define PP4_PPT25 -2 "Not asked" -1 "refused" ;
label define PP4_PPT612 -2 "Not asked" -1 "refused" ;
label define PP4_PPT1317 -2 "Not asked" -1 "refused" ;
label define PP4_PPT18OV -2 "Not asked" -1 "refused" ;
label define PP4_PPWORK -2 "Not asked" -1 "refused"
                       1 "Working - as a paid employee"
                       2 "Working - self-employed"
                       3 "Not working - on temporary layoff from a job"
                       4 "Not working - looking for work"
                       5 "Not working - retired" 6 "Not working - disabled"
                       7 "Not working - other" ;
label define PP4_PPNET 0 "No" 1 "Yes" ;
label define PP4_NEWER 0 "No" 1 "Yes" ;
label define PPA2009_HOW_OFTEN_SERVICES -2 "Not asked" -1 "Refused" 1 "More than once a week"
                       2 "Once a week" 3 "Once or twice a month"
                       4 "A few times a year" 5 "Once a year or less"
                       6 "Never" ;
label define W5_SOURCE 1 "online" 2 "phone" ;
label define W5_COMPLETE 0 "eligible but not completed" 1 "wave 5 completed" ;
label define W5_STATUS 1 "Active" 2 "Withdrawn" 3 "Retired" 4 "Do not call" ;
label define W5X_QUALIFIED 0 "not qualified for wave 5" 1 "qualified for wave 5" ;
label define W5X_MARRY 1 "married" 2 "unmarried partners" ;
label define W5X_CIVIL 0 "no civil union or DP prior to wave 5"
                       1 "yes civil union or DP prior to wave 5" ;
label define W5X_MONTH 1 "January" 2 "February" 3 "March" 4 "April" 5 "May"
                       6 "June" 7 "July" 8 "August" 9 "September"
                       10 "October" 11 "November" 12 "December" ;
label define W5X_CIVMONTH 1 "January" 2 "February" 3 "March" 4 "April" 5 "May"
                       6 "June" 7 "July" 8 "August" 9 "September"
                       10 "October" 11 "November" 12 "December" ;
label define W5_Q1     -1 "Refused" 1 "yes" 2 "no" ;
label define W5_Q2     -1 "Refused" 1 "yes" 2 "no" ;
label define W5_SEX_FREQUENCY -1 "Refused" 1 "Once a day or more"
                       2 "3 to 6 times a week" 3 "Once or twice a week"
                       4 "2 to 3 times a month" 5 "Once a month or less" ;
label define W5_P_MONOGAMY -1 "Refused"
                       1 "Yes, I expect (name) will only have sex with me"
                       2 "No, I expect (name) to have sex with other people besides me" ;
label define W5_IDENTITY -1 "Refused" 1 "heterosexual or straight" 2 "gay"
                       3 "lesbian" 4 "bisexual" 5 "Something else" ;
label define W5_OUTNESS -1 "Refused" 1 "All or most of them" 2 "Some of them"
                       3 "Only a few of them" 4 "None of them" ;
label define W5_Q3     1 "Divorce" 2 "Separation with no divorce"
                       3 "(name) passed away, is deceased" ;
label define W5_Q4     1 "I wanted the divorce/separation more"
                       2 "(name) wanted the divorce/separation more"
                       3 "We both equally wanted the divorce/separation" ;
label define W5_MBTIMING_MONTH -1 "Refused" 1 "January" 2 "February" 3 "March"
                       4 "April" 5 "May" 6 "June" 7 "July" 8 "August"
                       9 "September" 10 "October" 11 "November" 12 "December" ;
label define W5_Q5     -1 "Refused" 1 "yes" 2 "no" ;
label define W5_Q6     -1 "Refused" 1 "yes" 2 "no" ;
label define W5_Q7     -1 "Refused" 1 "Yes, married (name)"
                       2 "No, did not marry (name)" ;
label define W5_MAR_MONTH -1 "Refused" 1 "January" 2 "February" 3 "March"
                       4 "April" 5 "May" 6 "June" 7 "July" 8 "August"
                       9 "September" 10 "October" 11 "November" 12 "December" ;
label define W5_Q8     -1 "Refused"
                       1 "No, we have not gotten a domestic partnership or civil union agreement"
                       2 "Yes, we have gotten a domestic partnership or civil union agreement" ;
label define W5_CIV_YEAR -1 "Refused" ;
label define W5_CIV_MONTH -1 "Refused" 1 "January" 2 "February" 3 "March"
                       4 "April" 5 "May" 6 "June" 7 "July" 8 "August"
                       9 "September" 10 "October" 11 "November" 12 "December" ;
label define W5_Q9     1 "We broke up" 2 "(name) passed away, is deceased" ;
label define W5_Q10    1 "I wanted to break up more"
                       2 "(name) wanted to break up more"
                       3 "We both equally wanted to break up" ;
label define W5_NONMBTIMING_MONTH -1 "Refused" 1 "January" 2 "February" 3 "March"
                       4 "April" 5 "May" 6 "June" 7 "July" 8 "August"
                       9 "September" 10 "October" 11 "November" 12 "December" ;
label define W5_BROKE_UP 0 "still together" 1 "broke up" 2 "partner deceased" ;
label define W2345_COMBO_BREAKUP 0 "still together at w5 or some follow-up w/o breakup"
                       1 "broke up at wave 2,3,4, or 5" ;
label define RESPONDED_TO_W234OR5 0 "No" 1 "Yes" ;
label define PP5_PPAGE -2 "Not asked" -1 "refused" ;
label define PP5_PPAGECAT 1 "18-24" 2 "25-34" 3 "35-44" 4 "45-54" 5 "55-64"
                       6 "65-74" 7 "75+" 99 "Under 18" ;
label define PP5_PPAGECT4 1 "18-29" 2 "30-44" 3 "45-59" 4 "60+" 99 "Under 18" ;
label define PP5_PPEDUC -2 "Not asked" -1 "refused" 1 "No formal education"
                       2 "1st, 2nd, 3rd, or 4th grade" 3 "5th or 6th grade"
                       4 "7th or 8th grade" 5 "9th grade" 6 "10th grade"
                       7 "11th grade" 8 "12th grade NO DIPLOMA"
                       9 "HIGH SCHOOL GRADUATE - high school DIPLOMA or the equivalent (GED)"
                       10 "Some college, no degree" 11 "Associate degree"
                       12 "Bachelors degree" 13 "Masters degree"
                       14 "Professional or Doctorate degree" ;
label define PP5_PPEDUCAT -2 "Not asked" -1 "refused" 1 "Less than high school"
                       2 "High school" 3 "Some college"
                       4 "Bachelor's degree or higher" ;
label define PP5_PPETHM -2 "Not asked" -1 "refused" 1 "White, Non-Hispanic"
                       2 "Black, Non-Hispanic" 3 "Other, Non-Hispanic"
                       4 "Hispanic" 5 "2+ Races, Non-Hispanic" ;
label define PP5_PPGENDER -2 "Not asked" -1 "refused" 1 "Male" 2 "Female" ;
label define PP5_PPHHHEAD 0 "No" 1 "Yes" ;
label define PP5_PPHHSIZE -2 "Not asked" -1 "refused" ;
label define PP5_PPHOUSE -2 "Not asked" -1 "refused"
                       1 "A one-family house detached from any other house"
                       2 "A one-family house attached to one or more houses"
                       3 "A building with 2 or more apartments"
                       4 "A mobile home" 5 "Boat, RV, van, etc." ;
label define PP5_PPINCIMP -2 "Not asked" -1 "refused" 1 "Less than $5,000"
                       2 "$5,000 to $7,499" 3 "$7,500 to $9,999"
                       4 "$10,000 to $12,499" 5 "$12,500 to $14,999"
                       6 "$15,000 to $19,999" 7 "$20,000 to $24,999"
                       8 "$25,000 to $29,999" 9 "$30,000 to $34,999"
                       10 "$35,000 to $39,999" 11 "$40,000 to $49,999"
                       12 "$50,000 to $59,999" 13 "$60,000 to $74,999"
                       14 "$75,000 to $84,999" 15 "$85,000 to $99,999"
                       16 "$100,000 to $124,999" 17 "$125,000 to $149,999"
                       18 "$150,000 to $174,999" 19 "$175,000 or more" ;
label define PP5_PPMARIT -2 "Not asked" -1 "refused" 1 "Married" 2 "Widowed"
                       3 "Divorced" 4 "Separated" 5 "Never married"
                       6 "Living with partner" ;
label define PP5_NEWER 0 "No" 1 "Yes" ;
label define PP5_PPMSACAT 0 "non-Metro" 1 "Metro" ;
label define PP5_PPREG4 -2 "Not asked" -1 "refused" 1 "Northeast" 2 "Midwest"
                       3 "South" 4 "West" ;
label define PP5_PPREG9 1 "New England" 2 "Mid-Atlantic"
                       3 "East-North Central" 4 "West-North Central"
                       5 "South Atlantic" 6 "East-South Central"
                       7 "West-South Central" 8 "Mountain" 9 "Pacific" ;
label define PP5_PPRENT
                       1 "Owned or being bought by you or someone in household"
                       2 "rented for cash" 3 "Occupied without payment" ;
label define PP5_PPT01 -2 "Not asked" -1 "refused" ;
label define PP5_PPT612 -2 "Not asked" -1 "refused" ;
label define PP5_PPT1317 -2 "Not asked" -1 "refused" ;
label define PP5_PPT18OV -2 "Not asked" -1 "refused" ;
label define PP5_PPWORK -2 "Not asked" -1 "refused"
                       1 "Working - as a paid employee"
                       2 "Working - self-employed"
                       3 "Not working - on temporary layoff from a job"
                       4 "Not working - looking for work"
                       5 "Not working - retired" 6 "Not working - disabled"
                       7 "Not working - other" ;
label define PP5_PPNET 0 "No" 1 "Yes" ;
label define PPMARIT_2014 -2 "Not asked" -1 "Refused" 1 "Married" 2 "Widowed"
                       3 "Divorced" 4 "Separated" 5 "Never married"
                       6 "Living with partner" ;
label define PPMARIT_2013 -2 "Not asked" -1 "Refused" 1 "Married" 2 "Widowed"
                       3 "Divorced" 4 "Separated" 5 "Never married"
                       6 "Living with partner" ;
label define PPMARIT_2012 -2 "Not asked" -1 "Refused" 1 "Married" 2 "Widowed"
                       3 "Divorced" 4 "Separated" 5 "Never married"
                       6 "Living with partner" ;
label define PPMARIT_2011 -2 "Not asked" -1 "Refused" 1 "Married" 2 "Widowed"
                       3 "Divorced" 4 "Separated" 5 "Never married"
                       6 "Living with partner" ;
label define PPMARIT_2010 -2 "Not asked" -1 "Refused" 1 "Married" 2 "Widowed"
                       3 "Divorced" 4 "Separated" 5 "Never married"
                       6 "Living with partner" ;
label define PPMARIT_2009 -2 "Not asked" -1 "Refused" 1 "Married" 2 "Widowed"
                       3 "Divorced" 4 "Separated" 5 "Never married"
                       6 "Living with partner" ;
label define PPMARIT_2007 -2 "Not asked" -1 "Refused" 1 "Married" 2 "Widowed"
                       3 "Divorced" 4 "Separated" 5 "Never married"
                       6 "Living with partner" ;


#delimit cr


/***************************************************************************

 Section 5: Missing Values

 This section will replace numeric missing values (i.e., -9) with generic
 system missing ".".  By default the code in this section is commented out.
 Users wishing to apply the generic missing values should remove the comment
 at the beginning and end of this section.  Note that Stata allows you to
 specify up to 27 unique missing value codes.

****************************************************************/

/*
replace PPAGE = . if (PPAGE == -1 | PPAGE == -2)
replace PPEDUC = . if (PPEDUC == -1 | PPEDUC == -2)
replace PPEDUCAT = . if (PPEDUCAT == -1 | PPEDUCAT == -2)
replace PPETHM = . if (PPETHM == -1 | PPETHM == -2)
replace PPGENDER = . if (PPGENDER == -1 | PPGENDER == -2)
replace PPHHHEAD = . if (PPHHHEAD == -1 | PPHHHEAD == -2)
replace PPHOUSE = . if (PPHOUSE == -1 | PPHOUSE == -2)
replace PPINCIMP = . if (PPINCIMP == -1 | PPINCIMP == -2)
replace PPMARIT = . if (PPMARIT == -1 | PPMARIT == -2)
replace PPMSACAT = . if (PPMSACAT == -1 | PPMSACAT == -2)
replace PPREG4 = . if (PPREG4 == -1 | PPREG4 == -2)
replace PPRENT = . if (PPRENT == -1 | PPRENT == -2)
replace PPT01 = . if (PPT01 == -1 | PPT01 == -2)
replace PPT1317 = . if (PPT1317 == -1 | PPT1317 == -2)
replace PPT18OV = . if (PPT18OV == -1 | PPT18OV == -2)
replace PPT25 = . if (PPT25 == -1 | PPT25 == -2)
replace PPT612 = . if (PPT612 == -1 | PPT612 == -2)
replace PPWORK = . if (PPWORK == -1 | PPWORK == -2)
replace PPQ14ARACE = . if (PPQ14ARACE == -1 | PPQ14ARACE == -2)
replace PPHISPAN = . if (PPHISPAN == -1 | PPHISPAN == -2)
replace PPRACE_WHITE = . if (PPRACE_WHITE == -1 | PPRACE_WHITE == -2)
replace PPRACE_BLACK = . if (PPRACE_BLACK == -1 | PPRACE_BLACK == -2)
replace PPRACE_NATIVEAMERICAN = . if (PPRACE_NATIVEAMERICAN == -1 | PPRACE_NATIVEAMERICAN == -2)
replace PPRACE_ASIANINDIAN = . if (PPRACE_ASIANINDIAN == -1 | PPRACE_ASIANINDIAN == -2)
replace PPRACE_CHINESE = . if (PPRACE_CHINESE == -1 | PPRACE_CHINESE == -2)
replace PPRACE_FILIPINO = . if (PPRACE_FILIPINO == -1 | PPRACE_FILIPINO == -2)
replace PPRACE_JAPANESE = . if (PPRACE_JAPANESE == -1 | PPRACE_JAPANESE == -2)
replace PPRACE_KOREAN = . if (PPRACE_KOREAN == -1 | PPRACE_KOREAN == -2)
replace PPRACE_VIETNAMESE = . if (PPRACE_VIETNAMESE == -1 | PPRACE_VIETNAMESE == -2)
replace PPRACE_OTHERASIAN = . if (PPRACE_OTHERASIAN == -1 | PPRACE_OTHERASIAN == -2)
replace PPRACE_HAWAIIAN = . if (PPRACE_HAWAIIAN == -1 | PPRACE_HAWAIIAN == -2)
replace PPRACE_GUAMANIAN = . if (PPRACE_GUAMANIAN == -1 | PPRACE_GUAMANIAN == -2)
replace PPRACE_SAMOAN = . if (PPRACE_SAMOAN == -1 | PPRACE_SAMOAN == -2)
replace PPRACE_OTHERPACIFICISLANDER = . if (PPRACE_OTHERPACIFICISLANDER == -1 | PPRACE_OTHERPACIFICISLANDER == -2)
replace PPRACE_SOMEOTHERRACE = . if (PPRACE_SOMEOTHERRACE == -1 | PPRACE_SOMEOTHERRACE == -2)
replace PAPGLB_FRIEND = . if (PAPGLB_FRIEND == -1 | PAPGLB_FRIEND == -2)
replace PPPARTYID3 = . if (PPPARTYID3 == -1 | PPPARTYID3 == -2)
replace PAPEVANGELICAL = . if (PAPEVANGELICAL == -1 | PAPEVANGELICAL == -2)
replace PAPRELIGION = . if (PAPRELIGION == -1 | PAPRELIGION == -2)
replace PPHHCOMP11_MEMBER2_GENDER = . if (PPHHCOMP11_MEMBER2_GENDER == -1)
replace PPHHCOMP11_MEMBER3_GENDER = . if (PPHHCOMP11_MEMBER3_GENDER == -1)
replace PPHHCOMP11_MEMBER4_GENDER = . if (PPHHCOMP11_MEMBER4_GENDER == -1)
replace PPHHCOMP11_MEMBER5_GENDER = . if (PPHHCOMP11_MEMBER5_GENDER == -1)
replace PPHHCOMP11_MEMBER6_GENDER = . if (PPHHCOMP11_MEMBER6_GENDER == -1)
replace PPHHCOMP11_MEMBER7_GENDER = . if (PPHHCOMP11_MEMBER7_GENDER == -1)
replace PPHHCOMP11_MEMBER8_GENDER = . if (PPHHCOMP11_MEMBER8_GENDER == -1)
replace PPHHCOMP11_MEMBER9_GENDER = . if (PPHHCOMP11_MEMBER9_GENDER == -1)
replace PPHHCOMP11_MEMBER10_GENDER = . if (PPHHCOMP11_MEMBER10_GENDER == -1)
replace PPHHCOMP11_MEMBER11_GENDER = . if (PPHHCOMP11_MEMBER11_GENDER == -1)
replace PPHHCOMP11_MEMBER12_GENDER = . if (PPHHCOMP11_MEMBER12_GENDER == -1)
replace PPHHCOMP11_MEMBER13_GENDER = . if (PPHHCOMP11_MEMBER13_GENDER == -1)
replace PPHHCOMP11_MEMBER14_GENDER = . if (PPHHCOMP11_MEMBER14_GENDER == -1)
replace PPHHCOMP11_MEMBER15_GENDER = . if (PPHHCOMP11_MEMBER15_GENDER == -1)
replace PPHHCOMP11_MEMBER2_RELATIONSHIP = . if (PPHHCOMP11_MEMBER2_RELATIONSHIP == -1)
replace PPHHCOMP11_MEMBER3_RELATIONSHIP = . if (PPHHCOMP11_MEMBER3_RELATIONSHIP == -1)
replace PPHHCOMP11_MEMBER4_RELATIONSHIP = . if (PPHHCOMP11_MEMBER4_RELATIONSHIP == -1)
replace PPHHCOMP11_MEMBER5_RELATIONSHIP = . if (PPHHCOMP11_MEMBER5_RELATIONSHIP == -1)
replace PPHHCOMP11_MEMBER6_RELATIONSHIP = . if (PPHHCOMP11_MEMBER6_RELATIONSHIP == -1)
replace PPHHCOMP11_MEMBER7_RELATIONSHIP = . if (PPHHCOMP11_MEMBER7_RELATIONSHIP == -1)
replace PPHHCOMP11_MEMBER8_RELATIONSHIP = . if (PPHHCOMP11_MEMBER8_RELATIONSHIP == -1)
replace PPHHCOMP11_MEMBER9_RELATIONSHIP = . if (PPHHCOMP11_MEMBER9_RELATIONSHIP == -1)
replace PPHHCOMP11_MEMBER10_RELATIONSHIP = . if (PPHHCOMP11_MEMBER10_RELATIONSHIP == -1)
replace PPHHCOMP11_MEMBER11_RELATIONSHIP = . if (PPHHCOMP11_MEMBER11_RELATIONSHIP == -1)
replace PPHHCOMP11_MEMBER12_RELATIONSHIP = . if (PPHHCOMP11_MEMBER12_RELATIONSHIP == -1)
replace PPHHCOMP11_MEMBER13_RELATIONSHIP = . if (PPHHCOMP11_MEMBER13_RELATIONSHIP == -1)
replace PPHHCOMP11_MEMBER14_RELATIONSHIP = . if (PPHHCOMP11_MEMBER14_RELATIONSHIP == -1)
replace PPHHCOMP11_MEMBER15_RELATIONSHIP = . if (PPHHCOMP11_MEMBER15_RELATIONSHIP == -1)
replace IRB_CONSENT = . if (IRB_CONSENT == -1)
replace PAPGLB_STATUS = . if (PAPGLB_STATUS == -1 | PAPGLB_STATUS == -2)
replace S1 = . if (S1 == -1)
replace S1A = . if (S1A == -1)
replace S2 = . if (S2 == -1)
replace Q3_CODES = . if (Q3_CODES == -1)
replace Q4 = . if (Q4 == -1)
replace Q5 = . if (Q5 == -1)
replace Q6A = . if (Q6A == -1)
replace Q6B = . if (Q6B == -1)
replace Q7A = . if (Q7A == -1)
replace Q7B = . if (Q7B == -1)
replace Q8A = . if (Q8A == -1)
replace Q8B = . if (Q8B == -1)
replace Q10 = . if (Q10 == -1)
replace Q11 = . if (Q11 == -1)
replace Q12 = . if (Q12 == -1)
replace Q13A = . if (Q13A == -1)
replace Q13B = . if (Q13B == -1)
replace Q14 = . if (Q14 == -1)
replace Q15A1_COMPRESSED = . if (Q15A1_COMPRESSED == -1)
replace Q16 = . if (Q16 == -1)
replace Q17A = . if (Q17A == -1)
replace Q17B = . if (Q17B == -1)
replace Q17C = . if (Q17C == -1)
replace Q17D = . if (Q17D == -1)
replace Q18A_1 = . if (Q18A_1 == -1)
replace Q18A_2 = . if (Q18A_2 == -1)
replace Q18A_3 = . if (Q18A_3 == -1)
replace Q18B_CODES = . if (Q18B_CODES == -1)
replace Q18C_CODES = . if (Q18C_CODES == -1)
replace Q19 = . if (Q19 == -1)
replace Q20 = . if (Q20 == -1)
replace Q22 = . if (Q22 == -1)
replace Q23 = . if (Q23 == -1)
replace Q24_CODES = . if (Q24_CODES == -1)
replace Q25 = . if (Q25 == -1)
replace Q26 = . if (Q26 == -1)
replace Q27 = . if (Q27 == -1)
replace Q28 = . if (Q28 == -1)
replace Q29 = . if (Q29 == -1)
replace Q30 = . if (Q30 == -1)
replace Q31_1 = . if (Q31_1 == -1)
replace Q31_2 = . if (Q31_2 == -1)
replace Q31_3 = . if (Q31_3 == -1)
replace Q31_4 = . if (Q31_4 == -1)
replace Q31_5 = . if (Q31_5 == -1)
replace Q31_6 = . if (Q31_6 == -1)
replace Q31_7 = . if (Q31_7 == -1)
replace Q31_8 = . if (Q31_8 == -1)
replace Q31_9 = . if (Q31_9 == -1)
replace Q32 = . if (Q32 == -1)
replace Q33_1 = . if (Q33_1 == -1)
replace Q33_2 = . if (Q33_2 == -1)
replace Q33_3 = . if (Q33_3 == -1)
replace Q33_4 = . if (Q33_4 == -1)
replace Q33_5 = . if (Q33_5 == -1)
replace Q33_6 = . if (Q33_6 == -1)
replace Q33_7 = . if (Q33_7 == -1)
replace Q34 = . if (Q34 == -1)
replace Q35_CODES = . if (Q35_CODES == -1)
replace PARTNER_RELIGION_RECLASSIFIED = . if (PARTNER_RELIGION_RECLASSIFIED == -1)
replace PARTNER_RELIGION_CHILD_RECLASS = . if (PARTNER_RELIGION_CHILD_RECLASS == -1)
replace OWN_RELIGION_CHILD_RECLASS = . if (OWN_RELIGION_CHILD_RECLASS == -1)
replace EITHER_INTERNET_ADJUSTED = . if (EITHER_INTERNET_ADJUSTED == -1)
replace POTENTIAL_PARTNER_GENDER_RECODES = . if (POTENTIAL_PARTNER_GENDER_RECODES == -1)
replace ALT_PARTNER_GENDER = . if (ALT_PARTNER_GENDER == -1)
replace RESPONDENT_RELIGION_AT_16 = . if (RESPONDENT_RELIGION_AT_16 == -1)
replace PARTNER_RELIGION_AT_16 = . if (PARTNER_RELIGION_AT_16 == -1)
replace HOME_COUNTRY_RECODE = . if (HOME_COUNTRY_RECODE == -1)
replace PP2_PPHHHEAD = . if (PP2_PPHHHEAD == -1 | PP2_PPHHHEAD == -2)
replace PP2_PPHHSIZE = . if (PP2_PPHHSIZE == -1 | PP2_PPHHSIZE == -2)
replace PP2_PPHOUSE = . if (PP2_PPHOUSE == -1 | PP2_PPHOUSE == -2)
replace PP2_PPINCIMP = . if (PP2_PPINCIMP == -1 | PP2_PPINCIMP == -2)
replace PP2_PPMARIT = . if (PP2_PPMARIT == -1 | PP2_PPMARIT == -2)
replace PP2_PPMSACAT = . if (PP2_PPMSACAT == -1 | PP2_PPMSACAT == -2)
replace PP2_PPEDUC = . if (PP2_PPEDUC == -1 | PP2_PPEDUC == -2)
replace PP2_PPEDUCAT = . if (PP2_PPEDUCAT == -1 | PP2_PPEDUCAT == -2)
replace PP2_PPETHM = . if (PP2_PPETHM == -1 | PP2_PPETHM == -2)
replace PP2_PPREG4 = . if (PP2_PPREG4 == -1 | PP2_PPREG4 == -2)
replace PP2_PPRENT = . if (PP2_PPRENT == -1 | PP2_PPRENT == -2)
replace PP2_PPT01 = . if (PP2_PPT01 == -1 | PP2_PPT01 == -2)
replace PP2_PPT1317 = . if (PP2_PPT1317 == -1 | PP2_PPT1317 == -2)
replace PP2_PPT18OV = . if (PP2_PPT18OV == -1 | PP2_PPT18OV == -2)
replace PP2_PPT25 = . if (PP2_PPT25 == -1 | PP2_PPT25 == -2)
replace PP2_PPT612 = . if (PP2_PPT612 == -1 | PP2_PPT612 == -2)
replace PP2_PPWORK = . if (PP2_PPWORK == -1 | PP2_PPWORK == -2)
replace W2_Q1 = . if (W2_Q1 == -1)
replace W2_Q2 = . if (W2_Q2 == -1)
replace W2_Q3 = . if (W2_Q3 == -1)
replace W2_Q4 = . if (W2_Q4 == -1)
replace W2_Q5 = . if (W2_Q5 == -1)
replace W2_Q6 = . if (W2_Q6 == -1)
replace W2_Q7 = . if (W2_Q7 == -1)
replace W2_Q8 = . if (W2_Q8 == -1)
replace W2_Q9 = . if (W2_Q9 == -1)
replace W2_Q10 = . if (W2_Q10 == -1)
replace PP3_PPHHHEAD = . if (PP3_PPHHHEAD == -1 | PP3_PPHHHEAD == -2)
replace PP3_PPHHSIZE = . if (PP3_PPHHSIZE == -1 | PP3_PPHHSIZE == -2)
replace PP3_PPHOUSE = . if (PP3_PPHOUSE == -1 | PP3_PPHOUSE == -2)
replace PP3_PPINCIMP = . if (PP3_PPINCIMP == -1 | PP3_PPINCIMP == -2)
replace PP3_PPMARIT = . if (PP3_PPMARIT == -1 | PP3_PPMARIT == -2)
replace PP3_PPMSACAT = . if (PP3_PPMSACAT == -1 | PP3_PPMSACAT == -2)
replace PP3_PPRENT = . if (PP3_PPRENT == -1 | PP3_PPRENT == -2)
replace PP3_PPREG4 = . if (PP3_PPREG4 == -1 | PP3_PPREG4 == -2)
replace PP3_PPT01 = . if (PP3_PPT01 == -1 | PP3_PPT01 == -2)
replace PP3_PPT1317 = . if (PP3_PPT1317 == -1 | PP3_PPT1317 == -2)
replace PP3_PPT18OV = . if (PP3_PPT18OV == -1 | PP3_PPT18OV == -2)
replace PP3_PPT25 = . if (PP3_PPT25 == -1 | PP3_PPT25 == -2)
replace PP3_PPT612 = . if (PP3_PPT612 == -1 | PP3_PPT612 == -2)
replace PP3_PPWORK = . if (PP3_PPWORK == -1 | PP3_PPWORK == -2)
replace PP3_PPEDUC = . if (PP3_PPEDUC == -1 | PP3_PPEDUC == -2)
replace PP3_PPEDUCAT = . if (PP3_PPEDUCAT == -1 | PP3_PPEDUCAT == -2)
replace PP3_PPETHM = . if (PP3_PPETHM == -1 | PP3_PPETHM == -2)
replace W3_Q1 = . if (W3_Q1 == -1)
replace W3_Q2 = . if (W3_Q2 == -1)
replace W3_Q3 = . if (W3_Q3 == -1)
replace W3_Q4 = . if (W3_Q4 == -1)
replace W3_MBTIMING_YEAR = . if (W3_MBTIMING_YEAR == -1)
replace W3_Q5 = . if (W3_Q5 == -1)
replace W3_Q6 = . if (W3_Q6 == -1)
replace W3_Q7 = . if (W3_Q7 == -1)
replace W3_Q8 = . if (W3_Q8 == -1)
replace W3_Q9 = . if (W3_Q9 == -1)
replace W3_Q10 = . if (W3_Q10 == -1)
replace W3_NONMBTIMING_YEAR = . if (W3_NONMBTIMING_YEAR == -1)
replace Q15A1 = . if (Q15A1 == -1)
replace W4_Q1 = . if (W4_Q1 == -1)
replace W4_Q2 = . if (W4_Q2 == -1)
replace W4_QUALITY = . if (W4_QUALITY == -1)
replace W4_ATTRACTIVE = . if (W4_ATTRACTIVE == -1)
replace W4_ATTRACTIVE_PARTNER = . if (W4_ATTRACTIVE_PARTNER == -1)
replace W4_Q3 = . if (W4_Q3 == -1)
replace W4_Q4 = . if (W4_Q4 == -1)
replace W4_Q7 = . if (W4_Q7 == -1)
replace W4_Q8_A = . if (W4_Q8_A == -1)
replace W4_Q8_B = . if (W4_Q8_B == -1)
replace W4_Q9 = . if (W4_Q9 == -1)
replace W4_Q10 = . if (W4_Q10 == -1)
replace PP4_PPEDUC = . if (PP4_PPEDUC == -1 | PP4_PPEDUC == -2)
replace PP4_PPEDUCAT = . if (PP4_PPEDUCAT == -1 | PP4_PPEDUCAT == -2)
replace PP4_PPETHM = . if (PP4_PPETHM == -1 | PP4_PPETHM == -2)
replace PP4_PPHHHEAD = . if (PP4_PPHHHEAD == -1 | PP4_PPHHHEAD == -2)
replace PP4_PPHHSIZE = . if (PP4_PPHHSIZE == -1 | PP4_PPHHSIZE == -2)
replace PP4_PPHOUSE = . if (PP4_PPHOUSE == -1 | PP4_PPHOUSE == -2)
replace PP4_PPINCIMP = . if (PP4_PPINCIMP == -1 | PP4_PPINCIMP == -2)
replace PP4_PPMARIT = . if (PP4_PPMARIT == -1 | PP4_PPMARIT == -2)
replace PP4_PPMSACAT = . if (PP4_PPMSACAT == -1 | PP4_PPMSACAT == -2)
replace PP4_PPREG4 = . if (PP4_PPREG4 == -1 | PP4_PPREG4 == -2)
replace PP4_PPRENT = . if (PP4_PPRENT == -1 | PP4_PPRENT == -2)
replace PP4_PPT01 = . if (PP4_PPT01 == -1 | PP4_PPT01 == -2)
replace PP4_PPT25 = . if (PP4_PPT25 == -1 | PP4_PPT25 == -2)
replace PP4_PPT612 = . if (PP4_PPT612 == -1 | PP4_PPT612 == -2)
replace PP4_PPT1317 = . if (PP4_PPT1317 == -1 | PP4_PPT1317 == -2)
replace PP4_PPT18OV = . if (PP4_PPT18OV == -1 | PP4_PPT18OV == -2)
replace PP4_PPWORK = . if (PP4_PPWORK == -1 | PP4_PPWORK == -2)
replace PPA2009_HOW_OFTEN_SERVICES = . if (PPA2009_HOW_OFTEN_SERVICES == -1 | PPA2009_HOW_OFTEN_SERVICES == -2)
replace W5_Q1 = . if (W5_Q1 == -1)
replace W5_Q2 = . if (W5_Q2 == -1)
replace W5_SEX_FREQUENCY = . if (W5_SEX_FREQUENCY == -1)
replace W5_P_MONOGAMY = . if (W5_P_MONOGAMY == -1)
replace W5_IDENTITY = . if (W5_IDENTITY == -1)
replace W5_OUTNESS = . if (W5_OUTNESS == -1)
replace W5_Q3 = . if (W5_Q3 == -1)
replace W5_Q4 = . if (W5_Q4 == -1)
replace W5_MBTIMING_MONTH = . if (W5_MBTIMING_MONTH == -1)
replace W5_Q5 = . if (W5_Q5 == -1)
replace W5_Q6 = . if (W5_Q6 == -1)
replace W5_Q7 = . if (W5_Q7 == -1)
replace W5_MAR_MONTH = . if (W5_MAR_MONTH == -1)
replace W5_Q8 = . if (W5_Q8 == -1)
replace W5_CIV_YEAR = . if (W5_CIV_YEAR == -1)
replace W5_CIV_MONTH = . if (W5_CIV_MONTH == -1)
replace W5_Q9 = . if (W5_Q9 == -1)
replace W5_Q10 = . if (W5_Q10 == -1)
replace W5_NONMBTIMING_MONTH = . if (W5_NONMBTIMING_MONTH == -1)
replace PP5_PPAGE = . if (PP5_PPAGE == -2 | PP5_PPAGE == -1)
replace PP5_PPEDUC = . if (PP5_PPEDUC == -2 | PP5_PPEDUC == -1)
replace PP5_PPEDUCAT = . if (PP5_PPEDUCAT == -2 | PP5_PPEDUCAT == -1)
replace PP5_PPETHM = . if (PP5_PPETHM == -2 | PP5_PPETHM == -1)
replace PP5_PPGENDER = . if (PP5_PPGENDER == -2 | PP5_PPGENDER == -1)
replace PP5_PPHHSIZE = . if (PP5_PPHHSIZE == -2 | PP5_PPHHSIZE == -1)
replace PP5_PPHOUSE = . if (PP5_PPHOUSE == -2 | PP5_PPHOUSE == -1)
replace PP5_PPINCIMP = . if (PP5_PPINCIMP == -2 | PP5_PPINCIMP == -1)
replace PP5_PPMARIT = . if (PP5_PPMARIT == -2 | PP5_PPMARIT == -1)
replace PP5_PPREG4 = . if (PP5_PPREG4 == -2 | PP5_PPREG4 == -1)
replace PP5_PPT01 = . if (PP5_PPT01 == -2 | PP5_PPT01 == -1)
replace PP5_PPT612 = . if (PP5_PPT612 == -2 | PP5_PPT612 == -1)
replace PP5_PPT1317 = . if (PP5_PPT1317 == -2 | PP5_PPT1317 == -1)
replace PP5_PPT18OV = . if (PP5_PPT18OV == -2 | PP5_PPT18OV == -1)
replace PP5_PPWORK = . if (PP5_PPWORK == -2 | PP5_PPWORK == -1)
replace PPMARIT_2014 = . if (PPMARIT_2014 == -2 | PPMARIT_2014 == -1)
replace PPMARIT_2013 = . if (PPMARIT_2013 == -2 | PPMARIT_2013 == -1)
replace PPMARIT_2012 = . if (PPMARIT_2012 == -2 | PPMARIT_2012 == -1)
replace PPMARIT_2011 = . if (PPMARIT_2011 == -2 | PPMARIT_2011 == -1)
replace PPMARIT_2010 = . if (PPMARIT_2010 == -2 | PPMARIT_2010 == -1)
replace PPMARIT_2009 = . if (PPMARIT_2009 == -2 | PPMARIT_2009 == -1)
replace PPMARIT_2007 = . if (PPMARIT_2007 == -2 | PPMARIT_2007 == -1)


*/
/********************************************************************

 Section 6: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

