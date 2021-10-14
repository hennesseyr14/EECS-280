*-------------------------------------------------------------------------*
*                                                                          
*                     SPSS SETUP FILE FOR ICPSR 30103
*         HOW COUPLES MEET AND STAY TOGETHER (HCMST), WAVE 1 2009,
*           WAVE 2 2010, WAVE 3 2011, WAVE 4 2013, WAVE 5 2015,
*                              UNITED STATES
*                     (DATASET 0001: PUBLIC USE DATA)
* 
*
*  SPSS setup sections are provided for the ASCII version of this data
*  collection.  These sections are listed below:
*
*  DATA LIST:  assigns the name, type, decimal specification (if any),
*  and specifies the beginning and ending column locations for each
*  variable in the data file. Users must replace the "data-filename"
*  in the DATA LIST statement with a filename specifying the directory
*  on the user's computer system in which the downloaded and unzipped
*  data file is physically located (e.g., "c:\temp\30103-0001-data.txt").
*
*  VARIABLE LABELS:  assigns descriptive labels to all variables.
*  Labels and variable names may be identical for some data files.
*
*  MISSING VALUES: declares user-defined missing values. Not all
*  variables in this data set necessarily have user-defined missing
*  values. These values can be treated specially in data transformations,
*  statistical calculations, and case selection.
*
*  VALUE LABELS: assigns descriptive labels to codes found in the data
*  file.  Not all codes necessarily have assigned value labels.
*
*  VARIABLE LEVEL: assigns measurement level to each variable (scale,
*  nominal, or ordinal).
*
*  NOTE:  Users should modify this setup file to suit their specific
*  needs. The MISSING VALUES section has been commented out (i.e., '*').
*  To include the MISSING VALUES section in the final SPSS setup, remove
*  the comment indicators from the desired section.
*
*  CREATING A PERMANENT SPSS DATA FILE: If users wish to create and save
*  an SPSS data file for further analysis using SPSS for Windows, the
*  necessary "SAVE OUTFILE" command is provided in the last line of
*  this file.  To activate the command, users must delete the leading
*  asterisk (*) and replace "spss-filename" with a filename specifying
*  the location on the user's computer system to which the new data file
*  will be saved (e.g., SAVE OUTFILE="c:\spsswin\data\da30103-0001.sav").
*
*-------------------------------------------------------------------------.

* SPSS FILE HANDLE AND DATA LIST COMMANDS.

FILE HANDLE DATA / NAME="data-filename" LRECL=1284.
DATA LIST FILE=DATA /
          CASEID_NEW 1-7            WEIGHT1 8-13
           WEIGHT2 14-19             PPAGE 20-21          PPAGECAT 22-23
          PPAGECT4 24-25            PPEDUC 26-27          PPEDUCAT 28-29
            PPETHM 30-31          PPGENDER 32-33          PPHHHEAD 34-35
   PPHOUSEHOLDSIZE 36-37           PPHOUSE 38-39          PPINCIMP 40-41
             HHINC 42-47           PPMARIT 48-49          PPMSACAT 50-51
            PPREG4 52-53               PPREG9 54            PPRENT 55-56
             PPT01 57-58           PPT1317 59-60           PPT18OV 61-62
             PPT25 63-64            PPT612 65-66       CHILDREN_IN_HH 67
            PPWORK 68-69                PPNET 70        PPQ14ARACE 71-72
          PPHISPAN 73-74      PPRACE_WHITE 75-76      PPRACE_BLACK 77-78
 PPRACE_NATIVEAMERICAN 79-80 PPRACE_ASIANINDIAN 81-82    PPRACE_CHINESE 83-84
   PPRACE_FILIPINO 85-86   PPRACE_JAPANESE 87-88     PPRACE_KOREAN 89-90
 PPRACE_VIETNAMESE 91-92 PPRACE_OTHERASIAN 93-94   PPRACE_HAWAIIAN 95-96
  PPRACE_GUAMANIAN 97-98    PPRACE_SAMOAN 99-100 PPRACE_OTHERPACIFICISLANDER 101-102
 PPRACE_SOMEOTHERRACE 103-104   PAPGLB_FRIEND 105-106      PPPARTYID3 107-108
  PAPEVANGELICAL 109-110     PAPRELIGION 111-112 PPPPCMDATE_YRMO 113-118
   PPPADATE_YRMO 119-124 PPHHCOMP11_MEMBER2_AGE 125-126 PPHHCOMP11_MEMBER3_AGE 127-128
 PPHHCOMP11_MEMBER4_AGE 129-130 PPHHCOMP11_MEMBER5_AGE 131-133 PPHHCOMP11_MEMBER6_AGE 134-135
 PPHHCOMP11_MEMBER7_AGE 136-137 PPHHCOMP11_MEMBER8_AGE 138-139 PPHHCOMP11_MEMBER9_AGE 140-141
 PPHHCOMP11_MEMBER10_AGE 142-143 PPHHCOMP11_MEMBER11_AGE 144-145 PPHHCOMP11_MEMBER12_AGE 146
 PPHHCOMP11_MEMBER13_AGE 147 PPHHCOMP11_MEMBER14_AGE 148 PPHHCOMP11_MEMBER15_AGE 149
 PPHHCOMP11_MEMBER2_GENDER 150-151 PPHHCOMP11_MEMBER3_GENDER 152-153 PPHHCOMP11_MEMBER4_GENDER 154-155
 PPHHCOMP11_MEMBER5_GENDER 156-157 PPHHCOMP11_MEMBER6_GENDER 158-159 PPHHCOMP11_MEMBER7_GENDER 160-161
 PPHHCOMP11_MEMBER8_GENDER 162-163 PPHHCOMP11_MEMBER9_GENDER 164-165 PPHHCOMP11_MEMBER10_GENDER 166-167
 PPHHCOMP11_MEMBER11_GENDER 168-169 PPHHCOMP11_MEMBER12_GENDER 170-171 PPHHCOMP11_MEMBER13_GENDER 172-173
 PPHHCOMP11_MEMBER14_GENDER 174-175 PPHHCOMP11_MEMBER15_GENDER 176-177 PPHHCOMP11_MEMBER2_RELATIONSHIP 178-179
 PPHHCOMP11_MEMBER3_RELATIONSHIP 180-181 PPHHCOMP11_MEMBER4_RELATIONSHIP 182-183 PPHHCOMP11_MEMBER5_RELATIONSHIP 184-185
 PPHHCOMP11_MEMBER6_RELATIONSHIP 186-187 PPHHCOMP11_MEMBER7_RELATIONSHIP 188-189 PPHHCOMP11_MEMBER8_RELATIONSHIP 190-191
 PPHHCOMP11_MEMBER9_RELATIONSHIP 192-193 PPHHCOMP11_MEMBER10_RELATIONSHIP 194-195 PPHHCOMP11_MEMBER11_RELATIONSHIP 196-197
 PPHHCOMP11_MEMBER12_RELATIONSHIP 198-199 PPHHCOMP11_MEMBER13_RELATIONSHIP 200-201 PPHHCOMP11_MEMBER14_RELATIONSHIP 202-203
 PPHHCOMP11_MEMBER15_RELATIONSHIP 204-205     IRB_CONSENT 206-207         WEIGHT3 208-213
         WEIGHT4 214-219         WEIGHT5 220-225         WEIGHT6 226-231
         WEIGHT7 232-237 WEIGHT_COUPLES_CORESIDENT 238-252 (8) HCMST_MAIN_INTERVIEW_YRMO 253-258
        DURATION 259-263               QFLAG 264           GLBSTATUS 265
   PAPGLB_STATUS 266-267           RECSOURCE 268              S1 269-270
             S1A 271-272              S2 273-274        Q3_CODES 275-276
              Q4 277-278              Q5 279-280             Q6A 281-282
             Q6B 283-284             Q7A 285-286             Q7B 287-288
             Q8A 289-290             Q8B 291-292              Q9 293-294
             Q10 295-296             Q11 297-298             Q12 299-300
            Q13A 301-302            Q13B 303-304             Q14 305-306
 Q15A1_COMPRESSED 307-308             Q16 309-310            Q17A 311-312
            Q17B 313-314            Q17C 315-316            Q17D 317-318
   GENDER_ATTRACTION 319          Q18A_1 320-321          Q18A_2 322-323
          Q18A_3 324-325        Q18A_REFUSED 326      Q18B_CODES 327-328
      Q18C_CODES 329-330             Q19 331-332             Q20 333-334
            Q21A 335-336        Q21A_REFUSAL 337            Q21B 338-339
        Q21B_REFUSAL 340            Q21C 341-342        Q21C_REFUSAL 343
            Q21D 344-345        Q21D_REFUSAL 346            Q21E 347-348
        Q21E_REFUSAL 349             Q22 350-351             Q23 352-353
       Q24_CODES 354-355             Q25 356-357             Q26 358-359
             Q27 360-361             Q28 362-363             Q29 364-365
             Q30 366-367           Q31_1 368-369           Q31_2 370-371
           Q31_3 372-373           Q31_4 374-375           Q31_5 376-377
           Q31_6 378-379           Q31_7 380-381           Q31_8 382-383
           Q31_9 384-385 Q31_OTHER_TEXT_ENTERED 386             Q32 387-388
           Q33_1 389-390           Q33_2 391-392           Q33_3 393-394
           Q33_4 395-396           Q33_5 397-398           Q33_6 399-400
           Q33_7 401-402 Q33_OTHER_TEXT_ENTERED 403             Q34 404-405
       Q35_CODES 406-407    Q35_TEXT_ENTERED 408      Q24_MET_ONLINE 409
   SUMMARY_Q24_TOTAL 410        Q24_R_COWORK 411        Q24_R_FRIEND 412
        Q24_R_FAMILY 413     Q24_R_SIG_OTHER 414      Q24_R_NEIGHBOR 415
        Q24_P_COWORK 416        Q24_P_FRIEND 417        Q24_P_FAMILY 418
     Q24_P_SIG_OTHER 419      Q24_P_NEIGHBOR 420   Q24_BTWN_I_COWORK 421
   Q24_BTWN_I_FRIEND 422   Q24_BTWN_I_FAMILY 423 Q24_BTWN_I_SIG_OTHER 424
 Q24_BTWN_I_NEIGHBOR 425          Q24_SCHOOL 426         Q24_COLLEGE 427
        Q24_MILITARY 428          Q24_CHURCH 429         Q24_VOL_ORG 430
        Q24_CUSTOMER 431  Q24_BAR_RESTAURANT 432 Q24_INTERNET_DATING 433
 Q24_INTERNET_SOCIAL_NETWORKING 434   Q24_INTERNET_GAME 435   Q24_INTERNET_CHAT 436
 Q24_INTERNET_COMMUNITY 437  Q24_INTERNET_OTHER 438          Q24_PUBLIC 439
   Q24_PRIVATE_PARTY 440      Q24_BLIND_DATE 441        Q24_VACATION 442
 Q24_SINGLES_SERVICE_NON_INTERNET 443   Q24_BUSINESS_TRIP 444   Q24_WORK_NEIGHBOR 445
 Q24_FAM_SISTER_ACTIVE 446 Q24_FAM_BROTHER_ACTIVE 447 Q24_FAM_MOTHER_ACTIVE 448
 Q24_FAM_FATHER_ACTIVE 449 Q24_FAM_OTHER_ACTIVE 450 Q24_FAM_COUSINS_ACTIVE 451
 Q24_FAM_AUNT_NIECE_ACTIVE 452 Q24_FAM_UNCLE_NEPHEW_ACTIVE 453 Q24_FAM_GRANDMOTHER_ACTIVE 454
 Q24_FAM_GRANDFATHER_ACTIVE 455 Q24_FAM_SISTER_PASSIVE 456 Q24_FAM_BROTHER_PASSIVE 457
 Q24_FAM_MOTHER_PASSIVE 458 Q24_FAM_FATHER_PASSIVE 459 Q24_FAM_OTHER_PASSIVE 460
 Q24_FAM_COUSINS_PASSIVE 461 Q24_FAM_AUNT_NIECE_PASSIVE 462 Q24_FAM_UNCLE_NEPHEW_PASSIVE 463
 Q24_FAM_GRANDMOTHER_PASSIVE 464 Q24_FAM_GRANDFATHER_PASSIVE 465      Q24_FAM_FEMALE 466
        Q24_FAM_MALE 467 DISTANCEMOVED_10MI 468-472      MARRYNOTREALLY 473
 MARRYCOUNTRY 474-479 (A)      CIVILNOTREALLY 480    PARTNER_DECEASED 481
 PARTNER_RELIGION_RECLASSIFIED 482-483 PARTNER_RELIGION_CHILD_RECLASS 484-485 OWN_RELIGION_CHILD_RECLASS 486-487
        Q32_INTERNET 488      HOW_MET_ONLINE 489     EITHER_INTERNET 490
 EITHER_INTERNET_ADJUSTED 491-492     SAME_SEX_COUPLE 493 POTENTIAL_PARTNER_GENDER_RECODES 494-495
 ALT_PARTNER_GENDER 496-497 HOW_LONG_AGO_FIRST_MET 498-499 HOW_LONG_AGO_FIRST_ROMANTIC 500-501
 HOW_LONG_AGO_FIRST_COHAB 502-503 HOW_LONG_AGO_FIRST_MET_CAT 504 HOW_LONG_RELATIONSHIP 505-518 (11)
     RESPONDENT_RACE 519        PARTNER_RACE 520  AGE_DIFFERENCE 521-522
 MET_THROUGH_FRIENDS 523  MET_THROUGH_FAMILY 524 MET_THROUGH_AS_NEIGHBORS 525
 MET_THROUGH_AS_COWORKERS 526 RESPONDENT_RELIGION_AT_16 527-528 RESPONDENT_RELIG_16_CAT 529
 PARTNER_RELIGION_AT_16 530-531 PARTNER_RELIG_16_CAT 532             MARRIED 533
   PARENTAL_APPROVAL 534 RESPONDENT_YRSED 535-538 (1) PARTNER_YRSED 539-542 (1)
 HOME_COUNTRY_RECODE 543-544           US_RAISED 545 PARTNER_MOM_YRSED 546-549 (1)
 RESPONDENT_MOM_YRSED 550-553 (1) RELATIONSHIP_QUALITY 554          CORESIDENT 555
         PP2_AFTERP1 556    PP2_PPHHHEAD 557-558    PP2_PPHHSIZE 559-560
     PP2_PPHOUSE 561-562    PP2_PPINCIMP 563-564     PP2_PPMARIT 565-566
    PP2_PPMSACAT 567-568      PP2_PPEDUC 569-570    PP2_PPEDUCAT 571-572
 PP2_RESPONDENT_YRSED 573-576 (1)      PP2_PPETHM 577-578      PP2_PPREG4 579-580
          PP2_PPREG9 581      PP2_PPRENT 582-583       PP2_PPT01 584-585
     PP2_PPT1317 586-587     PP2_PPT18OV 588-589       PP2_PPT25 590-591
      PP2_PPT612 592-593      PP2_PPWORK 594-595           PP2_PPNET 596
 PP2_PPCMDATE_YRMO 597-602            PP_IGDR1 603           PP_IEDUC1 604
           PP2_IGDR2 605          PP2_IEDUC2 606         W2_DECEASED 607
        W2_MULTINAME 608        W2_PANELSTAT 609     W2_DONOTCONTACT 610
         W2_ASSIGNED 611       W2_F1COMPLETE 612 W2_HCMST_INTERVIEW_FIN_YRMO 613-618
     W2_DURATION 619-623           W2_XMARRY 624              W2_XSS 625
           W2_SOURCE 626           W2_Q1 627-628           W2_Q2 629-630
           W2_Q3 631-632           W2_Q4 633-634           W2_Q5 635-636
           W2_Q6 637-638           W2_Q7 639-640           W2_Q8 641-642
           W2_Q9 643-644          W2_Q10 645-646         W2_BROKE_UP 647
 W2_DAYS_ELAPSED 648-650    PP3_PPHHHEAD 651-652    PP3_PPHHSIZE 653-654
     PP3_PPHOUSE 655-656    PP3_PPINCIMP 657-658     PP3_PPMARIT 659-660
    PP3_PPMSACAT 661-662      PP3_PPRENT 663-664      PP3_PPREG4 665-666
          PP3_PPREG9 667 INTERSTATE_MOVER_PP1_PP2 668 INTERSTATE_MOVER_PP2_PP3 669
 INTERSTATE_MOVER_PP1_PP3 670       PP3_PPT01 671-672     PP3_PPT1317 673-674
     PP3_PPT18OV 675-676       PP3_PPT25 677-678      PP3_PPT612 679-680
      PP3_PPWORK 681-682           PP3_PPNET 683 PP3_PPCMDATE_YRMO 684-689
      PP3_PPEDUC 690-691    PP3_PPEDUCAT 692-693 PP3_RESPONDENT_YRSED 694-697 (1)
      PP3_PPETHM 698-699           PP3_NEWER 700  W2W3_COMBO_BREAKUP 701
         W3_BROKE_UP 702       W3_XPARTNERED 703        W3_XDECEASED 704
        W3_MULTINAME 705              W3_XSS 706            W3_XLAST 707
        W3_XYEAR 708-711           W3_XMONTH 712       W3_XQUALIFIED 713
           W3_STATUS 714         W3_COMPLETE 715           W3_SOURCE 716
 W3_HCMST_INTERVIEW_FIN_YRMO 717-722 W3_DAYS_ELAPSED 723-725     W3_DURATION 726-731
           W3_XMARRY 732            W3_XTYPE 733           W3_Q1 734-735
           W3_Q2 736-737           W3_Q3 738-739           W3_Q4 740-741
 W3_MBTIMING_YEAR 742-743 W3_MBTIMING_MONTH 744-745           W3_Q5 746-747
           W3_Q6 748-749           W3_Q7 750-751           W3_Q8 752-753
           W3_Q9 754-755          W3_Q10 756-757 W3_NONMBTIMING_YEAR 758-761
 W3_NONMBTIMING_MONTH 762-763       ZPNHWHITE_CAT 764       ZPNHBLACK_CAT 765
          ZPHISP_CAT 766      ZPMEDHHINC_CAT 767       ZPFORBORN_CAT 768
         ZPRURAL_CAT 769 Q15A1_OTHER_UNEDITED 770-967 (A)           Q15A1 968-969
     Q15A3_CODES 970-971       W4_XQUALIFIED 972           W4_STATUS 973
         W4_COMPLETE 974           W4_SOURCE 975     W4_DURATION 976-980
 W4_HCMST_INTERVIEW_FIN_YRMO 981-986            W4_XTYPE 987        W4_XYEAR 988-991
       W4_XMONTH 992-993           W4_XMARRY 994            W4_XLAST 995
     W4_XWAVE1_MONTH 996           W4_XCIVIL 997              W4_XSS 998
          W4_Q1 999-1000         W4_Q2 1001-1002    W4_QUALITY 1003-1004
 W4_ATTRACTIVE 1005-1006 W4_ATTRACTIVE_PARTNER 1007-1008         W4_Q3 1009-1010
         W4_Q4 1011-1012 W4_MBTIMING_YEAR 1013-1016 W4_MBTIMING_MONTH 1017-1018
              W4_Q5 1019              W4_Q6 1020         W4_Q7 1021-1022
   W4_MAR_YEAR 1023-1026  W4_MAR_MONTH 1027-1028   W4_CIV_YEAR 1029-1032
       W4_Q8_A 1033-1034       W4_Q8_B 1035-1036              W4_Q9 1037
        W4_Q10 1038-1039 W4_NONMBTIMING_YEAR 1040-1043 W4_NONMBTIMING_MONTH 1044-1045
 RELATIONSHIP_QUALITY_W4 1046        W4_BROKE_UP 1047 W234_COMBO_BREAKUP 1048
    PP4_PPEDUC 1049-1050  PP4_PPEDUCAT 1051-1052    PP4_PPETHM 1053-1054
  PP4_PPHHHEAD 1055-1056  PP4_PPHHSIZE 1057-1058   PP4_PPHOUSE 1059-1060
  PP4_PPINCIMP 1061-1062   PP4_PPMARIT 1063-1064  PP4_PPMSACAT 1065-1066
    PP4_PPREG4 1067-1068         PP4_PPREG9 1069    PP4_PPRENT 1070-1071
     PP4_PPT01 1072-1073     PP4_PPT25 1074-1075    PP4_PPT612 1076-1077
   PP4_PPT1317 1078-1079   PP4_PPT18OV 1080-1081    PP4_PPWORK 1082-1083
          PP4_PPNET 1084 PP4_PPCMDATE_YRMO 1085-1090          PP4_NEWER 1091
 PPA2009_SERVICES_YRMO 1092-1097 PPA2009_HOW_OFTEN_SERVICES 1098-1099   W5_DURATION 1100-1104
          W5_SOURCE 1105        W5_COMPLETE 1106          W5_STATUS 1107
      W5X_QUALIFIED 1108          W5X_MARRY 1109           W5X_LAST 1110
      W5X_YEAR 1111-1114          W5X_CIVIL 1115     W5X_MONTH 1116-1117
   W5X_CIVYEAR 1118-1121  W5X_CIVMONTH 1122-1123         W5_Q1 1124-1125
         W5_Q2 1126-1127 W5_SEX_FREQUENCY 1128-1129 W5_P_MONOGAMY 1130-1131
   W5_IDENTITY 1132-1133    W5_OUTNESS 1134-1135              W5_Q3 1136
              W5_Q4 1137 W5_MBTIMING_MONTH 1138-1139 W5_MBTIMING_YEAR 1140-1143
         W5_Q5 1144-1145         W5_Q6 1146-1147         W5_Q7 1148-1149
   W5_MAR_YEAR 1150-1153  W5_MAR_MONTH 1154-1155         W5_Q8 1156-1157
   W5_CIV_YEAR 1158-1161  W5_CIV_MONTH 1162-1163              W5_Q9 1164
             W5_Q10 1165 W5_NONMBTIMING_YEAR 1166-1169 W5_NONMBTIMING_MONTH 1170-1171
        W5_BROKE_UP 1172 W5_HCMST_INTERVIEW_FIN_YRMO 1173-1178 W2345_COMBO_BREAKUP 1179
 RESPONDED_TO_W234OR5 1180     PP5_PPAGE 1181-1183  PP5_PPAGECAT 1184-1185
  PP5_PPAGECT4 1186-1187    PP5_PPEDUC 1188-1189  PP5_PPEDUCAT 1190-1191
    PP5_PPETHM 1192-1193  PP5_PPGENDER 1194-1195       PP5_PPHHHEAD 1196
  PP5_PPHHSIZE 1197-1198   PP5_PPHOUSE 1199-1200  PP5_PPINCIMP 1201-1202
   PP5_PPMARIT 1203-1204 PP5_PPCMDATE_YRMO 1205-1210          PP5_NEWER 1211
       PP5_PPMSACAT 1212    PP5_PPREG4 1213-1214         PP5_PPREG9 1215
         PP5_PPRENT 1216     PP5_PPT01 1217-1218          PP5_PPT25 1219
    PP5_PPT612 1220-1221   PP5_PPT1317 1222-1223   PP5_PPT18OV 1224-1225
    PP5_PPWORK 1226-1227          PP5_PPNET 1228  PPMARIT_2014 1229-1230
 PPCMARIT_2014_YRMO 1231-1236  PPMARIT_2013 1237-1238 PPCMARIT_2013_YRMO 1239-1244
  PPMARIT_2012 1245-1246 PPCMARIT_2012_YRMO 1247-1252  PPMARIT_2011 1253-1254
 PPCMARIT_2011_YRMO 1255-1260  PPMARIT_2010 1261-1262 PPCMARIT_2010_YRMO 1263-1268
  PPMARIT_2009 1269-1270 PPCMARIT_2009_YRMO 1271-1276  PPMARIT_2007 1277-1278
 PPCMARIT_2007_YRMO 1279-1284
   .

* SPSS VARIABLE LABELS COMMAND

VARIABLE LABELS
   CASEID_NEW 'Client ID original (CASEID_NEW)' /
   WEIGHT1   'Main Weight for all respondents' /
   WEIGHT2   'Main Weight for Partnered Respondents' /
   PPAGE     'respondent age at time of HCMST wave I survey' /
   PPAGECAT  'age - 7 categories' /
   PPAGECT4  'age - 4 categories' /
   PPEDUC    '(PPEDUC) education (highest degree received)' /
   PPEDUCAT  '(PPEDUCAT) education (categorical)' /
   PPETHM    '(PPETHM) race / ethnicity' /
   PPGENDER  'gender' /
   PPHHHEAD  '(PPHHHEAD) household head' /
   PPHOUSEHOLDSIZE 'Including yourself, how many people currently live in your household at least 50% of the time?' /
   PPHOUSE   '(PPHOUSE) housing type' /
   PPINCIMP  'household income (PPINCIMP)' /
   HHINC     'dollar value hhinc based on categorical var ppincimp' /
   PPMARIT   'marital status (PPMARIT)' /
   PPMSACAT  'msa status (PPMSACAT)' /
   PPREG4    '(PPREG4) region 4 - based on state of residence' /
   PPREG9    '(PPREG9) region 9 - based on state of residence' /
   PPRENT    '(PPRENT) ownership status of living quarters' /
   PPT01     'number of children age <2 in HH (PPT01)' /
   PPT1317   '(PPT1317) number of children age 13-17 in HH' /
   PPT18OV   'number of adults age 18+ in HH (PPT18OV)' /
   PPT25     '(PPT25) number of children age 2-5 in HH' /
   PPT612    '(PPT612) number of children age 6-12 in HH' /
   CHILDREN_IN_HH 'number of children in hh based on  ppt01+ ppt25+ ppt612+ ppt1317' /
   PPWORK    '(PPWORK) current employment status' /
   PPNET     'hh has its own Internet access at the time of core adult profile' /
   PPQ14ARACE 'which of these races do you identify with most closely?' /
   PPHISPAN  'are you of spanish, hispanic, or latino descent?' /
   PPRACE_WHITE 'white' /
   PPRACE_BLACK 'black' /
   PPRACE_NATIVEAMERICAN 'native american' /
   PPRACE_ASIANINDIAN 'asian indian' /
   PPRACE_CHINESE 'chinese' /
   PPRACE_FILIPINO 'filipino' /
   PPRACE_JAPANESE 'japanese' /
   PPRACE_KOREAN 'korean' /
   PPRACE_VIETNAMESE 'vietnamese' /
   PPRACE_OTHERASIAN 'other asian' /
   PPRACE_HAWAIIAN 'hawaiian' /
   PPRACE_GUAMANIAN 'guamanian' /
   PPRACE_SAMOAN 'samoan' /
   PPRACE_OTHERPACIFICISLANDER 'other pacific islander' /
   PPRACE_SOMEOTHERRACE 'some other race' /
   PAPGLB_FRIEND 'q22:Do you have any friends or relatives who you know to be gay, lesbian, or bisexual?' /
   PPPARTYID3 'derived: political party affiliation (3 categories)' /
   PAPEVANGELICAL 'q26a:would you describe yourself as a born-again or evangelical christian?' /
   PAPRELIGION 'q26:what is your religion?' /
   PPPPCMDATE_YRMO 'date member completed first core profile survey in YYYYMM format' /
   PPPADATE_YRMO 'date member completed public affairs survey in YYYYMM format' /
   PPHHCOMP11_MEMBER2_AGE 'member 2 : age' /
   PPHHCOMP11_MEMBER3_AGE 'member 3 : age' /
   PPHHCOMP11_MEMBER4_AGE 'member 4 : age' /
   PPHHCOMP11_MEMBER5_AGE 'member 5 : age' /
   PPHHCOMP11_MEMBER6_AGE 'member 6 : age' /
   PPHHCOMP11_MEMBER7_AGE 'member 7 : age' /
   PPHHCOMP11_MEMBER8_AGE 'member 8 : age' /
   PPHHCOMP11_MEMBER9_AGE 'member 9 : age' /
   PPHHCOMP11_MEMBER10_AGE 'member 10 : age' /
   PPHHCOMP11_MEMBER11_AGE 'member 11 : age' /
   PPHHCOMP11_MEMBER12_AGE 'member 12 : age' /
   PPHHCOMP11_MEMBER13_AGE 'member 13 : age' /
   PPHHCOMP11_MEMBER14_AGE 'member 14 : age' /
   PPHHCOMP11_MEMBER15_AGE 'member 15 : age' /
   PPHHCOMP11_MEMBER2_GENDER 'member 2 : gender' /
   PPHHCOMP11_MEMBER3_GENDER 'member 3 : gender' /
   PPHHCOMP11_MEMBER4_GENDER 'member 4 : gender' /
   PPHHCOMP11_MEMBER5_GENDER 'member 5 : gender' /
   PPHHCOMP11_MEMBER6_GENDER 'member 6 : gender' /
   PPHHCOMP11_MEMBER7_GENDER 'member 7 : gender' /
   PPHHCOMP11_MEMBER8_GENDER 'member 8 : gender' /
   PPHHCOMP11_MEMBER9_GENDER 'member 9 : gender' /
   PPHHCOMP11_MEMBER10_GENDER 'member 10 : gender' /
   PPHHCOMP11_MEMBER11_GENDER 'member 11 : gender' /
   PPHHCOMP11_MEMBER12_GENDER 'member 12 : gender' /
   PPHHCOMP11_MEMBER13_GENDER 'member 13 : gender' /
   PPHHCOMP11_MEMBER14_GENDER 'member 14 : gender' /
   PPHHCOMP11_MEMBER15_GENDER 'member 15 : gender' /
   PPHHCOMP11_MEMBER2_RELATIONSHIP 'member 2 : relationship to you' /
   PPHHCOMP11_MEMBER3_RELATIONSHIP 'member 3 : relationship to you' /
   PPHHCOMP11_MEMBER4_RELATIONSHIP 'member 4 : relationship to you' /
   PPHHCOMP11_MEMBER5_RELATIONSHIP 'member 5 : relationship to you' /
   PPHHCOMP11_MEMBER6_RELATIONSHIP 'member 6 : relationship to you' /
   PPHHCOMP11_MEMBER7_RELATIONSHIP 'member 7 : relationship to you' /
   PPHHCOMP11_MEMBER8_RELATIONSHIP 'member 8 : relationship to you' /
   PPHHCOMP11_MEMBER9_RELATIONSHIP 'member 9 : relationship to you' /
   PPHHCOMP11_MEMBER10_RELATIONSHIP 'member 10 : relationship to you' /
   PPHHCOMP11_MEMBER11_RELATIONSHIP 'member 11 : relationship to you' /
   PPHHCOMP11_MEMBER12_RELATIONSHIP 'member 12 : relationship to you' /
   PPHHCOMP11_MEMBER13_RELATIONSHIP 'member 13 : relationship to you' /
   PPHHCOMP11_MEMBER14_RELATIONSHIP 'member 14 : relationship to you' /
   PPHHCOMP11_MEMBER15_RELATIONSHIP 'member 15 : relationship to you' /
   IRB_CONSENT 'irb consent' /
   WEIGHT3   'Supplementary weight for all qualified glb and non-glb separately' /
   WEIGHT4   'Supplementary weight for genpop and augment samples weighted separately' /
   WEIGHT5   'Supplementary weight for all qualified respondents scaled from weight4' /
   WEIGHT6   'Supplementary weight for total glb genpop and augment respondents' /
   WEIGHT7   'Supplementary weight for total qualified glb genpop and augment respondents' /
   WEIGHT_COUPLES_CORESIDENT 'Supplementary weight ACS-based couples race weight for coresident couples' /
   HCMST_MAIN_INTERVIEW_YRMO 'year and month HCMST main survey was completed in YYYYMM format' /
   DURATION  'interview duration in minutes, rounded down' /
   QFLAG     'Does respondent have a spouse or partner?' /
   GLBSTATUS 'glb status including asking again those who refused to answer in the PAP' /
   PAPGLB_STATUS 'q23: are you yourself gay, lesbian, or bisexual?' /
   RECSOURCE 'recruitment source' /
   S1        'are you married?' /
   S1A       'are you yourself gay, lesbian, or bisexual?' /
   S2        'do you have a boyfriend, a girlfriend, a sexual partner or a romantic partner?' /
   Q3_CODES  'name of partner was refused' /
   Q4        'is [partner_name] male or female?' /
   Q5        'is [partner_name] the same gender as you?' /
   Q6A       'is [partner_name] latino or hispanic?' /
   Q6B       'what is [partner_name]''s race?' /
   Q7A       'Would [partner_name] describe [himself/herself/themself] as a born-again or evangelical Christian?' /
   Q7B       'what is [partner_name]''s religion?' /
   Q8A       'Is [partner_name]''s religion today the same as [partner_name]''s religion when [he was/she was/they were] 16 years old?' /
   Q8B       'what was [partner_name]''s religion when [he/she/they] was/were 16 years old?' /
   Q9        'how old is [partner_name]?' /
   Q10       'what is the highest level of schooling [partner_name] has completed?' /
   Q11       'what is the highest level of schooling [partner_name]''s mother has completed?' /
   Q12       'generally speaking, does [partner_name] think of [himself/herself/themself] as:' /
   Q13A      'is your religion today the same as your religion when you were 16 years old?' /
   Q13B      'what was your religion when you were 16 years old?' /
   Q14       'what is the highest level of schooling your mother has completed?' /
   Q15A1_COMPRESSED 'between birth and age 16, where did you spend most of the time living' /
   Q16       'how many of your relatives do you see in person at least once a month?' /
   Q17A      'including your current marriage, how many times have you been married?' /
   Q17B      'how many times have you been married?' /
   Q17C      'What gender are you most attracted to, sexually? (for women)' /
   Q17D      'What gender are you most attracted to, sexually? (for men)' /
   GENDER_ATTRACTION 'based on q17c and q17d' /
   Q18A_1    'Have domestic partnership' /
   Q18A_2    'Have Civil Union' /
   Q18A_3    'Have neither Domestic Partnership nor Civil Union' /
   Q18A_REFUSED '[refused] do you and [partner_name] have:' /
   Q18B_CODES 'q18b refusals' /
   Q18C_CODES '(Q18C_CODES) codes' /
   Q19       'are you currently living with [partner_name]?' /
   Q20       'have you ever lived together with [partner_name]?' /
   Q21A      'how old were you when you first met [partner_name]?' /
   Q21A_REFUSAL 'respondents who refused q21a' /
   Q21B      'how old were you when your romantic relationship with [partner_name] began?' /
   Q21B_REFUSAL 'respondents who refused q21b' /
   Q21C      'how old were you when you first lived together with [partner_name]?' /
   Q21C_REFUSAL 'respondents who refused q21c' /
   Q21D      'how old were you when you married [partner_name]?' /
   Q21D_REFUSAL 'respondents who refused q21d' /
   Q21E      'How old were you when you joined in domestic partnership or civil union with [partner_name]?' /
   Q21E_REFUSAL 'respondents who refused q21e' /
   Q22       'how long have you been in a romantic relationship with [partner_name]?' /
   Q23       'between you and [partner_name], who earned more income in 2008:' /
   Q24_CODES 'refused q24' /
   Q25       'did you and [partner_name] attend the same high school?' /
   Q26       'did you and [partner_name] attend the same college or university?' /
   Q27       'did you and [partner_name] grow up in the same city or town?' /
   Q28       'did your parents know [partner_name]''s parents before you met [partner_name]?' /
   Q29       'which of your parents are alive today:' /
   Q30       'how does your [father and mother/father/mother] feel about [partner_name]?' /
   Q31_1     '[work] where did you meet [partner_name]?' /
   Q31_2     '[school] where did you meet [partner_name]?' /
   Q31_3     '[church/church activity] where did you meet [partner_name]?' /
   Q31_4     '[qpersonal ads/dating service via the internet] where did you meet [partner_name]?' /
   Q31_5     '[vacation/business trip] where did you meet [partner_name]?' /
   Q31_6     '[bar/nightclub/dance club] where did you meet [partner_name]?' /
   Q31_7     '[social organization/health club/gym/volunteer-service activity] where did you meet [partner_name]?' /
   Q31_8     '[private party] where did you meet [partner_name]?' /
   Q31_9     '[other] where did you meet [partner_name]?' /
   Q31_OTHER_TEXT_ENTERED 'Did subject enter any text for q31_9, i.e. ''Other''' /
   Q32       'did you use an internet service to meet [partner_name]?' /
   Q33_1     '[family] who introduced you to [partner_name]?' /
   Q33_2     '[mutual friends or acquaintances] who introduced you to [partner_name]?' /
   Q33_3     '[co-workers] who introduced you to [partner_name]?' /
   Q33_4     '[classmates] who introduced you to [partner_name]?' /
   Q33_5     '[neighbors] who introduced you to [partner_name]?' /
   Q33_6     '[introduced self or partner introduced self] who introduced you to [partner_name]?' /
   Q33_7     '[other] who introduced you to [partner_name]?' /
   Q33_OTHER_TEXT_ENTERED 'Did subject write text for q33_7, i.e q33 ''other''' /
   Q34       'In general, how would you describe the quality of your relationship with [partner_name]?' /
   Q35_CODES '(Q35_CODES) codes' /
   Q35_TEXT_ENTERED 'Did subject write text for q35, ''Describe the Quality of Your Relationship''' /
   Q24_MET_ONLINE 'met online according to q24' /
   SUMMARY_Q24_TOTAL 'total of all q24 codes' /
   Q24_R_COWORK 'Respondent''s coworker: intermediary or Partner' /
   Q24_R_FRIEND 'Respondent''s friend: intermediary' /
   Q24_R_FAMILY 'Respondent''s family: intermediary' /
   Q24_R_SIG_OTHER 'Respondent''s (current or past) Significant Other: intermediary' /
   Q24_R_NEIGHBOR 'Respondent''s residential neighbor: intermediary or Partner' /
   Q24_P_COWORK 'Partner''s coworker: Intermediary or Respondent' /
   Q24_P_FRIEND 'Partner''s friend: intermediary' /
   Q24_P_FAMILY 'Partner''s family: intermediary' /
   Q24_P_SIG_OTHER 'Partner''s (current or past) Significant Other: intermediary' /
   Q24_P_NEIGHBOR 'Partner''s neighbor: intermediary or Respondent' /
   Q24_BTWN_I_COWORK 'coworker relationship between Intermediaries' /
   Q24_BTWN_I_FRIEND 'friendship between intermediaries' /
   Q24_BTWN_I_FAMILY 'family relationship between intermediaries' /
   Q24_BTWN_I_SIG_OTHER 'significant other relationship between intermediaries' /
   Q24_BTWN_I_NEIGHBOR 'intermediaries are neighbors' /
   Q24_SCHOOL 'primary or secondary school' /
   Q24_COLLEGE 'college or university' /
   Q24_MILITARY 'military service' /
   Q24_CHURCH 'church or religious organization' /
   Q24_VOL_ORG 'voluntary organization (non-church)' /
   Q24_CUSTOMER 'customer-client relationship' /
   Q24_BAR_RESTAURANT 'bar, restaurant, or other public social gathering place' /
   Q24_INTERNET_DATING 'internet dating web site' /
   Q24_INTERNET_SOCIAL_NETWORKING 'internet social networking website' /
   Q24_INTERNET_GAME 'internet gaming website' /
   Q24_INTERNET_CHAT 'internet chat' /
   Q24_INTERNET_COMMUNITY 'internet web site not mainly dedicated to dating' /
   Q24_INTERNET_OTHER 'internet, not otherwise classified' /
   Q24_PUBLIC 'met in public space' /
   Q24_PRIVATE_PARTY 'private party' /
   Q24_BLIND_DATE 'met on blind date' /
   Q24_VACATION 'met while on vacation' /
   Q24_SINGLES_SERVICE_NON_INTERNET 'met through non-internet dating or singles service' /
   Q24_BUSINESS_TRIP 'met while on business trip' /
   Q24_WORK_NEIGHBOR 'met as work neighbors' /
   Q24_FAM_SISTER_ACTIVE '(Q24_FAM_SISTER_ACTIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_BROTHER_ACTIVE '(Q24_FAM_BROTHER_ACTIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_MOTHER_ACTIVE '(Q24_FAM_MOTHER_ACTIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_FATHER_ACTIVE '(Q24_FAM_FATHER_ACTIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_OTHER_ACTIVE '(Q24_FAM_OTHER_ACTIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_COUSINS_ACTIVE '(Q24_FAM_COUSINS_ACTIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_AUNT_NIECE_ACTIVE '(Q24_FAM_AUNT_NIECE_ACTIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_UNCLE_NEPHEW_ACTIVE '(Q24_FAM_UNCLE_NEPHEW_ACTIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_GRANDMOTHER_ACTIVE '(Q24_FAM_GRANDMOTHER_ACTIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_GRANDFATHER_ACTIVE '(Q24_FAM_GRANDFATHER_ACTIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_SISTER_PASSIVE '(Q24_FAM_SISTER_PASSIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_BROTHER_PASSIVE '(Q24_FAM_BROTHER_PASSIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_MOTHER_PASSIVE '(Q24_FAM_MOTHER_PASSIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_FATHER_PASSIVE '(Q24_FAM_FATHER_PASSIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_OTHER_PASSIVE '(Q24_FAM_OTHER_PASSIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_COUSINS_PASSIVE '(Q24_FAM_COUSINS_PASSIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_AUNT_NIECE_PASSIVE '(Q24_FAM_AUNT_NIECE_PASSIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_UNCLE_NEPHEW_PASSIVE '(Q24_FAM_UNCLE_NEPHEW_PASSIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_GRANDMOTHER_PASSIVE '(Q24_FAM_GRANDMOTHER_PASSIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_GRANDFATHER_PASSIVE '(Q24_FAM_GRANDFATHER_PASSIVE) specific family intervention in respondent meeting partner from q24' /
   Q24_FAM_FEMALE 'did any female family members introduce couple, see q24_fam' /
   Q24_FAM_MALE 'did any male family members introduce couple, see q24_fam' /
   DISTANCEMOVED_10MI 'Distance in Miles between resp home town and current home, to nearest 10 mi' /
   MARRYNOTREALLY 'q18c indicates not really married' /
   MARRYCOUNTRY 'same-sex couple marriage country, based on q18c' /
   CIVILNOTREALLY 'q18b indicates not really in civil union or domestic parternship' /
   PARTNER_DECEASED 'text answers from main survey imply that reported partner is deceased' /
   PARTNER_RELIGION_RECLASSIFIED 'q7b partner religion reclassified from Other, please specify, based on text answer' /
   PARTNER_RELIGION_CHILD_RECLASS 'q8b partner childhood religion reclassified from Other' /
   OWN_RELIGION_CHILD_RECLASS 'q13b own religion at age 16 reclassified from Other' /
   Q32_INTERNET 'summary of q32 internet categories' /
   HOW_MET_ONLINE 'type of internet meeting based on q24 text, q32, q33, age, and when met' /
   EITHER_INTERNET 'q32 or q24 internet' /
   EITHER_INTERNET_ADJUSTED 'either_internet adjusted by how_met_online, takes account of misreporting of int' /
   SAME_SEX_COUPLE 'best guess as to whether the couple is a same-sex couple' /
   POTENTIAL_PARTNER_GENDER_RECODES 'partner gender recoded based on partner name, glb status, and attraction.' /
   ALT_PARTNER_GENDER 'new partner gender variable based on q4 and potential_partner_gender_recodes' /
   HOW_LONG_AGO_FIRST_MET 'how long ago respondent met partner, in years, based on ppage and q21a' /
   HOW_LONG_AGO_FIRST_ROMANTIC 'how long ago romance with partner began, in years, based on ppage and q21b' /
   HOW_LONG_AGO_FIRST_COHAB 'how long ago cohabitation with partner began, in years, from ppage and q21c' /
   HOW_LONG_AGO_FIRST_MET_CAT 'In years, categorical, based on how_long_ago_first_met' /
   HOW_LONG_RELATIONSHIP 'relationship duration, in years, based on ppage, q21b, and  q22' /
   RESPONDENT_RACE '6 cat respondent race/hispanic from pprace_white, etc, ppq14arace, and pphispan' /
   PARTNER_RACE '6 cat partner/spouse race/hispanicity from q6a and q6b' /
   AGE_DIFFERENCE 'absolute value of ppage-q9' /
   MET_THROUGH_FRIENDS 'combination of  q24_R_friend and  q24_P_friend' /
   MET_THROUGH_FAMILY 'combination of q24_R_family and  q24_P_family' /
   MET_THROUGH_AS_NEIGHBORS 'combination of  q24_R_neighbor and q24_P_neighbor' /
   MET_THROUGH_AS_COWORKERS 'combination of  q24_R_cowork and  q24_P_cowork' /
   RESPONDENT_RELIGION_AT_16 'combination of  papreligion and q13b' /
   RESPONDENT_RELIG_16_CAT 'respondent religion 5 category based on respondent_religion_at_16' /
   PARTNER_RELIGION_AT_16 'combination of q7b and q8b' /
   PARTNER_RELIG_16_CAT 'partner religion 5 category based on partner_religion_at_16' /
   MARRIED   'married at time of main survey, based on s1' /
   PARENTAL_APPROVAL 'based on q30' /
   RESPONDENT_YRSED 'Respondent yrs education based on ppeduc, first demographic background survey' /
   PARTNER_YRSED 'Partner yrs education based on q10' /
   HOME_COUNTRY_RECODE 'recode home country from Other' /
   US_RAISED 'US raised based on q15a1' /
   PARTNER_MOM_YRSED 'partner''s mother''s years of education based on q11' /
   RESPONDENT_MOM_YRSED 'respondent''s mother''s years of education based on q14' /
   RELATIONSHIP_QUALITY 'relationship quality, based on q34, higher number is better' /
   CORESIDENT 'respondent and partner coresident based on q19' /
   PP2_AFTERP1 'Did respondent complete a second background survey after HCM main survey?' /
   PP2_PPHHHEAD '(PP2_PPHHHEAD) household head' /
   PP2_PPHHSIZE 'household size' /
   PP2_PPHOUSE '(PP2_PPHOUSE) housing type' /
   PP2_PPINCIMP 'household income (PP2_PPINCIMP)' /
   PP2_PPMARIT 'marital status (PP2_PPMARIT))' /
   PP2_PPMSACAT 'msa status (PP2_PPMSACAT)' /
   PP2_PPEDUC '(PP2_PPEDUC) education (highest degree received)' /
   PP2_PPEDUCAT '(PP2_PPEDUCAT) education (categorical)' /
   PP2_RESPONDENT_YRSED 'Respondent yrs education based on pp2_ppeduc' /
   PP2_PPETHM '(PP2_PPETHM) race / ethnicity' /
   PP2_PPREG4 '(PP2_PPREG4) region 4 - based on state of residence' /
   PP2_PPREG9 '(PP2_PPREG9) region 9 - based on state of residence' /
   PP2_PPRENT '(PP2_PPRENT) ownership status of living quarters' /
   PP2_PPT01 'number of children age <2 in HH (PP2_PPT01)' /
   PP2_PPT1317 '(PP2_PPT1317) number of children age 13-17 in HH' /
   PP2_PPT18OV 'number of adults age 18+ in HH (PP2_PPT18OV)' /
   PP2_PPT25 '(PP2_PPT25) number of children age 2-5 in HH' /
   PP2_PPT612 '(PP2_PPT612) number of children age 6-12 in HH' /
   PP2_PPWORK '(PP2_PPWORK) current employment status' /
   PP2_PPNET 'hh has its own Internet access at the time of the pp2 core adult profile' /
   PP2_PPCMDATE_YRMO 'date second background survey completed in YYYYMM format' /
   PP_IGDR1  'flag.  gender value imputed at time of baseline survey' /
   PP_IEDUC1 'flag. education value imputed at time of baseline survey' /
   PP2_IGDR2 'flag. gender value imputed at time of follow-up survey' /
   PP2_IEDUC2 'flag.  education value imputed at time of followup survey' /
   W2_DECEASED 'text answers imply that reported partner is deceased' /
   W2_MULTINAME 'text answers include multiple partner names' /
   W2_PANELSTAT 'flag.  panel status at time of assignment' /
   W2_DONOTCONTACT 'flag.  withdrawn cases on noncontact list' /
   W2_ASSIGNED 'flag.  survey assignment flag' /
   W2_F1COMPLETE 'flag.  completed followup survey' /
   W2_HCMST_INTERVIEW_FIN_YRMO 'year and month subject finished second wave interview in YYYYMM format' /
   W2_DURATION 'wave 2 interview duration in minutes, rounded down' /
   W2_XMARRY 'data only: respondent is married or partnered' /
   W2_XSS    'Respondent has same-sex partner AND does Not have domestic partnership' /
   W2_SOURCE 'interview source (online or telephone)' /
   W2_Q1     'are you still married to [partner]?' /
   W2_Q2     '(W2_Q2) are you currently living with [partner]?' /
   W2_Q3     'how did your marriage to [partner] end?' /
   W2_Q4     'between you and [partner], who wanted the [divorce/separation] more?' /
   W2_Q5     'are you still in a romantic relationship with [partner]?' /
   W2_Q6     '(W2_Q6) are you currently living with [partner]?' /
   W2_Q7     'in the past 12 months, have you and [partner] gotten married?' /
   W2_Q8     'In the past 12 months, have you and [partner] gotten a formal domestic partnership?' /
   W2_Q9     'how did your relationship with [partner] end?' /
   W2_Q10    'between you and [partner], who wanted more to break up?' /
   W2_BROKE_UP 'based on  w2_q5 and  w2_q1' /
   W2_DAYS_ELAPSED 'days between wave 1 and wave 2, w2_tm_finish- tm_finish, converted to days' /
   PP3_PPHHHEAD 'Household Head (PP3_PPHHHEAD)' /
   PP3_PPHHSIZE '(PP3_PPHHSIZE) Household Size' /
   PP3_PPHOUSE '(PP3_PPHOUSE) Housing Type' /
   PP3_PPINCIMP 'Household Income (PP3_PPINCIMP)' /
   PP3_PPMARIT '(PP3_PPMARIT) Marital Status' /
   PP3_PPMSACAT 'MSA Status (PP3_PPMSACAT)' /
   PP3_PPRENT '(PP3_PPRENT) Ownership Status of Living Quarters' /
   PP3_PPREG4 'Region 4 - Based on State of Residence (PP3_PPREG4)' /
   PP3_PPREG9 '(PP3_PPREG9) Region 9 - Based on State of Residence' /
   INTERSTATE_MOVER_PP1_PP2 'subject resided in different state in pp2 and pp1' /
   INTERSTATE_MOVER_PP2_PP3 'subject resided in different state in pp2 and pp3' /
   INTERSTATE_MOVER_PP1_PP3 'subject resided in different state in pp1 and pp3' /
   PP3_PPT01 'number of children age <2 in HH (PP3_PPT01)' /
   PP3_PPT1317 '(PP3_PPT1317) number of children age 13-17 in HH' /
   PP3_PPT18OV 'number of adults age 18+ in HH (PP3_PPT18OV)' /
   PP3_PPT25 '(PP3_PPT25) number of children age 2-5 in HH' /
   PP3_PPT612 '(PP3_PPT612) number of children age 6-12 in HH' /
   PP3_PPWORK 'Current Employment Status' /
   PP3_PPNET 'hh has its own Internet access at the time of the pp3 core adult profile' /
   PP3_PPCMDATE_YRMO 'date third background survey was completed in YYYYMM format' /
   PP3_PPEDUC '(PP3_PPEDUC)Education (Highest Degree Received)' /
   PP3_PPEDUCAT '(PP3_PPEDUCAT) Education (Categorical)' /
   PP3_RESPONDENT_YRSED 'Respondent yrs education based on pp3_ppeduc' /
   PP3_PPETHM '(PP3_PPETHM) Race / Ethnicity' /
   PP3_NEWER 'is pp3 more recent core demographic data than pp2 or pp1?' /
   W2W3_COMBO_BREAKUP 'break-up across wave 2 and wave 3' /
   W3_BROKE_UP 'couple broke up or partner deceased at wave 3' /
   W3_XPARTNERED 'is subject partnered (one element of being qualified) for wave 3 survey' /
   W3_XDECEASED 'is subject unqualified for w3 bc partner was deceased at main survey?' /
   W3_MULTINAME 'original main survey response did not give name for partner' /
   W3_XSS    'Data only: respondent has same-sex partner but does not have civil union or domestic partnership?' /
   W3_XLAST  'whether respondent was last contacted 1 or 2 years ago' /
   W3_XYEAR  'year of last contact' /
   W3_XMONTH 'month of last contact' /
   W3_XQUALIFIED 'is subject qualified for wave 3' /
   W3_STATUS 'KN panel status for wave 3 qualified subjects.' /
   W3_COMPLETE 'did subject complete wave 3 survey?' /
   W3_SOURCE 'Interview source (online or telephone)' /
   W3_HCMST_INTERVIEW_FIN_YRMO 'year and month subject finished 3rd wave interview in YYYYMM format' /
   W3_DAYS_ELAPSED 'days elapsed between wave 1 and wave 3' /
   W3_DURATION 'Interview duration in minutes, rounded down' /
   W3_XMARRY 'Respondent is married or partnered' /
   W3_XTYPE  'same-sex or heterosexual couple' /
   W3_Q1     'Are you still married to [xNameP]?' /
   W3_Q2     '(W3_Q2) Are you currently living with [xNameP]?' /
   W3_Q3     'How did your marriage to [xNameP] end?' /
   W3_Q4     'Between you and [xNameP], who wanted the [divorce/separation] more?' /
   W3_MBTIMING_YEAR '[Year:] When did you get [divorced/separated] from [xNameP]?' /
   W3_MBTIMING_MONTH '[Month:] When did you get [divorced/separated] from [xNameP]?' /
   W3_Q5     'Are you still in a romantic relationship with [xNameP]?' /
   W3_Q6     '(W3_Q6) Are you currently living with [xNameP]?' /
   W3_Q7     'In the past [year/two years], have you and [xNameP] gotten married?' /
   W3_Q8     'In the past [year/two years], have you and [xNameP] gotten a formal domestic partnership?' /
   W3_Q9     'How did your relationship with [xNameP] end?' /
   W3_Q10    'Between you and [xNameP], who wanted more to break up?' /
   W3_NONMBTIMING_YEAR '[Year:] When did you break-up with [xNameP]?' /
   W3_NONMBTIMING_MONTH '[Month:] When did you break-up with [xNameP]?' /
   ZPNHWHITE_CAT '% of ZIP coded that is NH white in 2000' /
   ZPNHBLACK_CAT '% of ZIP code that is NH Black in 2000' /
   ZPHISP_CAT '% of ZIP code that is Hispanic in 2000' /
   ZPMEDHHINC_CAT 'median ZIP HH income in 1999 dollars' /
   ZPFORBORN_CAT '% of ZIP that is foreign born in 2000' /
   ZPRURAL_CAT 'ZIP code is rural' /
   Q15A1_OTHER_UNEDITED 'original variable without truncated answers' /
   Q15A1     'Between the time you were born and when you were 16 years old, where did you spend the most time living?' /
   Q15A3_CODES 'town where raised refusals' /
   W4_XQUALIFIED 'Subjects qualified for wave 4 (ie w3_xqualified minus w3 break ups and deaths)' /
   W4_STATUS 'status of respondent at wave 4' /
   W4_COMPLETE 'did subject complete wave 4 survey?' /
   W4_SOURCE 'source for completed wave 4 survey' /
   W4_DURATION 'duration of wave 4 surveys (Internet only), in minutes' /
   W4_HCMST_INTERVIEW_FIN_YRMO 'year and month subject responded to wave 4 survey' /
   W4_XTYPE  'Same-sex couples versus hetero couples for consistency with prior waves' /
   W4_XYEAR  'The year of last contact with the subject' /
   W4_XMONTH 'Month of last contact' /
   W4_XMARRY 'Were respondent and partner married as of last contact' /
   W4_XLAST  'How many years ago was last contact, assuming wave 4 is in 2013' /
   W4_XWAVE1_MONTH 'Month wave 1 was completed in year 2009' /
   W4_XCIVIL 'Did subject previously report having a civil union' /
   W4_XSS    'Respondent is in same sex couple and does not have domestic partnership' /
   W4_Q1     'Are you still married to [xnamep]?' /
   W4_Q2     '(w4_q2) Are you currently living with [xnamep]?' /
   W4_QUALITY 'In general, how would you describe the quality of your relationship with [xnamep' /
   W4_ATTRACTIVE 'How attractive are you?' /
   W4_ATTRACTIVE_PARTNER 'How attractive is [xnamep]?' /
   W4_Q3     'How did your marriage to [xnamep] end?' /
   W4_Q4     'Between you and [xnamep], who wanted the [divorce/separation] more?' /
   W4_MBTIMING_YEAR '[YEAR] When did you get [divorced/separated] from [xnamep]? You last told us you' /
   W4_MBTIMING_MONTH '[Month] When did you get [divorced/separated] from [xnamep]?' /
   W4_Q5     'Are you still in a romantic relationship with [xnamep]?' /
   W4_Q6     '(w4_q6) Are you currently living with [xnamep]?' /
   W4_Q7     'In the past [xyears] have you and [xnamep] gotten married?' /
   W4_MAR_YEAR '[YEAR] When did you get married with [xnamep]? We last contacted you in [xmonth]' /
   W4_MAR_MONTH '[MONTH] When did you get married with [xnamep]? We last contacted you in [xmonth' /
   W4_CIV_YEAR '[YEAR] When did you get a domestic partnership or civil union agreement with [xn' /
   W4_Q8_A   '(w4_q8_a) In the past [xyears], have you and [xnamep] gotten a formal domestic partnership' /
   W4_Q8_B   '(w4_q8_b) In the past [xyears], have you and [xnamep] gotten a formal domestic partnership' /
   W4_Q9     'How did your relationship with [xnamep] end?' /
   W4_Q10    'Between you and [xnamep], who wanted more to break up?' /
   W4_NONMBTIMING_YEAR '[YEAR] When did you break up with [xnamep]? You last told us you were in a relat' /
   W4_NONMBTIMING_MONTH '[MONTH] When did you break up with [xnamep]? You last told us you were in a rela' /
   RELATIONSHIP_QUALITY_W4 'wave 4 relationship quality, 1-5 scale 5 is best' /
   W4_BROKE_UP 'break-ups, divorces, and partner mortality recorded in W4' /
   W234_COMBO_BREAKUP 'outcome over 3 waves, incl all respondents who completed at least 1 follow-up' /
   PP4_PPEDUC '(pp4_ppeduc) Education (Highest Degree Received)' /
   PP4_PPEDUCAT '(pp4_ppeducat) Education (Categorical)' /
   PP4_PPETHM '(pp4_ppethm) Race / Ethnicity' /
   PP4_PPHHHEAD 'Household Head (pp4_pphhhead)' /
   PP4_PPHHSIZE '(pp4_pphhsize) Household Size' /
   PP4_PPHOUSE '(pp4_pphouse) Housing Type' /
   PP4_PPINCIMP 'Household Income (pp4_ppincimp)' /
   PP4_PPMARIT '(pp4_ppmarit) Marital Status' /
   PP4_PPMSACAT 'MSA Status (pp4_ppmsacat)' /
   PP4_PPREG4 'Region 4 - Based on State of Residence (pp4_ppreg4)' /
   PP4_PPREG9 '(pp4_ppreg9) Region 9 - Based on State of Residence' /
   PP4_PPRENT '(pp4_pprent) Ownership Status of Living Quarters' /
   PP4_PPT01 'Presence of Household Members - Children 0-1' /
   PP4_PPT25 'Presence of Household Members - Children 2-5' /
   PP4_PPT612 'Presence of Household Members - Children 6-12' /
   PP4_PPT1317 'Presence of Household Members - Children 13-17' /
   PP4_PPT18OV 'Presence of Household Members - Adults 18+' /
   PP4_PPWORK '(pp4_ppwork) current employment status' /
   PP4_PPNET 'HH Internet Access' /
   PP4_PPCMDATE_YRMO 'year and month that pp4 was taken in YYYYMM format' /
   PP4_NEWER 'whether pp4 variables are new information compared to pp3, pp2, and pp1' /
   PPA2009_SERVICES_YRMO 'year and month for the new 2009 religious service attendance question' /
   PPA2009_HOW_OFTEN_SERVICES 'How often do you attend religious services? (from 2009)' /
   W5_DURATION 'interview duration in minutes (online surveys only)(W5_DURATION)' /
   W5_SOURCE 'Survey type (W5_SOURCE)' /
   W5_COMPLETE 'Wave 5 completion flag (W5_COMPLETE)' /
   W5_STATUS 'Status of Respondent (W5_STATUS)' /
   W5X_QUALIFIED 'Is subject qualified to take wave5 or not (W5X_QUALIFIED)' /
   W5X_MARRY 'married as of last contact before wave 5 (W5X_MARRY)' /
   W5X_LAST  'how many years ago was last contact (W5X_LAST)' /
   W5X_YEAR  'year of last contact (W5X_YEAR)' /
   W5X_CIVIL 'does subject have a civil union or domestic partnership prior to wave 5 (W5X_CIVIL)' /
   W5X_MONTH 'month of last contact (W5X_MONTH)' /
   W5X_CIVYEAR 'year last asked the civil union question (W5X_CIVYEAR)' /
   W5X_CIVMONTH 'month last asked the civil union question (W5X_CIVMONTH)' /
   W5_Q1     'Are you still married to [xname]? (W5_Q1)' /
   W5_Q2     'Are you currently living with [wxnamep]? (W5_Q2)' /
   W5_SEX_FREQUENCY 'During the last 12 months, about how often did you have sex with [name]? Was it. (W5_SEX_FREQUENCY)' /
   W5_P_MONOGAMY 'Do you expect [name] to have sexual activity only with you? (W5_P_MONOGAMY)' /
   W5_IDENTITY 'Do you think of yourself as (W5_IDENTITY)' /
   W5_OUTNESS 'Thinking about the important people in your life, how many are aware that you are (W5_OUTNESS)' /
   W5_Q3     'How did your marriage to [name] end? (W5_Q3)' /
   W5_Q4     'Between you and [name], who wanted the [divorce/seperation] more? (W5_Q4)' /
   W5_MBTIMING_MONTH '[MONTH] When did you break up with [name]? You last told us you were in a relationship (W5_MBTIMING_MONTH)' /
   W5_MBTIMING_YEAR '[year] when did you break up with [name]? you last told us you were in a relatio (w5_mbtiming_year)' /
   W5_Q5     'Are you still in a romantic relationship with [name]? (W5_Q5)' /
   W5_Q6     'Are you currently living with [name]? (W5_Q6)' /
   W5_Q7     'In the past [w5_xlast], have you and [name] gotten married? (W5_Q7)' /
   W5_MAR_YEAR '[YEAR] When did you get married with [w5_xnamep]? We last contacted you in [w5_xmonth], [w5_xyear] (W5_MAR_YEAR)' /
   W5_MAR_MONTH '[MONTH] When did you get married with [w5_xnamep]? We last contacted you in [w5_xmonth], [w5_xyear] (W5_MAR_MONTH)' /
   W5_Q8     'Since [year], have you and [name] gotten a formal domestic partnership or civil (W5_Q8)' /
   W5_CIV_YEAR '[YEAR] When did you get a domestic partnership or civil union agreement with [w5_xnamep]? We last asked you about civil unions and domestic partnerships in [xcivmon], [xcivyear] (W5_CIV_YEAR)' /
   W5_CIV_MONTH '[MONTH] When did you get a domestic partnership or civil union agreement with [w5_xnamep]? We last asked you about civil unions and domestic partnerships in [xcivmon], [xcivyear] (W5_CIV_MONTH)' /
   W5_Q9     'How did your relationship with [name] end? (W5_Q9)' /
   W5_Q10    'Between you and [name], who wanted more to break up? (W5_Q10)' /
   W5_NONMBTIMING_YEAR '[YEAR] When did you break up with [name]? You last told us you were in a relationship with [w5_xnamep] in [w5_xmonth], [w5_xyear] (W5_NONMBTIMING_YEAR)' /
   W5_NONMBTIMING_MONTH '[MONTH] When did you break up with [name]? You last told us you were in a relationship with [w5_xnamep] in [w5_xmonth], [w5_xyear] (W5_NONMBTIMING_MONTH)' /
   W5_BROKE_UP 'wave 5 broke up from w5_q3, w5_q9, and text answers (W5_BROKE_UP)' /
   W5_HCMST_INTERVIEW_FIN_YRMO 'when subject finished wave 5 YYYYMM including phone respondents (W5_HCMST_INTERVIEW_FIN_YRMO)' /
   W2345_COMBO_BREAKUP 'outcome over 4 waves, incl all respondents who completed at least 1 follow-up (W2345_COMBO_BREAKUP)' /
   RESPONDED_TO_W234OR5 'whether subject responded to any of the followup surveys through w5 (RESPONDED_TO_W234OR5)' /
   PP5_PPAGE 'Age (PP5_PPAGE)' /
   PP5_PPAGECAT 'Age - 7 Categories (PP5_PPAGECAT)' /
   PP5_PPAGECT4 'Age - 4 Categories (PP5_PPAGECT4)' /
   PP5_PPEDUC 'Education (Highest Degree Received) (PP5_PPEDUC)' /
   PP5_PPEDUCAT 'Education (Categorical) (PP5_PPEDUCAT)' /
   PP5_PPETHM 'Race / Ethnicity (PP5_PPETHM)' /
   PP5_PPGENDER 'Gender (PP5_PPGENDER)' /
   PP5_PPHHHEAD 'Household Head (PP5_PPHHHEAD)' /
   PP5_PPHHSIZE 'Household Size (PP5_PPHHSIZE)' /
   PP5_PPHOUSE 'Housing Type (PP5_PPHOUSE)' /
   PP5_PPINCIMP 'Household Income (PP5_PPINCIMP)' /
   PP5_PPMARIT 'Marital Status (PP5_PPMARIT)' /
   PP5_PPCMDATE_YRMO 'year and month of most recent background survey, in YYYYMM format (PP5_PPCMDATE_YRMO)' /
   PP5_NEWER 'is pp5 more recent than pp4 or earlier pp surveys? (PP5_NEWER)' /
   PP5_PPMSACAT 'MSA Status(PP5_PPMSACAT)' /
   PP5_PPREG4 'Region 4 - Based on State of Residence (PP5_PPREG4)' /
   PP5_PPREG9 'Region 9 - Based on State of Residence (PP5_PPREG9)' /
   PP5_PPRENT 'Ownership Status of Living Quarters (PP5_PPRENT)' /
   PP5_PPT01 'Presence of Household Members - Children 0-1 PP5_PPT01)' /
   PP5_PPT25 'Presence of Household Members - Children 2-5 (PP5_PPT25)' /
   PP5_PPT612 'Presence of Household Members - Children 6-12 (PP5_PPT612)' /
   PP5_PPT1317 'Presence of Household Members - Children 13-17 (PP5_PPT1317)' /
   PP5_PPT18OV 'Presence of Household Members - Adults 18+ (PP5_PPT18OV)' /
   PP5_PPWORK 'Current Employment Status (PP5_PPWORK)' /
   PP5_PPNET 'HH Internet Access (PP5_PPNET)' /
   PPMARIT_2014 'repeat background Q Are you now Married, widow, div., never mar, live w partner? (PPMARIT_2014)' /
   PPCMARIT_2014_YRMO 'YYYYMM of ppmarit_2014 (PPCMARIT_2014_YRMO)' /
   PPMARIT_2013 'repeat background Q Are you now Married, widow, div., never mar, live w partner? (PPMARIT_2013)' /
   PPCMARIT_2013_YRMO 'YYYYMM of ppmarit_2013 (PPCMARIT_2013_YRMO)' /
   PPMARIT_2012 'repeat background Q Are you now Married, widow, div., never mar, live w partner? (PPMARIT_2012)' /
   PPCMARIT_2012_YRMO 'YYYYMM of ppmarit_2012 (PPCMARIT_2012_YRMO)' /
   PPMARIT_2011 'repeat background Q Are you now Married, widow, div., never mar, live w partner? (PPMARIT_2011)' /
   PPCMARIT_2011_YRMO 'YYYYMM of ppmarit_2011 (PPCMARIT_2011_YRMO)' /
   PPMARIT_2010 'repeat background Q Are you now Married, widow, div., never mar, live w partner? (PPMARIT_2010)' /
   PPCMARIT_2010_YRMO 'YYYYMM of ppmarit_2010 (PPCMARIT_2010_YRMO)' /
   PPMARIT_2009 'repeat background Q Are you now Married, widow, div., never mar, live w partner? (PPMARIT_2009)' /
   PPCMARIT_2009_YRMO 'YYYYMM of ppmarit_2009 (PPCMARIT_2009_YRMO)' /
   PPMARIT_2007 'repeat background Q Are you now Married, widow, div., never mar, live w partner? (PPMARIT_2007)' /
   PPCMARIT_2007_YRMO 'YYYYMM of ppmarit_2007 (PPCMARIT_2007_YRMO)' /
   .


* SPSS VALUE LABELS COMMAND.

VALUE LABELS
   PPAGE     -2 'not asked' -1 'refused' /
   PPAGECAT  1 '18-24' 2 '25-34' 3 '35-44' 4 '45-54' 5 '55-64' 6 '65-74'
             7 '75+' 99 'under 18' /
   PPAGECT4  1 '18-29' 2 '30-44' 3 '45-59' 4 '60+' 99 'under 18' /
   PPEDUC    -2 'not asked' -1 'refused' 1 'no formal education'
             2 '1st, 2nd, 3rd, or 4th grade' 3 '5th or 6th grade'
             4 '7th or 8th grade' 5 '9th grade' 6 '10th grade' 7 '11th grade'
             8 '12th grade no diploma'
       9 'high school graduate - high school diploma or the equivalent (ged)'
             10 'some college, no degree' 11 'associate degree'
             12 'bachelors degree' 13 'masters degree'
             14 'professional or doctorate degree' /
   PPEDUCAT  -2 'not asked' -1 'refused' 1 'less than high school'
             2 'high school' 3 'some college'
             4 'bachelor''s degree or higher' /
   PPETHM    -2 'not asked' -1 'refused' 1 'white, non-hispanic'
             2 'black, non-hispanic' 3 'other, non-hispanic' 4 'hispanic'
             5 '2+ races, non-hispanic' /
   PPGENDER  -2 'not asked' -1 'refused' 1 'male' 2 'female' /
   PPHHHEAD  -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PPHOUSE   -2 'not asked' -1 'refused'
             1 'a one-family house detached from any other house'
             2 'a one-family house attached to one or more houses'
             3 'a building with 2 or more apartments' 4 'a mobile home'
             5 'boat, rv, van, etc.' /
   PPINCIMP  -2 'not asked' -1 'refused' 1 'less than $5,000'
             2 '$5,000 to $7,499' 3 '$7,500 to $9,999' 4 '$10,000 to $12,499'
             5 '$12,500 to $14,999' 6 '$15,000 to $19,999'
             7 '$20,000 to $24,999' 8 '$25,000 to $29,999'
             9 '$30,000 to $34,999' 10 '$35,000 to $39,999'
             11 '$40,000 to $49,999' 12 '$50,000 to $59,999'
             13 '$60,000 to $74,999' 14 '$75,000 to $84,999'
             15 '$85,000 to $99,999' 16 '$100,000 to $124,999'
             17 '$125,000 to $149,999' 18 '$150,000 to $174,999'
             19 '$175,000 or more' /
   PPMARIT   -2 'not asked' -1 'refused' 1 'married' 2 'widowed' 3 'divorced'
             4 'separated' 5 'never married' 6 'living with partner' /
   PPMSACAT  -2 'not asked' -1 'refused' 0 'non-metro' 1 'metro' /
   PPREG4    -2 'not asked' -1 'refused' 1 'northeast' 2 'midwest' 3 'south'
             4 'west' /
   PPREG9    1 'new england' 2 'mid-atlantic' 3 'east-north central'
             4 'west-north central' 5 'south atlantic' 6 'east-south central'
             7 'west-south central' 8 'mountain' 9 'pacific' /
   PPRENT    -2 'not asked' -1 'refused'
             1 'owned or being bought by you or someone in your household'
             2 'rented for cash' 3 'occupied without payment of cash rent' /
   PPT01     -2 'not asked' -1 'refused' /
   PPT1317   -2 'not asked' -1 'refused' /
   PPT18OV   -2 'not asked' -1 'refused' /
   PPT25     -2 'not asked' -1 'refused' /
   PPT612    -2 'not asked' -1 'refused' /
   PPWORK    -2 'not asked' -1 'refused' 1 'working - as a paid employee'
             2 'working - self-employed'
             3 'not working - on temporary layoff from a job'
             4 'not working - looking for work' 5 'not working - retired'
             6 'not working - disabled' 7 'not working - other' /
   PPNET     0 'no' 1 'yes' /
   PPQ14ARACE -2 'not asked' -1 'refused' 1 'white'
             2 'black, or african american'
             3 'american indian or alaska native' 4 'asian indian'
             5 'chinese' 6 'filipino' 7 'japanese' 8 'korean' 9 'vietnamese'
             10 'other asian' 11 'native hawaiian' 12 'guamanian or chamorro'
             13 'samoan' 14 'other pacific islander' 15 'some other race' /
   PPHISPAN  -2 'not asked' -1 'refused' 1 'no, i am not'
             2 'yes, mexican, mexican-american, chicano'
             3 'yes, puerto rican' 4 'yes, cuban' 5 'yes, central american'
             6 'yes, south american' 7 'yes, caribbean'
             8 'yes, other spanish/hispanic/latino' /
   PPRACE_WHITE -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PPRACE_BLACK -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PPRACE_NATIVEAMERICAN -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PPRACE_ASIANINDIAN -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PPRACE_CHINESE -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PPRACE_FILIPINO -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PPRACE_JAPANESE -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PPRACE_KOREAN -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PPRACE_VIETNAMESE -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PPRACE_OTHERASIAN -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PPRACE_HAWAIIAN -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PPRACE_GUAMANIAN -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PPRACE_SAMOAN -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PPRACE_OTHERPACIFICISLANDER -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PPRACE_SOMEOTHERRACE -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PAPGLB_FRIEND -2 'not asked' -1 'refused' 1 'yes, friends'
             2 'yes, relatives' 3 'yes, both' 4 'no'
             5 'i would prefer to not answer this question' /
   PPPARTYID3 -2 'not asked' -1 'refused' 1 'republican' 2 'other'
             3 'democrat' /
   PAPEVANGELICAL -2 'not asked' -1 'refused' 1 'yes' 2 'no' /
   PAPRELIGION 1 'Baptist- any denomination'
          2 'Protestant (e.g., Methodist, Lutheran, Presbyterian, Episcopal)'
             3 'Catholic' 4 'Mormon' 5 'Jewish' 6 'Muslim' 7 'Hindu'
             8 'Buddhist' 9 'Pentecostal' 10 'Eastern Orthodox'
             11 'other Christian' 12 'other non-Christian, please specify'
             13 'None' /
   PPHHCOMP11_MEMBER2_GENDER -1 'please select' 2 'male' 3 'female' /
   PPHHCOMP11_MEMBER3_GENDER -1 'please select' 2 'male' 3 'female' /
   PPHHCOMP11_MEMBER4_GENDER -1 'please select' 2 'male' 3 'female' /
   PPHHCOMP11_MEMBER5_GENDER -1 'please select' 2 'male' 3 'female' /
   PPHHCOMP11_MEMBER6_GENDER -1 'please select' 2 'male' 3 'female' /
   PPHHCOMP11_MEMBER7_GENDER -1 'please select' 2 'male' 3 'female' /
   PPHHCOMP11_MEMBER8_GENDER -1 'please select' 2 'male' 3 'female' /
   PPHHCOMP11_MEMBER9_GENDER -1 'please select' 2 'male' 3 'female' /
   PPHHCOMP11_MEMBER10_GENDER -1 'please select' 2 'male' 3 'female' /
   PPHHCOMP11_MEMBER11_GENDER -1 'please select' 2 'male' 3 'female' /
   PPHHCOMP11_MEMBER12_GENDER -1 'please select' 2 'male' 3 'female' /
   PPHHCOMP11_MEMBER13_GENDER -1 'please select' 2 'male' 3 'female' /
   PPHHCOMP11_MEMBER14_GENDER -1 'please select' 2 'male' 3 'female' /
   PPHHCOMP11_MEMBER15_GENDER -1 'please select' 2 'male' 3 'female' /
   PPHHCOMP11_MEMBER2_RELATIONSHIP -1 'please select' 2 'spouse'
             3 'child (biological, adopted, or stepchild)' 4 'grandchild'
             5 'parent' 6 'sibling' 7 'other relative' 8 'unmarried partner'
             9 'housemate/roommate' 10 'other non-relative' /
   PPHHCOMP11_MEMBER3_RELATIONSHIP -1 'please select' 2 'spouse'
             3 'child (biological, adopted, or stepchild)' 4 'grandchild'
             5 'parent' 6 'sibling' 7 'other relative' 8 'unmarried partner'
             9 'housemate/roommate' 10 'other non-relative' /
   PPHHCOMP11_MEMBER4_RELATIONSHIP -1 'please select' 2 'spouse'
             3 'child (biological, adopted, or stepchild)' 4 'grandchild'
             5 'parent' 6 'sibling' 7 'other relative' 8 'unmarried partner'
             9 'housemate/roommate' 10 'other non-relative' /
   PPHHCOMP11_MEMBER5_RELATIONSHIP -1 'please select' 2 'spouse'
             3 'child (biological, adopted, or stepchild)' 4 'grandchild'
             5 'parent' 6 'sibling' 7 'other relative' 8 'unmarried partner'
             9 'housemate/roommate' 10 'other non-relative' /
   PPHHCOMP11_MEMBER6_RELATIONSHIP -1 'please select' 2 'spouse'
             3 'child (biological, adopted, or stepchild)' 4 'grandchild'
             5 'parent' 6 'sibling' 7 'other relative' 8 'unmarried partner'
             9 'housemate/roommate' 10 'other non-relative' /
   PPHHCOMP11_MEMBER7_RELATIONSHIP -1 'please select' 2 'spouse'
             3 'child (biological, adopted, or stepchild)' 4 'grandchild'
             5 'parent' 6 'sibling' 7 'other relative' 8 'unmarried partner'
             9 'housemate/roommate' 10 'other non-relative' /
   PPHHCOMP11_MEMBER8_RELATIONSHIP -1 'please select' 2 'spouse'
             3 'child (biological, adopted, or stepchild)' 4 'grandchild'
             5 'parent' 6 'sibling' 7 'other relative' 8 'unmarried partner'
             9 'housemate/roommate' 10 'other non-relative' /
   PPHHCOMP11_MEMBER9_RELATIONSHIP -1 'please select' 2 'spouse'
             3 'child (biological, adopted, or stepchild)' 4 'grandchild'
             5 'parent' 6 'sibling' 7 'other relative' 8 'unmarried partner'
             9 'housemate/roommate' 10 'other non-relative' /
   PPHHCOMP11_MEMBER10_RELATIONSHIP -1 'please select' 2 'spouse'
             3 'child (biological, adopted, or stepchild)' 4 'grandchild'
             5 'parent' 6 'sibling' 7 'other relative' 8 'unmarried partner'
             9 'housemate/roommate' 10 'other non-relative' /
   PPHHCOMP11_MEMBER11_RELATIONSHIP -1 'please select' 2 'spouse'
             3 'child (biological, adopted, or stepchild)' 4 'grandchild'
             5 'parent' 6 'sibling' 7 'other relative' 8 'unmarried partner'
             9 'housemate/roommate' 10 'other non-relative' /
   PPHHCOMP11_MEMBER12_RELATIONSHIP -1 'please select' 2 'spouse'
             3 'child (biological, adopted, or stepchild)' 4 'grandchild'
             5 'parent' 6 'sibling' 7 'other relative' 8 'unmarried partner'
             9 'housemate/roommate' 10 'other non-relative' /
   PPHHCOMP11_MEMBER13_RELATIONSHIP -1 'please select' 2 'spouse'
             3 'child (biological, adopted, or stepchild)' 4 'grandchild'
             5 'parent' 6 'sibling' 7 'other relative' 8 'unmarried partner'
             9 'housemate/roommate' 10 'other non-relative' /
   PPHHCOMP11_MEMBER14_RELATIONSHIP -1 'please select' 2 'spouse'
             3 'child (biological, adopted, or stepchild)' 4 'grandchild'
             5 'parent' 6 'sibling' 7 'other relative' 8 'unmarried partner'
             9 'housemate/roommate' 10 'other non-relative' /
   PPHHCOMP11_MEMBER15_RELATIONSHIP -1 'please select' 2 'spouse'
             3 'child (biological, adopted, or stepchild)' 4 'grandchild'
             5 'parent' 6 'sibling' 7 'other relative' 8 'unmarried partner'
             9 'housemate/roommate' 10 'other non-relative' /
   IRB_CONSENT -1 'refused' 1 'yes, i agree to participate'
             2 'no, i don''t agree to participate' /
   QFLAG     1 'partnered' 2 'no spouse or partner or otherwise unqualified'
             /
   GLBSTATUS 0 'not glb' 1 'glb' /
   PAPGLB_STATUS -2 'not asked' -1 'refused' 1 'yes' 2 'no'
             3 'i would prefer to not answer this question' /
   RECSOURCE 1 'gen pop sample' 2 'glb augment sample'
             3 'glb withdrawn sample' 4 'glb item refused sample' /
   S1        -1 'refused' 1 'yes, i am married' 2 'no, i am not married' /
   S1A       -1 'refused' 1 'yes' 2 'no'
             3 'i would prefer not to answer this question' /
   S2        -1 'refused'
             1 'yes, i have a sexual partner (boyfriend or girlfriend)'
             2 'i have a romantic partner who is not yet a sexual partner'
 3 'no, i am single, with no boyfriend, no girlfriend and no romantic or sexual partner'
             /
   Q3_CODES  -1 'refused' /
   Q4        -1 'refused' 1 'male' 2 'female' 3 'other, please specify' /
   Q5        -1 'refused' 1 'yes, we are a same-sex couple'
             2 'no, we are an opposite-sex couple' /
   Q6A       -1 'refused' 1 'no (not latino or hispanic)'
             2 'yes, mexican, mexican american, chicano'
             3 'yes, puerto rican' 4 'yes, cuban'
             5 'yes, other latino/hispanic' /
   Q6B       -1 'refused' 1 'white' 2 'black or african american'
             3 'american indian, aleut, or eskimo'
             4 'asian or pacific islander' 5 'other (please specify)' /
   Q7A       -1 'refused' 1 'yes' 2 'no' /
   Q7B       -1 'refused' 1 'baptist - any denomination'
           2 'protestant (e.g. methodist, lutheran, presbyterian, episcopal)'
             3 'catholic' 4 'mormon' 5 'jewish' 6 'muslim' 7 'hindu'
             8 'buddhist' 9 'pentecostal' 10 'eastern orthodox'
             11 'other christian' 12 'other non-christian, please specify'
             13 'none' /
   Q8A       -1 'refused' 1 'yes, the same' 2 'no, has changed religions' /
   Q8B       -1 'refused' 1 'baptist - any denomination'
           2 'protestant (e.g. methodist, lutheran, presbyterian, episcopal)'
             3 'catholic' 4 'mormon' 5 'jewish' 6 'muslim' 7 'hindu'
             8 'buddhist' 9 'pentecostal' 10 'eastern orthodox'
             11 'other christian' 12 'other non-christian, please specify'
             13 'none' /
   Q10       -1 'refused' 1 'no formal education' 2 '1st - 4th grade'
             3 '5th or 6th grade' 4 '7th or 8th grade' 5 '9th grade'
             6 '10th grade' 7 '11th grade' 8 '12th grade no diploma'
             9 'hs graduate or ged' 10 'some college, no degree'
             11 'associate degree' 12 'bachelor''s degree'
             13 'master''s degree' 14 'professional or doctorate degree' /
   Q11       -1 'refused' 1 'no formal education' 2 '1st - 4th grade'
             3 '5th or 6th grade' 4 '7th or 8th grade' 5 '9th grade'
             6 '10th grade' 7 '11th grade' 8 '12th grade no diploma'
             9 'hs graduate or ged' 10 'some college, no degree'
             11 'associate degree' 12 'bachelor''s degree'
             13 'master''s degree' 14 'professional or doctorate degree' /
   Q12       -1 'refused' 1 'republican' 2 'democrat' 3 'independent'
             4 'another party, please specify' 5 'no preference' /
   Q13A      -1 'refused' 1 'yes, the same' 2 'no, i have changed religions'
             /
   Q13B      -1 'refused' 1 'baptist - any denomination'
           2 'protestant (e.g. methodist, lutheran, presbyterian, episcopal)'
             3 'catholic' 4 'mormon' 5 'jewish' 6 'muslim' 7 'hindu'
             8 'buddhist' 9 'pentecostal' 10 'eastern orthodox'
             11 'other christian' 12 'other non-christian, please specify'
             13 'none' /
   Q14       -1 'refused' 1 'no formal education' 2 '1st - 4th grade'
             3 '5th or 6th grade' 4 '7th or 8th grade' 5 '9th grade'
             6 '10th grade' 7 '11th grade' 8 '12th grade no diploma'
             9 'hs graduate or ged' 10 'some college, no degree'
             11 'associate degree' 12 'bachelor''s degree'
             13 'master''s degree' 14 'professional or doctorate degree' /
   Q15A1_COMPRESSED -1 'refused' 1 'United States' 2 'all others' /
   Q16       -1 'refused' /
   Q17A      -1 'refused' 1 'once (this is my first marriage)' 2 'twice'
             3 'three times' 4 'four or more times' /
   Q17B      -1 'refused' 1 'never married' 2 'once' 3 'twice'
             4 'three times' 5 'four or more times' /
   Q17C      -1 'refused' 1 'i am sexually attracted only to men'
 2 'i am mostly sexually attracted to men, less often sexually attracted to women'
             3 'i am equally sexually attracted to men and women'
 4 'i am mostly sexually attracted to women, less often sexually attracted to men'
             5 'i am sexually attracted only to women' /
   Q17D      -1 'refused' 1 'i am sexually attracted only to women'
 2 'i am mostly sexually attracted to women, less often sexually attracted to men'
             3 'i am equally sexually attracted to men and women'
 4 'i am mostly sexually attracted to men, less often sexually attracted to women'
             5 'i am sexually attracted only to men' /
   GENDER_ATTRACTION 1 'opposite gender only' 2 'mostly opposite'
             3 'both genders equally' 4 'same gender mostly'
             5 'only same gender' /
   Q18A_1    -1 'refused' 0 'no' 1 'yes' /
   Q18A_2    -1 'refused' 0 'no' 1 'yes' /
   Q18A_3    -1 'refused' 0 'have either DP or CU' 1 'have neither DP nor CU'
             /
   Q18A_REFUSED 0 'no' 1 'yes' /
   Q18B_CODES -1 'refused' /
   Q18C_CODES -1 'refused' /
   Q19       -1 'refused' 1 'yes' 2 'no' /
   Q20       -1 'refused' 1 'yes' 2 'no' /
   Q21A_REFUSAL 1 'refused' /
   Q21B_REFUSAL 1 'refused' /
   Q21C_REFUSAL 1 'refused' /
   Q21D_REFUSAL 1 'refused' /
   Q21E_REFUSAL 1 'refused' /
   Q22       -1 'refused' 1 'less than one month' 2 '1-3 months'
             3 '4-6 months' 4 '7 months - 1 year'
             5 'more than 1 year, less than 2 years'
             6 'more than 2 years, less than 3 years' 7 '3 years or more' /
   Q23       -1 'refused' 1 'i earned more'
             2 'we earned about the same amount' 3 'partner earned more' /
   Q24_CODES -1 'refused' 1 'answered but refused to provide information' /
   Q25       -1 'refused' 1 'same high school' 2 'different high school' /
   Q26       -1 'refused' 1 'attended same college or university'
             2 'did not attend same college or university' /
   Q27       -1 'refused' 1 'yes' 2 'no' /
   Q28       -1 'refused' 1 'yes' 2 'no' /
   Q29       -1 'refused' 1 'father and mother' 2 'father only'
             3 'mother only' 4 'neither father nor mother are alive' /
   Q30       -1 'refused' 1 'approve' 2 'neither approve nor disapprove'
             3 'disapprove' 4 'do not know' /
   Q31_1     -1 'refused' 0 'no' 1 'yes' /
   Q31_2     -1 'refused' 0 'no' 1 'yes' /
   Q31_3     -1 'refused' 0 'no' 1 'yes' /
   Q31_4     -1 'refused' 0 'no' 1 'yes' /
   Q31_5     -1 'refused' 0 'no' 1 'yes' /
   Q31_6     -1 'refused' 0 'no' 1 'yes' /
   Q31_7     -1 'refused' 0 'no' 1 'yes' /
   Q31_8     -1 'refused' 0 'no' 1 'yes' /
   Q31_9     -1 'refused' 0 'no' 1 'yes' /
   Q31_OTHER_TEXT_ENTERED 0 'No' 1 'Yes' /
   Q32       -1 'refused'
             1 'yes, a social networking site (like facebook or myspace)'
             2 'no, we did not meet through the internet'
 3 'yes, an internet dating or matchmaking site (like eharmony or match.com)'
           4 'yes, an internet classified advertising site (like craigslist)'
             5 'yes, an internet chat room'
             6 'yes, a different kind of internet service' /
   Q33_1     -1 'refused' 0 'no' 1 'yes' /
   Q33_2     -1 'refused' 0 'no' 1 'yes' /
   Q33_3     -1 'refused' 0 'no' 1 'yes' /
   Q33_4     -1 'refused' 0 'no' 1 'yes' /
   Q33_5     -1 'refused' 0 'no' 1 'yes' /
   Q33_6     -1 'refused' 0 'no' 1 'yes' /
   Q33_7     -1 'refused' 0 'no' 1 'yes' /
   Q33_OTHER_TEXT_ENTERED 0 'No' 1 'Yes' /
   Q34       -1 'refused' 1 'excellent' 2 'good' 3 'fair' 4 'poor'
             5 'very poor' /
   Q35_CODES -1 'refused' /
   Q35_TEXT_ENTERED 0 'No' 1 'Yes' /
   Q24_MET_ONLINE 0 'met offline' 1 'met online' /
   Q24_R_COWORK 0 'No' 1 'Yes' /
   Q24_R_FRIEND 0 'No' 1 'Yes' /
   Q24_R_FAMILY 0 'No' 1 'Yes' /
   Q24_R_SIG_OTHER 0 'No' 1 'Yes' /
   Q24_R_NEIGHBOR 0 'No' 1 'Yes' /
   Q24_P_COWORK 0 'No' 1 'Yes' /
   Q24_P_FRIEND 0 'No' 1 'Yes' /
   Q24_P_FAMILY 0 'No' 1 'Yes' /
   Q24_P_SIG_OTHER 0 'No' 1 'Yes' /
   Q24_P_NEIGHBOR 0 'No' 1 'Yes' /
   Q24_BTWN_I_COWORK 0 'No' 1 'Yes' /
   Q24_BTWN_I_FRIEND 0 'No' 1 'Yes' /
   Q24_BTWN_I_FAMILY 0 'No' 1 'Yes' /
   Q24_BTWN_I_SIG_OTHER 0 'No' 1 'Yes' /
   Q24_BTWN_I_NEIGHBOR 0 'No' 1 'Yes' /
   Q24_SCHOOL 0 'No' 1 'Yes' /
   Q24_COLLEGE 0 'No' 1 'Yes' /
   Q24_MILITARY 0 'No' 1 'Yes' /
   Q24_CHURCH 0 'No' 1 'Yes' /
   Q24_VOL_ORG 0 'No' 1 'Yes' /
   Q24_CUSTOMER 0 'No' 1 'Yes' /
   Q24_BAR_RESTAURANT 0 'No' 1 'Yes' /
   Q24_INTERNET_DATING 0 'No' 1 'Yes' /
   Q24_INTERNET_SOCIAL_NETWORKING 0 'No' 1 'Yes' /
   Q24_INTERNET_GAME 0 'No' 1 'Yes' /
   Q24_INTERNET_CHAT 0 'No' 1 'Yes' /
   Q24_INTERNET_COMMUNITY 0 'No' 1 'Yes' /
   Q24_INTERNET_OTHER 0 'No' 1 'Yes' /
   Q24_PUBLIC 0 'No' 1 'Yes' /
   Q24_PRIVATE_PARTY 0 'No' 1 'Yes' /
   Q24_BLIND_DATE 0 'No' 1 'Yes' /
   Q24_VACATION 0 'No' 1 'Yes' /
   Q24_SINGLES_SERVICE_NON_INTERNET 0 'No' 1 'Yes' /
   Q24_BUSINESS_TRIP 0 'No' 1 'Yes' /
   Q24_WORK_NEIGHBOR 0 'No' 1 'Yes' /
   Q24_FAM_SISTER_ACTIVE 0 'No' 1 'Yes' /
   Q24_FAM_BROTHER_ACTIVE 0 'No' 1 'Yes' /
   Q24_FAM_MOTHER_ACTIVE 0 'No' 1 'Yes' /
   Q24_FAM_FATHER_ACTIVE 0 'No' 1 'Yes' /
   Q24_FAM_OTHER_ACTIVE 0 'No' 1 'Yes' /
   Q24_FAM_COUSINS_ACTIVE 0 'No' 1 'Yes' /
   Q24_FAM_AUNT_NIECE_ACTIVE 0 'No' 1 'Yes' /
   Q24_FAM_UNCLE_NEPHEW_ACTIVE 0 'No' 1 'Yes' /
   Q24_FAM_GRANDMOTHER_ACTIVE 0 'No' 1 'Yes' /
   Q24_FAM_GRANDFATHER_ACTIVE 0 'No' 1 'Yes' /
   Q24_FAM_SISTER_PASSIVE 0 'No' 1 'Yes' /
   Q24_FAM_BROTHER_PASSIVE 0 'No' 1 'Yes' /
   Q24_FAM_MOTHER_PASSIVE 0 'No' 1 'Yes' /
   Q24_FAM_FATHER_PASSIVE 0 'No' 1 'Yes' /
   Q24_FAM_OTHER_PASSIVE 0 'No' 1 'Yes' /
   Q24_FAM_COUSINS_PASSIVE 0 'No' 1 'Yes' /
   Q24_FAM_AUNT_NIECE_PASSIVE 0 'No' 1 'Yes' /
   Q24_FAM_UNCLE_NEPHEW_PASSIVE 0 'No' 1 'Yes' /
   Q24_FAM_GRANDMOTHER_PASSIVE 0 'No' 1 'Yes' /
   Q24_FAM_GRANDFATHER_PASSIVE 0 'No' 1 'Yes' /
   Q24_FAM_FEMALE 0 'No' 1 'Yes' /
   Q24_FAM_MALE 0 'No' 1 'Yes' /
   MARRYNOTREALLY 0 'married' 1 'not legally married' /
   CIVILNOTREALLY 0 'real civ union or dom partnership'
             1 'perhaps not real civ union or dom partnership' /
   PARTNER_DECEASED 0 'not deceased' 1 'apparently deceased' /
   PARTNER_RELIGION_RECLASSIFIED -1 'refused' 1 'baptist - any denomination'
           2 'protestant (e.g. methodist, lutheran, presbyterian, episcopal)'
             3 'catholic' 4 'mormon' 5 'jewish' 6 'muslim' 7 'hindu'
             8 'buddhist' 9 'pentecostal' 10 'eastern orthodox'
             11 'other christian' 12 'other non-christian, please specify'
             13 'none' /
   PARTNER_RELIGION_CHILD_RECLASS -1 'refused' 1 'baptist - any denomination'
           2 'protestant (e.g. methodist, lutheran, presbyterian, episcopal)'
             3 'catholic' 4 'mormon' 5 'jewish' 6 'muslim' 7 'hindu'
             8 'buddhist' 9 'pentecostal' 10 'eastern orthodox'
             11 'other christian' 12 'other non-christian, please specify'
             13 'none' /
   OWN_RELIGION_CHILD_RECLASS -1 'refused' 1 'baptist - any denomination'
           2 'protestant (e.g. methodist, lutheran, presbyterian, episcopal)'
             3 'catholic' 4 'mormon' 5 'jewish' 6 'muslim' 7 'hindu'
             8 'buddhist' 9 'pentecostal' 10 'eastern orthodox'
             11 'other christian' 12 'other non-christian, please specify'
             13 'none' /
   Q32_INTERNET 0 'met offline according to q32'
             1 'met online according to q32' /
   HOW_MET_ONLINE
             1 'reconnected: already knew partner but reconnected online'
   2 'Mediated: Online connection was mediated by friends, family, or others'
 3 'Previously Strangers: Before online connection respondent and partner were strangers'
 4 'We cannot tell from the existed data whether the respondent and partner knew each other prior to online connection'
 5 'Probably Did Not meet partner online, despite positive answer to q32 or q24'
             /
   EITHER_INTERNET 0 'No' 1 'Yes' /
   EITHER_INTERNET_ADJUSTED
             -1 'probably not met online, q32 and q24 disagree'
             0 'not met online' 1 'met online' /
   SAME_SEX_COUPLE 0 'different sex couple' 1 'same-sex couple' /
   POTENTIAL_PARTNER_GENDER_RECODES -1 'refused' 1 'male' 2 'female'
             3 'other, please specify' /
   ALT_PARTNER_GENDER -1 'refused' 1 'male' 2 'female'
             3 'other, please specify' /
   HOW_LONG_AGO_FIRST_MET_CAT 1 '0-2' 2 '3-5' 3 '6-10' 4 '11-15' 5 '16-20'
             6 '21-30' 7 '31+' /
   RESPONDENT_RACE 1 'NH white' 2 'NH black' 3 'NH Amer Indian'
             4 'NH Asian Pac Islander' 5 'NH Other' 6 'Hispanic' /
   PARTNER_RACE 1 'NH white' 2 'NH black' 3 'NH Amer Indian'
             4 'NH Asian Pac Islander' 5 'NH Other' 6 'Hispanic' /
   MET_THROUGH_FRIENDS 0 'not met through friends' 1 'meet through friends' /
   MET_THROUGH_FAMILY 0 'not met through family' 1 'met through family' /
   MET_THROUGH_AS_NEIGHBORS 0 'did not meet through or as neighbors'
             1 'met through or as neighbors' /
   MET_THROUGH_AS_COWORKERS 0 'did not meet through or as coworkers'
             1 'met through or as coworkers' /
   RESPONDENT_RELIGION_AT_16 -1 'refused' 1 'baptist - any denomination'
           2 'protestant (e.g. methodist, lutheran, presbyterian, episcopal)'
             3 'catholic' 4 'mormon' 5 'jewish' 6 'muslim' 7 'hindu'
             8 'buddhist' 9 'pentecostal' 10 'eastern orthodox'
             11 'other christian' 12 'other non-christian, please specify'
             13 'none' /
   RESPONDENT_RELIG_16_CAT 1 'Protestant or oth Christian' 2 'Catholic'
             3 'Jewish' 4 'Neither Christian nor Jewish' 5 'No religion' /
   PARTNER_RELIGION_AT_16 -1 'refused' 1 'baptist - any denomination'
           2 'protestant (e.g. methodist, lutheran, presbyterian, episcopal)'
             3 'catholic' 4 'mormon' 5 'jewish' 6 'muslim' 7 'hindu'
             8 'buddhist' 9 'pentecostal' 10 'eastern orthodox'
             11 'other christian' 12 'other non-christian, please specify'
             13 'none' /
   PARTNER_RELIG_16_CAT 1 'Protestant or oth Christian' 2 'Catholic'
             3 'Jewish' 4 'Neither Christian nor Jewish' 5 'No religion' /
   MARRIED   0 'not married' 1 'married' /
   PARENTAL_APPROVAL 0 'don''t approve or don''t know' 1 'approve' /
   HOME_COUNTRY_RECODE -1 'refused' 1 'united states' 2 'cambodia' 3 'canada'
             4 'china' 5 'colombia' 6 'cuba' 7 'dominican republic'
             8 'ecuador' 9 'el salvador' 10 'former yugoslavia' 11 'france'
             12 'germany' 13 'great britain' 14 'greece' 15 'guatemala'
             16 'guyana' 17 'haiti' 18 'honduras' 19 'hungary' 20 'india'
             21 'iran' 22 'ireland' 23 'italy' 24 'jamaica' 25 'japan'
             26 'korea' 27 'laos' 28 'mexico' 29 'nicaragua' 30 'peru'
             31 'philippines' 32 'poland' 33 'portugal' 34 'russia'
             35 'taiwan' 36 'thailand' 37 'trinidad and tobago' 38 'vietnam'
             39 'another country, please specify' /
   US_RAISED 0 'raised outside US' 1 'raised in US' /
   RELATIONSHIP_QUALITY 1 'very poor' 2 'poor' 3 'fair' 4 'good'
             5 'excellent' /
   CORESIDENT 0 'No' 1 'Yes' /
   PP2_AFTERP1 0 'No second background survey'
             1 'Yes second background survey' /
   PP2_PPHHHEAD -2 'not asked' -1 'refused' 0 'no' 1 'yes' /
   PP2_PPHHSIZE -2 'not asked' -1 'refused' /
   PP2_PPHOUSE -2 'not asked' -1 'refused'
             1 'a one-family house detached from any other house'
             2 'a one-family house attached to one or more houses'
             3 'a building with 2 or more apartments' 4 'a mobile home'
             5 'boat, rv, van, etc.' /
   PP2_PPINCIMP -2 'not asked' -1 'refused' 1 'less than $5,000'
             2 '$5,000 to $7,499' 3 '$7,500 to $9,999' 4 '$10,000 to $12,499'
             5 '$12,500 to $14,999' 6 '$15,000 to $19,999'
             7 '$20,000 to $24,999' 8 '$25,000 to $29,999'
             9 '$30,000 to $34,999' 10 '$35,000 to $39,999'
             11 '$40,000 to $49,999' 12 '$50,000 to $59,999'
             13 '$60,000 to $74,999' 14 '$75,000 to $84,999'
             15 '$85,000 to $99,999' 16 '$100,000 to $124,999'
             17 '$125,000 to $149,999' 18 '$150,000 to $174,999'
             19 '$175,000 or more' /
   PP2_PPMARIT -2 'not asked' -1 'refused' 1 'married' 2 'widowed'
             3 'divorced' 4 'separated' 5 'never married'
             6 'living with partner' /
   PP2_PPMSACAT -2 'not asked' -1 'refused' 0 'non-metro' 1 'metro' /
   PP2_PPEDUC -2 'not asked' -1 'refused' 1 'no formal education'
             2 '1st, 2nd, 3rd, or 4th grade' 3 '5th or 6th grade'
             4 '7th or 8th grade' 5 '9th grade' 6 '10th grade' 7 '11th grade'
             8 '12th grade no diploma'
       9 'high school graduate - high school diploma or the equivalent (ged)'
             10 'some college, no degree' 11 'associate degree'
             12 'bachelors degree' 13 'masters degree'
             14 'professional or doctorate degree' /
   PP2_PPEDUCAT -2 'not asked' -1 'refused' 1 'less than high school'
             2 'high school' 3 'some college'
             4 'bachelor''s degree or higher' /
   PP2_PPETHM -2 'not asked' -1 'refused' 1 'white, non-hispanic'
             2 'black, non-hispanic' 3 'other, non-hispanic' 4 'hispanic'
             5 '2+ races, non-hispanic' /
   PP2_PPREG4 -2 'not asked' -1 'refused' 1 'northeast' 2 'midwest' 3 'south'
             4 'west' /
   PP2_PPREG9 1 'new england' 2 'mid-atlantic' 3 'east-north central'
             4 'west-north central' 5 'south atlantic' 6 'east-south central'
             7 'west-south central' 8 'mountain' 9 'pacific' /
   PP2_PPRENT -2 'not asked' -1 'refused'
             1 'owned or being bought by you or someone in your household'
             2 'rented for cash' 3 'occupied without payment of cash rent' /
   PP2_PPT01 -2 'not asked' -1 'refused' /
   PP2_PPT1317 -2 'not asked' -1 'refused' /
   PP2_PPT18OV -2 'not asked' -1 'refused' /
   PP2_PPT25 -2 'not asked' -1 'refused' /
   PP2_PPT612 -2 'not asked' -1 'refused' /
   PP2_PPWORK -2 'not asked' -1 'refused' 1 'working - as a paid employee'
             2 'working - self-employed'
             3 'not working - on temporary layoff from a job'
             4 'not working - looking for work' 5 'not working - retired'
             6 'not working - disabled' 7 'not working - other' /
   PP2_PPNET 0 'no' 1 'yes' /
   PP_IGDR1  0 'value not imputed' 1 'value imputed' /
   PP_IEDUC1 0 'value not imputed' 1 'value imputed' /
   PP2_IGDR2 0 'value not imputed' 1 'value imputed' /
   PP2_IEDUC2 0 'value not imputed' 1 'value imputed' /
   W2_DECEASED 0 'not deceased' 1 'apparently deceased' /
   W2_MULTINAME 1 'includes multiple names' /
   W2_PANELSTAT 1 'active kn panelist' 2 'withdrawn kn panelist' /
   W2_DONOTCONTACT 1 'withdrawn case on noncontact list' 2 'all other cases'
             /
   W2_ASSIGNED 1 'assigned to survey' 2 'not assigned to survey' /
   W2_F1COMPLETE 0 'did not complete followup survey'
             1 'completed followup survey' /
   W2_XMARRY 1 'married' 2 'partnered' /
   W2_XSS    1 'yes, qualified to ask about new domestic parterships' 2 'no'
             /
   W2_SOURCE 1 'online' 2 'telephone' /
   W2_Q1     -1 'refused' 1 'yes' 2 'no' /
   W2_Q2     -1 'refused' 1 'yes' 2 'no' /
   W2_Q3     -1 'refused' 1 'divorce' 2 'separation with no divorce'
             3 '(partner) passed away, is deceased' /
   W2_Q4     -1 'refused' 1 'i wanted the (divorce/separation) more'
             2 '(partner) wanted the (divorce/separation) more'
             3 'we both equally wanted the (divorce/separation)' /
   W2_Q5     -1 'refused' 1 'yes' 2 'no' /
   W2_Q6     -1 'refused' 1 'yes' 2 'no' /
   W2_Q7     -1 'refused' 1 'yes, married (partner)'
             2 'no, did not marry (partner)' /
   W2_Q8     -1 'refused'
   1 'no, we have not gotten a domestic partnership or civil union agreement'
      2 'yes, we have gotten a domestic partnership or civil union agreement'
             /
   W2_Q9     -1 'refused' 1 'we broke up'
             2 '(partner) passed away, is deceased'
             3 'other (please describe)' /
   W2_Q10    -1 'refused' 1 'i wanted to break up more'
             2 '(partner) wanted to break up more'
             3 'we both equally wanted to break up' /
   W2_BROKE_UP 0 'still together' 1 'broke up' 2 'partner passed away' /
   PP3_PPHHHEAD -2 'Not asked' -1 'refused' 0 'No' 1 'Yes' /
   PP3_PPHHSIZE -2 'not asked' -1 'refused' /
   PP3_PPHOUSE -2 'Not asked' -1 'refused'
             1 'A one-family house detached from any other house'
             2 'A one-family house attached to one or more houses'
             3 'A building with 2 or more apartments' 4 'A mobile home'
             5 'Boat, RV, van, etc.' /
   PP3_PPINCIMP -2 'Not asked' -1 'refused' 1 'Less than $5,000'
             2 '$5,000 to $7,499' 3 '$7,500 to $9,999' 4 '$10,000 to $12,499'
             5 '$12,500 to $14,999' 6 '$15,000 to $19,999'
             7 '$20,000 to $24,999' 8 '$25,000 to $29,999'
             9 '$30,000 to $34,999' 10 '$35,000 to $39,999'
             11 '$40,000 to $49,999' 12 '$50,000 to $59,999'
             13 '$60,000 to $74,999' 14 '$75,000 to $84,999'
             15 '$85,000 to $99,999' 16 '$100,000 to $124,999'
             17 '$125,000 to $149,999' 18 '$150,000 to $174,999'
             19 '$175,000 or more' /
   PP3_PPMARIT -2 'Not asked' -1 'refused' 1 'Married' 2 'Widowed'
             3 'Divorced' 4 'Separated' 5 'Never married'
             6 'Living with partner' /
   PP3_PPMSACAT -2 'Not asked' -1 'refused' 0 'Non-Metro' 1 'Metro' /
   PP3_PPRENT -2 'Not asked' -1 'refused'
             1 'Owned or being bought by you or someone in your household'
             2 'Rented for cash' 3 'Occupied without payment of cash rent' /
   PP3_PPREG4 -2 'Not asked' -1 'refused' 1 'Northeast' 2 'Midwest' 3 'South'
             4 'West' /
   PP3_PPREG9 1 'New England' 2 'Mid-Atlantic' 3 'East-North Central'
             4 'West-North Central' 5 'South Atlantic' 6 'East-South Central'
             7 'West-South Central' 8 'Mountain' 9 'Pacific' /
   INTERSTATE_MOVER_PP1_PP2 0 'stayer' 1 'mover' /
   INTERSTATE_MOVER_PP2_PP3 0 'stayer' 1 'mover' /
   INTERSTATE_MOVER_PP1_PP3 0 'stayer' 1 'mover' /
   PP3_PPT01 -2 'not asked' -1 'refused' /
   PP3_PPT1317 -2 'not asked' -1 'refused' /
   PP3_PPT18OV -2 'not asked' -1 'refused' /
   PP3_PPT25 -2 'not asked' -1 'refused' /
   PP3_PPT612 -2 'not asked' -1 'refused' /
   PP3_PPWORK -2 'Not asked' -1 'refused' 1 'Working - as a paid employee'
             2 'Working - self-employed'
             3 'Not working - on temporary layoff from a job'
             4 'Not working - looking for work' 5 'Not working - retired'
             6 'Not working - disabled' 7 'Not working - other' /
   PP3_PPNET 0 'No' 1 'Yes' /
   PP3_PPEDUC -2 'Not asked' -1 'refused' 1 'No formal education'
             2 '1st, 2nd, 3rd, or 4th grade' 3 '5th or 6th grade'
             4 '7th or 8th grade' 5 '9th grade' 6 '10th grade' 7 '11th grade'
             8 '12th grade NO DIPLOMA'
       9 'HIGH SCHOOL GRADUATE - high school DIPLOMA or the equivalent (GED)'
             10 'Some college, no degree' 11 'Associate degree'
             12 'Bachelors degree' 13 'Masters degree'
             14 'Professional or Doctorate degree' /
   PP3_PPEDUCAT -2 'Not asked' -1 'refused' 1 'Less than high school'
             2 'High school' 3 'Some college'
             4 'Bachelor''s degree or higher' /
   PP3_PPETHM -2 'Not asked' -1 'refused' 1 'White, Non-Hispanic'
             2 'Black, Non-Hispanic' 3 'Other, Non-Hispanic' 4 'Hispanic'
             5 '2+ Races, Non-Hispanic' /
   PP3_NEWER 0 'no, newer pp3 data is Not available'
             1 'Yes, pp3 data is newer and available' /
   W2W3_COMBO_BREAKUP
             0 'still together, or lost to follow-up, or partner deceased'
             1 'broke up' /
   W3_BROKE_UP 0 'still together' 1 'broke up' 2 'partner deceased' /
   W3_XPARTNERED 0 'unqualified bc unpartnered at main survery'
             1 'Qualified for follow-up at wave3'
             2 'unqualified bc broke up at wave 2' /
   W3_XDECEASED 0 'not deceased' 1 'apparently deceased' /
   W3_MULTINAME 1 'reported multiple partner names in main survey' /
   W3_XSS    1 'yes' 2 'no' /
   W3_XLAST  1 '1 year ago' 2 '2 years ago' /
   W3_XQUALIFIED 0 'unqualified for wave 3' 1 'qualified for wave 3' /
   W3_STATUS 1 'active member of KN panel' 2 'subject withdrew from KN panel'
             3 'subject retired from KN panel, KN decision'
           4 'Do Not Contact- subject withdrew and asked not to be contacted'
             /
   W3_COMPLETE 0 'no' 1 'yes' /
   W3_SOURCE 1 'Online' 2 'Telephone' /
   W3_XMARRY 1 'Married' 2 'Partnered' /
   W3_XTYPE  1 'same sex couple' 2 'heterosexual couple' /
   W3_Q1     -1 'Refused' 1 'yes' 2 'no' /
   W3_Q2     -1 'Refused' 1 'yes' 2 'no' /
   W3_Q3     -1 'Refused' 1 'divorce' 2 'separation with no divorce'
             3 '(xNameP) passed away, is deceased' /
   W3_Q4     -1 'Refused' 1 'I wanted the (divorce/separation) more.'
             2 '(xNameP) wanted the (divorce/separation) more.'
             3 'We both equally wanted the (divorce/separation).' /
   W3_MBTIMING_YEAR -1 'Please Select' 2 '2009' 3 '2010' 4 '2011' /
   W3_MBTIMING_MONTH 1 'January' 2 'February' 3 'March' 4 'April' 5 'May'
             6 'June' 7 'July' 8 'August' 9 'September' 10 'October'
             11 'November' 12 'December' /
   W3_Q5     -1 'Refused' 1 'yes' 2 'no' /
   W3_Q6     -1 'Refused' 1 'yes' 2 'no' /
   W3_Q7     -1 'Refused' 1 'yes, married (xNameP)'
             2 'no, did not marry (xNameP)' /
   W3_Q8     -1 'Refused'
   1 'No, we have not gotten a domestic partnership or civil union agreement'
      2 'Yes, we have gotten a domestic partnership or civil union agreement'
             /
   W3_Q9     -1 'Refused' 1 'We broke up'
             2 '(xNameP) passed away, is deceased'
             3 'Other (please describe)' /
   W3_Q10    -1 'Refused' 1 'I wanted to break up more'
             2 '(xNameP) wanted to break up more'
             3 'We both equally wanted to break up' /
   W3_NONMBTIMING_MONTH 1 'January' 2 'February' 3 'March' 4 'April' 5 'May'
             6 'June' 7 'July' 8 'August' 9 'September' 10 'October'
             11 'November' 12 'December' /
   ZPNHWHITE_CAT 0 '<55%' 1 '55%-79.99%' 2 '80%-91.99%' 3 '92% and higher' /
   ZPNHBLACK_CAT 0 '<1%' 1 '1%-2.99%' 2 '3%-19.99%' 3 '20% or more' /
   ZPHISP_CAT 0 '<2%' 1 '2%-3.99%' 2 '4%-19.99%' 3 '20%+' /
   ZPMEDHHINC_CAT 0 '<$34K' 1 '$34000-$41999' 2 '$42000-$64999' 3 '$65K+' /
   ZPFORBORN_CAT 0 '<2%' 1 '2%-4.99%' 2 '5%-11.99%' 3 '12%+' /
   ZPRURAL_CAT 0 'non rural' 1 'rural' /
   Q15A1     -1 'refused' 1 'united states' 2 'cambodia' 3 'canada' 4 'china'
             5 'colombia' 6 'cuba' 7 'dominican republic' 8 'ecuador'
             9 'el salvador' 10 'former yugoslavia' 11 'france' 12 'germany'
             13 'great britain' 14 'greece' 15 'guatemala' 16 'guyana'
             17 'haiti' 18 'honduras' 19 'hungary' 20 'india' 21 'iran'
             22 'ireland' 23 'italy' 24 'jamaica' 25 'japan' 26 'korea'
             27 'laos' 28 'mexico' 29 'nicaragua' 30 'peru' 31 'philippines'
             32 'poland' 33 'portugal' 34 'russia' 35 'taiwan' 36 'thailand'
             37 'trinidad and tobago' 38 'vietnam'
             39 'another country, please specify' /
   Q15A3_CODES -1 'refused' /
   W4_XQUALIFIED 0 'unqualified for wave 4' 1 'qualified for wave 4' /
   W4_STATUS 1 'Active' 2 'Withdrawn' 3 'Retired' 4 'Do not call' /
   W4_COMPLETE 0 'No' 1 'Yes' /
   W4_SOURCE 1 'On-line' 2 'Telephone' /
   W4_XTYPE  1 'same-sex couple' 2 'different sex couple' /
   W4_XMONTH 1 'January' 2 'February' 3 'March' 4 'April' 5 'May' 6 'June'
             7 'July' 8 'August' 9 'September' 10 'October' 11 'November'
             12 'December' /
   W4_XMARRY 1 'Married' 2 'Unmarried partners' /
   W4_XCIVIL 0 'No' 1 'Yes' /
   W4_XSS    1 'Yes' 2 'No' /
   W4_Q1     -1 'Refused' 1 'yes' 2 'no' /
   W4_Q2     -1 'Refused' 1 'yes' 2 'no' /
   W4_QUALITY -1 'Refused' 1 'Excellent' 2 'Good' 3 'Fair' 4 'Poor'
             5 'Very Poor' /
   W4_ATTRACTIVE -1 'Refused' 1 'very attractive' 2 'moderately attractive'
             3 'slightly attractive' 4 'not at all attractive' /
   W4_ATTRACTIVE_PARTNER -1 'Refused' 1 'very attractive'
             2 'moderately attractive' 3 'slightly attractive'
             4 'not at all attractive' /
   W4_Q3     -1 'Refused' 1 'divorce' 2 'separation with no divorce'
             3 '(xnamep) passed away, is deceased' /
   W4_Q4     -1 'Refused' 1 'I wanted the (divorce/separation) more'
             2 '(xname) wanted the (divorce/separation) more'
             3 'We both equally wanted the (divorce/separation)' /
   W4_MBTIMING_MONTH 1 'January' 2 'February' 3 'March' 4 'April' 5 'May'
             6 'June' 7 'July' 8 'August' 9 'September' 10 'October'
             11 'November' 12 'December' /
   W4_Q5     0 'No' 1 'Yes' /
   W4_Q6     0 'No' 1 'Yes' /
   W4_Q7     -1 'Refused' 1 'Yes, married (xnamep)'
             2 'No, did not marry (xnamep)' /
   W4_MAR_MONTH 1 'January' 2 'February' 3 'March' 4 'April' 5 'May' 6 'June'
             7 'July' 8 'August' 9 'September' 10 'October' 11 'November'
             12 'December' /
   W4_Q8_A   -1 'Refused'
   1 'No, we have not gotten a domestic partnership or civil union agreement'
      2 'Yes, we have gotten a domestic partnership or civil union agreement'
             /
   W4_Q8_B   -1 'Refused'
   1 'No, we have not gotten a domestic partnership or civil union agreement'
      2 'Yes, we have gotten a domestic partnership or civil union agreement'
             /
   W4_Q9     1 'We broke up' 2 '(xnamep) passed away, is deceased' /
   W4_Q10    -1 'Refused' 1 'I wanted to break up more'
             2 '(xnamep) , wanted to break up more'
             3 'We both equally wanted to break up' /
   W4_NONMBTIMING_MONTH 1 'January' 2 'February' 3 'March' 4 'April' 5 'May'
             6 'June' 7 'July' 8 'August' 9 'September' 10 'October'
             11 'November' 12 'December' /
   W4_BROKE_UP 0 'still together' 1 'broke up' 2 'partner passed away' /
   W234_COMBO_BREAKUP
             0 'still together at w4, or some follow-up w/o break-up'
             1 'broke up at wave 2, 3, or 4' /
   PP4_PPEDUC -2 'Not asked' -1 'refused' 1 'No formal education'
             2 '1st, 2nd, 3rd, or 4th grade' 3 '5th or 6th grade'
             4 '7th or 8th grade' 5 '9th grade' 6 '10th grade' 7 '11th grade'
             8 '12th grade NO DIPLOMA'
       9 'HIGH SCHOOL GRADUATE - high school DIPLOMA or the equivalent (GED)'
             10 'Some college, no degree' 11 'Associate degree'
             12 'Bachelors degree' 13 'Masters degree'
             14 'Professional or Doctorate degree' /
   PP4_PPEDUCAT -2 'Not asked' -1 'refused' 1 'Less than high school'
             2 'High school' 3 'Some college'
             4 'Bachelor''s degree or higher' /
   PP4_PPETHM -2 'Not asked' -1 'refused' 1 'White, Non-Hispanic'
             2 'Black, Non-Hispanic' 3 'Other, Non-Hispanic' 4 'Hispanic'
             5 '2+ Races, Non-Hispanic' /
   PP4_PPHHHEAD -2 'Not asked' -1 'refused' 0 'No' 1 'Yes' /
   PP4_PPHHSIZE -2 'Not asked' -1 'refused' /
   PP4_PPHOUSE -2 'Not asked' -1 'refused'
             1 'A one-family house detached from any other house'
             2 'A one-family house attached to one or more houses'
             3 'A building with 2 or more apartments' 4 'A mobile home'
             5 'Boat, RV, van, etc.' /
   PP4_PPINCIMP -2 'Not asked' -1 'refused' 1 'Less than $5,000'
             2 '$5,000 to $7,499' 3 '$7,500 to $9,999' 4 '$10,000 to $12,499'
             5 '$12,500 to $14,999' 6 '$15,000 to $19,999'
             7 '$20,000 to $24,999' 8 '$25,000 to $29,999'
             9 '$30,000 to $34,999' 10 '$35,000 to $39,999'
             11 '$40,000 to $49,999' 12 '$50,000 to $59,999'
             13 '$60,000 to $74,999' 14 '$75,000 to $84,999'
             15 '$85,000 to $99,999' 16 '$100,000 to $124,999'
             17 '$125,000 to $149,999' 18 '$150,000 to $174,999'
             19 '$175,000 or more' /
   PP4_PPMARIT -2 'Not asked' -1 'refused' 1 'Married' 2 'Widowed'
             3 'Divorced' 4 'Separated' 5 'Never married'
             6 'Living with partner' /
   PP4_PPMSACAT -2 'Not asked' -1 'refused' 0 'Non-Metro' 1 'Metro' /
   PP4_PPREG4 -2 'Not asked' -1 'refused' 1 'Northeast' 2 'Midwest' 3 'South'
             4 'West' /
   PP4_PPREG9 1 'New England' 2 'Mid-Atlantic' 3 'East-North Central'
             4 'West-North Central' 5 'South Atlantic' 6 'East-South Central'
             7 'West-South Central' 8 'Mountain' 9 'Pacific' /
   PP4_PPRENT -2 'Not asked' -1 'refused'
             1 'Owned or being bought by you or someone in your household'
             2 'Rented for cash' 3 'Occupied without payment of cash rent' /
   PP4_PPT01 -2 'Not asked' -1 'refused' /
   PP4_PPT25 -2 'Not asked' -1 'refused' /
   PP4_PPT612 -2 'Not asked' -1 'refused' /
   PP4_PPT1317 -2 'Not asked' -1 'refused' /
   PP4_PPT18OV -2 'Not asked' -1 'refused' /
   PP4_PPWORK -2 'Not asked' -1 'refused' 1 'Working - as a paid employee'
             2 'Working - self-employed'
             3 'Not working - on temporary layoff from a job'
             4 'Not working - looking for work' 5 'Not working - retired'
             6 'Not working - disabled' 7 'Not working - other' /
   PP4_PPNET 0 'No' 1 'Yes' /
   PP4_NEWER 0 'No' 1 'Yes' /
   PPA2009_HOW_OFTEN_SERVICES -2 'Not asked' -1 'Refused'
             1 'More than once a week' 2 'Once a week'
             3 'Once or twice a month' 4 'A few times a year'
             5 'Once a year or less' 6 'Never' /
   W5_SOURCE 1 'online' 2 'phone' /
   W5_COMPLETE 0 'eligible but not completed' 1 'wave 5 completed' /
   W5_STATUS 1 'Active' 2 'Withdrawn' 3 'Retired' 4 'Do not call' /
   W5X_QUALIFIED 0 'not qualified for wave 5' 1 'qualified for wave 5' /
   W5X_MARRY 1 'married' 2 'unmarried partners' /
   W5X_CIVIL 0 'no civil union or DP prior to wave 5'
             1 'yes civil union or DP prior to wave 5' /
   W5X_MONTH 1 'January' 2 'February' 3 'March' 4 'April' 5 'May' 6 'June'
             7 'July' 8 'August' 9 'September' 10 'October' 11 'November'
             12 'December' /
   W5X_CIVMONTH 1 'January' 2 'February' 3 'March' 4 'April' 5 'May' 6 'June'
             7 'July' 8 'August' 9 'September' 10 'October' 11 'November'
             12 'December' /
   W5_Q1     -1 'Refused' 1 'yes' 2 'no' /
   W5_Q2     -1 'Refused' 1 'yes' 2 'no' /
   W5_SEX_FREQUENCY -1 'Refused' 1 'Once a day or more'
             2 '3 to 6 times a week' 3 'Once or twice a week'
             4 '2 to 3 times a month' 5 'Once a month or less' /
   W5_P_MONOGAMY -1 'Refused'
             1 'Yes, I expect (name) will only have sex with me'
             2 'No, I expect (name) to have sex with other people besides me'
             /
   W5_IDENTITY -1 'Refused' 1 'heterosexual or straight' 2 'gay' 3 'lesbian'
             4 'bisexual' 5 'Something else' /
   W5_OUTNESS -1 'Refused' 1 'All or most of them' 2 'Some of them'
             3 'Only a few of them' 4 'None of them' /
   W5_Q3     1 'Divorce' 2 'Separation with no divorce'
             3 '(name) passed away, is deceased' /
   W5_Q4     1 'I wanted the divorce/separation more'
             2 '(name) wanted the divorce/separation more'
             3 'We both equally wanted the divorce/separation' /
   W5_MBTIMING_MONTH -1 'Refused' 1 'January' 2 'February' 3 'March'
             4 'April' 5 'May' 6 'June' 7 'July' 8 'August' 9 'September'
             10 'October' 11 'November' 12 'December' /
   W5_Q5     -1 'Refused' 1 'yes' 2 'no' /
   W5_Q6     -1 'Refused' 1 'yes' 2 'no' /
   W5_Q7     -1 'Refused' 1 'Yes, married (name)'
             2 'No, did not marry (name)' /
   W5_MAR_MONTH -1 'Refused' 1 'January' 2 'February' 3 'March' 4 'April'
             5 'May' 6 'June' 7 'July' 8 'August' 9 'September' 10 'October'
             11 'November' 12 'December' /
   W5_Q8     -1 'Refused'
   1 'No, we have not gotten a domestic partnership or civil union agreement'
      2 'Yes, we have gotten a domestic partnership or civil union agreement'
             /
   W5_CIV_YEAR -1 'Refused' /
   W5_CIV_MONTH -1 'Refused' 1 'January' 2 'February' 3 'March' 4 'April'
             5 'May' 6 'June' 7 'July' 8 'August' 9 'September' 10 'October'
             11 'November' 12 'December' /
   W5_Q9     1 'We broke up' 2 '(name) passed away, is deceased' /
   W5_Q10    1 'I wanted to break up more' 2 '(name) wanted to break up more'
             3 'We both equally wanted to break up' /
   W5_NONMBTIMING_MONTH -1 'Refused' 1 'January' 2 'February' 3 'March'
             4 'April' 5 'May' 6 'June' 7 'July' 8 'August' 9 'September'
             10 'October' 11 'November' 12 'December' /
   W5_BROKE_UP 0 'still together' 1 'broke up' 2 'partner deceased' /
   W2345_COMBO_BREAKUP 0 'still together at w5 or some follow-up w/o breakup'
             1 'broke up at wave 2,3,4, or 5' /
   RESPONDED_TO_W234OR5 0 'No' 1 'Yes' /
   PP5_PPAGE -2 'Not asked' -1 'refused' /
   PP5_PPAGECAT 1 '18-24' 2 '25-34' 3 '35-44' 4 '45-54' 5 '55-64' 6 '65-74'
             7 '75+' 99 'Under 18' /
   PP5_PPAGECT4 1 '18-29' 2 '30-44' 3 '45-59' 4 '60+' 99 'Under 18' /
   PP5_PPEDUC -2 'Not asked' -1 'refused' 1 'No formal education'
             2 '1st, 2nd, 3rd, or 4th grade' 3 '5th or 6th grade'
             4 '7th or 8th grade' 5 '9th grade' 6 '10th grade' 7 '11th grade'
             8 '12th grade NO DIPLOMA'
       9 'HIGH SCHOOL GRADUATE - high school DIPLOMA or the equivalent (GED)'
             10 'Some college, no degree' 11 'Associate degree'
             12 'Bachelors degree' 13 'Masters degree'
             14 'Professional or Doctorate degree' /
   PP5_PPEDUCAT -2 'Not asked' -1 'refused' 1 'Less than high school'
             2 'High school' 3 'Some college'
             4 'Bachelor''s degree or higher' /
   PP5_PPETHM -2 'Not asked' -1 'refused' 1 'White, Non-Hispanic'
             2 'Black, Non-Hispanic' 3 'Other, Non-Hispanic' 4 'Hispanic'
             5 '2+ Races, Non-Hispanic' /
   PP5_PPGENDER -2 'Not asked' -1 'refused' 1 'Male' 2 'Female' /
   PP5_PPHHHEAD 0 'No' 1 'Yes' /
   PP5_PPHHSIZE -2 'Not asked' -1 'refused' /
   PP5_PPHOUSE -2 'Not asked' -1 'refused'
             1 'A one-family house detached from any other house'
             2 'A one-family house attached to one or more houses'
             3 'A building with 2 or more apartments' 4 'A mobile home'
             5 'Boat, RV, van, etc.' /
   PP5_PPINCIMP -2 'Not asked' -1 'refused' 1 'Less than $5,000'
             2 '$5,000 to $7,499' 3 '$7,500 to $9,999' 4 '$10,000 to $12,499'
             5 '$12,500 to $14,999' 6 '$15,000 to $19,999'
             7 '$20,000 to $24,999' 8 '$25,000 to $29,999'
             9 '$30,000 to $34,999' 10 '$35,000 to $39,999'
             11 '$40,000 to $49,999' 12 '$50,000 to $59,999'
             13 '$60,000 to $74,999' 14 '$75,000 to $84,999'
             15 '$85,000 to $99,999' 16 '$100,000 to $124,999'
             17 '$125,000 to $149,999' 18 '$150,000 to $174,999'
             19 '$175,000 or more' /
   PP5_PPMARIT -2 'Not asked' -1 'refused' 1 'Married' 2 'Widowed'
             3 'Divorced' 4 'Separated' 5 'Never married'
             6 'Living with partner' /
   PP5_NEWER 0 'No' 1 'Yes' /
   PP5_PPMSACAT 0 'non-Metro' 1 'Metro' /
   PP5_PPREG4 -2 'Not asked' -1 'refused' 1 'Northeast' 2 'Midwest' 3 'South'
             4 'West' /
   PP5_PPREG9 1 'New England' 2 'Mid-Atlantic' 3 'East-North Central'
             4 'West-North Central' 5 'South Atlantic' 6 'East-South Central'
             7 'West-South Central' 8 'Mountain' 9 'Pacific' /
   PP5_PPRENT 1 'Owned or being bought by you or someone in household'
             2 'rented for cash' 3 'Occupied without payment' /
   PP5_PPT01 -2 'Not asked' -1 'refused' /
   PP5_PPT612 -2 'Not asked' -1 'refused' /
   PP5_PPT1317 -2 'Not asked' -1 'refused' /
   PP5_PPT18OV -2 'Not asked' -1 'refused' /
   PP5_PPWORK -2 'Not asked' -1 'refused' 1 'Working - as a paid employee'
             2 'Working - self-employed'
             3 'Not working - on temporary layoff from a job'
             4 'Not working - looking for work' 5 'Not working - retired'
             6 'Not working - disabled' 7 'Not working - other' /
   PP5_PPNET 0 'No' 1 'Yes' /
   PPMARIT_2014 -2 'Not asked' -1 'Refused' 1 'Married' 2 'Widowed'
             3 'Divorced' 4 'Separated' 5 'Never married'
             6 'Living with partner' /
   PPMARIT_2013 -2 'Not asked' -1 'Refused' 1 'Married' 2 'Widowed'
             3 'Divorced' 4 'Separated' 5 'Never married'
             6 'Living with partner' /
   PPMARIT_2012 -2 'Not asked' -1 'Refused' 1 'Married' 2 'Widowed'
             3 'Divorced' 4 'Separated' 5 'Never married'
             6 'Living with partner' /
   PPMARIT_2011 -2 'Not asked' -1 'Refused' 1 'Married' 2 'Widowed'
             3 'Divorced' 4 'Separated' 5 'Never married'
             6 'Living with partner' /
   PPMARIT_2010 -2 'Not asked' -1 'Refused' 1 'Married' 2 'Widowed'
             3 'Divorced' 4 'Separated' 5 'Never married'
             6 'Living with partner' /
   PPMARIT_2009 -2 'Not asked' -1 'Refused' 1 'Married' 2 'Widowed'
             3 'Divorced' 4 'Separated' 5 'Never married'
             6 'Living with partner' /
   PPMARIT_2007 -2 'Not asked' -1 'Refused' 1 'Married' 2 'Widowed'
             3 'Divorced' 4 'Separated' 5 'Never married'
             6 'Living with partner' /
   .

* SPSS MISSING VALUES COMMAND.

* MISSING VALUES
     PPAGE (-1, -2) /
     PPEDUC (-1, -2) /
     PPEDUCAT (-1, -2) /
     PPETHM (-1, -2) /
     PPGENDER (-1, -2) /
     PPHHHEAD (-1, -2) /
     PPHOUSE (-1, -2) /
     PPINCIMP (-1, -2) /
     PPMARIT (-1, -2) /
     PPMSACAT (-1, -2) /
     PPREG4 (-1, -2) /
     PPRENT (-1, -2) /
     PPT01 (-1, -2) /
     PPT1317 (-1, -2) /
     PPT18OV (-1, -2) /
     PPT25 (-1, -2) /
     PPT612 (-1, -2) /
     PPWORK (-1, -2) /
     PPQ14ARACE (-1, -2) /
     PPHISPAN (-1, -2) /
     PPRACE_WHITE (-1, -2) /
     PPRACE_BLACK (-1, -2) /
     PPRACE_NATIVEAMERICAN (-1, -2) /
     PPRACE_ASIANINDIAN (-1, -2) /
     PPRACE_CHINESE (-1, -2) /
     PPRACE_FILIPINO (-1, -2) /
     PPRACE_JAPANESE (-1, -2) /
     PPRACE_KOREAN (-1, -2) /
     PPRACE_VIETNAMESE (-1, -2) /
     PPRACE_OTHERASIAN (-1, -2) /
     PPRACE_HAWAIIAN (-1, -2) /
     PPRACE_GUAMANIAN (-1, -2) /
     PPRACE_SAMOAN (-1, -2) /
     PPRACE_OTHERPACIFICISLANDER (-1, -2) /
     PPRACE_SOMEOTHERRACE (-1, -2) /
     PAPGLB_FRIEND (-1, -2) /
     PPPARTYID3 (-1, -2) /
     PAPEVANGELICAL (-1, -2) /
     PAPRELIGION (-1, -2) /
     PPHHCOMP11_MEMBER2_GENDER (-1) /
     PPHHCOMP11_MEMBER3_GENDER (-1) /
     PPHHCOMP11_MEMBER4_GENDER (-1) /
     PPHHCOMP11_MEMBER5_GENDER (-1) /
     PPHHCOMP11_MEMBER6_GENDER (-1) /
     PPHHCOMP11_MEMBER7_GENDER (-1) /
     PPHHCOMP11_MEMBER8_GENDER (-1) /
     PPHHCOMP11_MEMBER9_GENDER (-1) /
     PPHHCOMP11_MEMBER10_GENDER (-1) /
     PPHHCOMP11_MEMBER11_GENDER (-1) /
     PPHHCOMP11_MEMBER12_GENDER (-1) /
     PPHHCOMP11_MEMBER13_GENDER (-1) /
     PPHHCOMP11_MEMBER14_GENDER (-1) /
     PPHHCOMP11_MEMBER15_GENDER (-1) /
     PPHHCOMP11_MEMBER2_RELATIONSHIP (-1) /
     PPHHCOMP11_MEMBER3_RELATIONSHIP (-1) /
     PPHHCOMP11_MEMBER4_RELATIONSHIP (-1) /
     PPHHCOMP11_MEMBER5_RELATIONSHIP (-1) /
     PPHHCOMP11_MEMBER6_RELATIONSHIP (-1) /
     PPHHCOMP11_MEMBER7_RELATIONSHIP (-1) /
     PPHHCOMP11_MEMBER8_RELATIONSHIP (-1) /
     PPHHCOMP11_MEMBER9_RELATIONSHIP (-1) /
     PPHHCOMP11_MEMBER10_RELATIONSHIP (-1) /
     PPHHCOMP11_MEMBER11_RELATIONSHIP (-1) /
     PPHHCOMP11_MEMBER12_RELATIONSHIP (-1) /
     PPHHCOMP11_MEMBER13_RELATIONSHIP (-1) /
     PPHHCOMP11_MEMBER14_RELATIONSHIP (-1) /
     PPHHCOMP11_MEMBER15_RELATIONSHIP (-1) /
     IRB_CONSENT (-1) /
     PAPGLB_STATUS (-1, -2) /
     S1 (-1) /
     S1A (-1) /
     S2 (-1) /
     Q3_CODES (-1) /
     Q4 (-1) /
     Q5 (-1) /
     Q6A (-1) /
     Q6B (-1) /
     Q7A (-1) /
     Q7B (-1) /
     Q8A (-1) /
     Q8B (-1) /
     Q10 (-1) /
     Q11 (-1) /
     Q12 (-1) /
     Q13A (-1) /
     Q13B (-1) /
     Q14 (-1) /
     Q15A1_COMPRESSED (-1) /
     Q16 (-1) /
     Q17A (-1) /
     Q17B (-1) /
     Q17C (-1) /
     Q17D (-1) /
     Q18A_1 (-1) /
     Q18A_2 (-1) /
     Q18A_3 (-1) /
     Q18B_CODES (-1) /
     Q18C_CODES (-1) /
     Q19 (-1) /
     Q20 (-1) /
     Q22 (-1) /
     Q23 (-1) /
     Q24_CODES (-1) /
     Q25 (-1) /
     Q26 (-1) /
     Q27 (-1) /
     Q28 (-1) /
     Q29 (-1) /
     Q30 (-1) /
     Q31_1 (-1) /
     Q31_2 (-1) /
     Q31_3 (-1) /
     Q31_4 (-1) /
     Q31_5 (-1) /
     Q31_6 (-1) /
     Q31_7 (-1) /
     Q31_8 (-1) /
     Q31_9 (-1) /
     Q32 (-1) /
     Q33_1 (-1) /
     Q33_2 (-1) /
     Q33_3 (-1) /
     Q33_4 (-1) /
     Q33_5 (-1) /
     Q33_6 (-1) /
     Q33_7 (-1) /
     Q34 (-1) /
     Q35_CODES (-1) /
     PARTNER_RELIGION_RECLASSIFIED (-1) /
     PARTNER_RELIGION_CHILD_RECLASS (-1) /
     OWN_RELIGION_CHILD_RECLASS (-1) /
     EITHER_INTERNET_ADJUSTED (-1) /
     POTENTIAL_PARTNER_GENDER_RECODES (-1) /
     ALT_PARTNER_GENDER (-1) /
     RESPONDENT_RELIGION_AT_16 (-1) /
     PARTNER_RELIGION_AT_16 (-1) /
     HOME_COUNTRY_RECODE (-1) /
     PP2_PPHHHEAD (-1, -2) /
     PP2_PPHHSIZE (-1, -2) /
     PP2_PPHOUSE (-1, -2) /
     PP2_PPINCIMP (-1, -2) /
     PP2_PPMARIT (-1, -2) /
     PP2_PPMSACAT (-1, -2) /
     PP2_PPEDUC (-1, -2) /
     PP2_PPEDUCAT (-1, -2) /
     PP2_PPETHM (-1, -2) /
     PP2_PPREG4 (-1, -2) /
     PP2_PPRENT (-1, -2) /
     PP2_PPT01 (-1, -2) /
     PP2_PPT1317 (-1, -2) /
     PP2_PPT18OV (-1, -2) /
     PP2_PPT25 (-1, -2) /
     PP2_PPT612 (-1, -2) /
     PP2_PPWORK (-1, -2) /
     W2_Q1 (-1) /
     W2_Q2 (-1) /
     W2_Q3 (-1) /
     W2_Q4 (-1) /
     W2_Q5 (-1) /
     W2_Q6 (-1) /
     W2_Q7 (-1) /
     W2_Q8 (-1) /
     W2_Q9 (-1) /
     W2_Q10 (-1) /
     PP3_PPHHHEAD (-1, -2) /
     PP3_PPHHSIZE (-1, -2) /
     PP3_PPHOUSE (-1, -2) /
     PP3_PPINCIMP (-1, -2) /
     PP3_PPMARIT (-1, -2) /
     PP3_PPMSACAT (-1, -2) /
     PP3_PPRENT (-1, -2) /
     PP3_PPREG4 (-1, -2) /
     PP3_PPT01 (-1, -2) /
     PP3_PPT1317 (-1, -2) /
     PP3_PPT18OV (-1, -2) /
     PP3_PPT25 (-1, -2) /
     PP3_PPT612 (-1, -2) /
     PP3_PPWORK (-1, -2) /
     PP3_PPEDUC (-1, -2) /
     PP3_PPEDUCAT (-1, -2) /
     PP3_PPETHM (-1, -2) /
     W3_Q1 (-1) /
     W3_Q2 (-1) /
     W3_Q3 (-1) /
     W3_Q4 (-1) /
     W3_MBTIMING_YEAR (-1) /
     W3_Q5 (-1) /
     W3_Q6 (-1) /
     W3_Q7 (-1) /
     W3_Q8 (-1) /
     W3_Q9 (-1) /
     W3_Q10 (-1) /
     W3_NONMBTIMING_YEAR (-1) /
     Q15A1 (-1) /
     W4_Q1 (-1) /
     W4_Q2 (-1) /
     W4_QUALITY (-1) /
     W4_ATTRACTIVE (-1) /
     W4_ATTRACTIVE_PARTNER (-1) /
     W4_Q3 (-1) /
     W4_Q4 (-1) /
     W4_Q7 (-1) /
     W4_Q8_A (-1) /
     W4_Q8_B (-1) /
     W4_Q9 (-1) /
     W4_Q10 (-1) /
     PP4_PPEDUC (-1, -2) /
     PP4_PPEDUCAT (-1, -2) /
     PP4_PPETHM (-1, -2) /
     PP4_PPHHHEAD (-1, -2) /
     PP4_PPHHSIZE (-1, -2) /
     PP4_PPHOUSE (-1, -2) /
     PP4_PPINCIMP (-1, -2) /
     PP4_PPMARIT (-1, -2) /
     PP4_PPMSACAT (-1, -2) /
     PP4_PPREG4 (-1, -2) /
     PP4_PPRENT (-1, -2) /
     PP4_PPT01 (-1, -2) /
     PP4_PPT25 (-1, -2) /
     PP4_PPT612 (-1, -2) /
     PP4_PPT1317 (-1, -2) /
     PP4_PPT18OV (-1, -2) /
     PP4_PPWORK (-1, -2) /
     PPA2009_HOW_OFTEN_SERVICES (-1, -2) /
     W5_Q1 (-1) /
     W5_Q2 (-1) /
     W5_SEX_FREQUENCY (-1) /
     W5_P_MONOGAMY (-1) /
     W5_IDENTITY (-1) /
     W5_OUTNESS (-1) /
     W5_Q3 (-1) /
     W5_Q4 (-1) /
     W5_MBTIMING_MONTH (-1) /
     W5_Q5 (-1) /
     W5_Q6 (-1) /
     W5_Q7 (-1) /
     W5_MAR_MONTH (-1) /
     W5_Q8 (-1) /
     W5_CIV_YEAR (-1) /
     W5_CIV_MONTH (-1) /
     W5_Q9 (-1) /
     W5_Q10 (-1) /
     W5_NONMBTIMING_MONTH (-1) /
     PP5_PPAGE (-2, -1) /
     PP5_PPEDUC (-2, -1) /
     PP5_PPEDUCAT (-2, -1) /
     PP5_PPETHM (-2, -1) /
     PP5_PPGENDER (-2, -1) /
     PP5_PPHHSIZE (-2, -1) /
     PP5_PPHOUSE (-2, -1) /
     PP5_PPINCIMP (-2, -1) /
     PP5_PPMARIT (-2, -1) /
     PP5_PPREG4 (-2, -1) /
     PP5_PPT01 (-2, -1) /
     PP5_PPT612 (-2, -1) /
     PP5_PPT1317 (-2, -1) /
     PP5_PPT18OV (-2, -1) /
     PP5_PPWORK (-2, -1) /
     PPMARIT_2014 (-2, -1) /
     PPMARIT_2013 (-2, -1) /
     PPMARIT_2012 (-2, -1) /
     PPMARIT_2011 (-2, -1) /
     PPMARIT_2010 (-2, -1) /
     PPMARIT_2009 (-2, -1) /
     PPMARIT_2007 (-2, -1) /
   .

EXECUTE.

* SPSS VARIABLE LEVEL COMMAND.

VARIABLE LEVEL
   CASEID_NEW
   WEIGHT1
   WEIGHT2
   PPAGE
   PPHOUSEHOLDSIZE
   HHINC
   PPT01
   PPT1317
   PPT18OV
   PPT25
   PPT612
   CHILDREN_IN_HH
   PPPPCMDATE_YRMO
   PPPADATE_YRMO
   PPHHCOMP11_MEMBER2_AGE
   PPHHCOMP11_MEMBER3_AGE
   PPHHCOMP11_MEMBER4_AGE
   PPHHCOMP11_MEMBER5_AGE
   PPHHCOMP11_MEMBER6_AGE
   PPHHCOMP11_MEMBER7_AGE
   PPHHCOMP11_MEMBER8_AGE
   PPHHCOMP11_MEMBER9_AGE
   PPHHCOMP11_MEMBER10_AGE
   PPHHCOMP11_MEMBER11_AGE
   PPHHCOMP11_MEMBER12_AGE
   PPHHCOMP11_MEMBER13_AGE
   PPHHCOMP11_MEMBER14_AGE
   PPHHCOMP11_MEMBER15_AGE
   PPHHCOMP11_MEMBER15_GENDER
   PPHHCOMP11_MEMBER15_RELATIONSHIP
   WEIGHT3
   WEIGHT4
   WEIGHT5
   WEIGHT6
   WEIGHT7
   WEIGHT_COUPLES_CORESIDENT
   HCMST_MAIN_INTERVIEW_YRMO
   DURATION
   Q3_CODES
   Q9
   Q16
   Q18B_CODES
   Q18C_CODES
   Q21A
   Q21B
   Q21C
   Q21D
   Q21E
   Q35_CODES
   SUMMARY_Q24_TOTAL
   DISTANCEMOVED_10MI
   HOW_LONG_AGO_FIRST_MET
   HOW_LONG_AGO_FIRST_ROMANTIC
   HOW_LONG_AGO_FIRST_COHAB
   HOW_LONG_RELATIONSHIP
   AGE_DIFFERENCE
   RESPONDENT_YRSED
   PARTNER_YRSED
   PARTNER_MOM_YRSED
   RESPONDENT_MOM_YRSED
   PP2_PPHHSIZE
   PP2_RESPONDENT_YRSED
   PP2_PPT01
   PP2_PPT1317
   PP2_PPT18OV
   PP2_PPT25
   PP2_PPT612
   PP2_PPCMDATE_YRMO
   W2_HCMST_INTERVIEW_FIN_YRMO
   W2_DURATION
   W2_DAYS_ELAPSED
   PP3_PPHHSIZE
   PP3_PPT01
   PP3_PPT1317
   PP3_PPT18OV
   PP3_PPT25
   PP3_PPT612
   PP3_PPCMDATE_YRMO
   PP3_RESPONDENT_YRSED
   W3_XYEAR
   W3_XMONTH
   W3_HCMST_INTERVIEW_FIN_YRMO
   W3_DAYS_ELAPSED
   W3_DURATION
   W3_NONMBTIMING_YEAR
   W4_DURATION
   W4_HCMST_INTERVIEW_FIN_YRMO
   W4_XYEAR
   W4_XLAST
   W4_XWAVE1_MONTH
   W4_MBTIMING_YEAR
   W4_MAR_YEAR
   W4_CIV_YEAR
   W4_NONMBTIMING_YEAR
   RELATIONSHIP_QUALITY_W4
   PP4_PPHHSIZE
   PP4_PPT01
   PP4_PPT25
   PP4_PPT612
   PP4_PPT1317
   PP4_PPT18OV
   PP4_PPCMDATE_YRMO
   PPA2009_SERVICES_YRMO
   W5_DURATION
   W5X_LAST
   W5X_YEAR
   W5X_CIVYEAR
   W5_MBTIMING_YEAR
   W5_MAR_YEAR
   W5_CIV_YEAR
   W5_NONMBTIMING_YEAR
   W5_HCMST_INTERVIEW_FIN_YRMO
   PP5_PPAGE
   PP5_PPHHSIZE
   PP5_PPCMDATE_YRMO
   PP5_PPT01
   PP5_PPT25
   PP5_PPT612
   PP5_PPT1317
   PP5_PPT18OV
   PPCMARIT_2014_YRMO
   PPCMARIT_2013_YRMO
   PPCMARIT_2012_YRMO
   PPCMARIT_2011_YRMO
   PPCMARIT_2010_YRMO
   PPCMARIT_2009_YRMO
   PPCMARIT_2007_YRMO
    (scale).

VARIABLE LEVEL
   PPAGECAT
   PPAGECT4
   PPEDUC
   PPEDUCAT
   PPETHM
   PPGENDER
   PPHHHEAD
   PPHOUSE
   PPINCIMP
   PPMARIT
   PPMSACAT
   PPREG4
   PPREG9
   PPRENT
   PPWORK
   PPNET
   PPQ14ARACE
   PPHISPAN
   PPRACE_WHITE
   PPRACE_BLACK
   PPRACE_NATIVEAMERICAN
   PPRACE_ASIANINDIAN
   PPRACE_CHINESE
   PPRACE_FILIPINO
   PPRACE_JAPANESE
   PPRACE_KOREAN
   PPRACE_VIETNAMESE
   PPRACE_OTHERASIAN
   PPRACE_HAWAIIAN
   PPRACE_GUAMANIAN
   PPRACE_SAMOAN
   PPRACE_OTHERPACIFICISLANDER
   PPRACE_SOMEOTHERRACE
   PAPGLB_FRIEND
   PPPARTYID3
   PAPEVANGELICAL
   PAPRELIGION
   PPHHCOMP11_MEMBER2_GENDER
   PPHHCOMP11_MEMBER3_GENDER
   PPHHCOMP11_MEMBER4_GENDER
   PPHHCOMP11_MEMBER5_GENDER
   PPHHCOMP11_MEMBER6_GENDER
   PPHHCOMP11_MEMBER7_GENDER
   PPHHCOMP11_MEMBER8_GENDER
   PPHHCOMP11_MEMBER9_GENDER
   PPHHCOMP11_MEMBER10_GENDER
   PPHHCOMP11_MEMBER11_GENDER
   PPHHCOMP11_MEMBER12_GENDER
   PPHHCOMP11_MEMBER13_GENDER
   PPHHCOMP11_MEMBER14_GENDER
   PPHHCOMP11_MEMBER2_RELATIONSHIP
   PPHHCOMP11_MEMBER3_RELATIONSHIP
   PPHHCOMP11_MEMBER4_RELATIONSHIP
   PPHHCOMP11_MEMBER5_RELATIONSHIP
   PPHHCOMP11_MEMBER6_RELATIONSHIP
   PPHHCOMP11_MEMBER7_RELATIONSHIP
   PPHHCOMP11_MEMBER8_RELATIONSHIP
   PPHHCOMP11_MEMBER9_RELATIONSHIP
   PPHHCOMP11_MEMBER10_RELATIONSHIP
   PPHHCOMP11_MEMBER11_RELATIONSHIP
   PPHHCOMP11_MEMBER12_RELATIONSHIP
   PPHHCOMP11_MEMBER13_RELATIONSHIP
   PPHHCOMP11_MEMBER14_RELATIONSHIP
   IRB_CONSENT
   QFLAG
   GLBSTATUS
   PAPGLB_STATUS
   RECSOURCE
   S1
   S1A
   S2
   Q4
   Q5
   Q6A
   Q6B
   Q7A
   Q7B
   Q8A
   Q8B
   Q10
   Q11
   Q12
   Q13A
   Q13B
   Q14
   Q15A1_COMPRESSED
   Q17A
   Q17B
   Q17C
   Q17D
   GENDER_ATTRACTION
   Q18A_1
   Q18A_2
   Q18A_3
   Q18A_REFUSED
   Q19
   Q20
   Q21A_REFUSAL
   Q21B_REFUSAL
   Q21C_REFUSAL
   Q21D_REFUSAL
   Q21E_REFUSAL
   Q22
   Q23
   Q24_CODES
   Q25
   Q26
   Q27
   Q28
   Q29
   Q30
   Q31_1
   Q31_2
   Q31_3
   Q31_4
   Q31_5
   Q31_6
   Q31_7
   Q31_8
   Q31_9
   Q31_OTHER_TEXT_ENTERED
   Q32
   Q33_1
   Q33_2
   Q33_3
   Q33_4
   Q33_5
   Q33_6
   Q33_7
   Q33_OTHER_TEXT_ENTERED
   Q34
   Q35_TEXT_ENTERED
   Q24_MET_ONLINE
   Q24_R_COWORK
   Q24_R_FRIEND
   Q24_R_FAMILY
   Q24_R_SIG_OTHER
   Q24_R_NEIGHBOR
   Q24_P_COWORK
   Q24_P_FRIEND
   Q24_P_FAMILY
   Q24_P_SIG_OTHER
   Q24_P_NEIGHBOR
   Q24_BTWN_I_COWORK
   Q24_BTWN_I_FRIEND
   Q24_BTWN_I_FAMILY
   Q24_BTWN_I_SIG_OTHER
   Q24_BTWN_I_NEIGHBOR
   Q24_SCHOOL
   Q24_COLLEGE
   Q24_MILITARY
   Q24_CHURCH
   Q24_VOL_ORG
   Q24_CUSTOMER
   Q24_BAR_RESTAURANT
   Q24_INTERNET_DATING
   Q24_INTERNET_SOCIAL_NETWORKING
   Q24_INTERNET_GAME
   Q24_INTERNET_CHAT
   Q24_INTERNET_COMMUNITY
   Q24_INTERNET_OTHER
   Q24_PUBLIC
   Q24_PRIVATE_PARTY
   Q24_BLIND_DATE
   Q24_VACATION
   Q24_SINGLES_SERVICE_NON_INTERNET
   Q24_BUSINESS_TRIP
   Q24_WORK_NEIGHBOR
   Q24_FAM_SISTER_ACTIVE
   Q24_FAM_BROTHER_ACTIVE
   Q24_FAM_MOTHER_ACTIVE
   Q24_FAM_FATHER_ACTIVE
   Q24_FAM_OTHER_ACTIVE
   Q24_FAM_COUSINS_ACTIVE
   Q24_FAM_AUNT_NIECE_ACTIVE
   Q24_FAM_UNCLE_NEPHEW_ACTIVE
   Q24_FAM_GRANDMOTHER_ACTIVE
   Q24_FAM_GRANDFATHER_ACTIVE
   Q24_FAM_SISTER_PASSIVE
   Q24_FAM_BROTHER_PASSIVE
   Q24_FAM_MOTHER_PASSIVE
   Q24_FAM_FATHER_PASSIVE
   Q24_FAM_OTHER_PASSIVE
   Q24_FAM_COUSINS_PASSIVE
   Q24_FAM_AUNT_NIECE_PASSIVE
   Q24_FAM_UNCLE_NEPHEW_PASSIVE
   Q24_FAM_GRANDMOTHER_PASSIVE
   Q24_FAM_GRANDFATHER_PASSIVE
   Q24_FAM_FEMALE
   Q24_FAM_MALE
   MARRYNOTREALLY
   MARRYCOUNTRY
   CIVILNOTREALLY
   PARTNER_DECEASED
   PARTNER_RELIGION_RECLASSIFIED
   PARTNER_RELIGION_CHILD_RECLASS
   OWN_RELIGION_CHILD_RECLASS
   Q32_INTERNET
   HOW_MET_ONLINE
   EITHER_INTERNET
   EITHER_INTERNET_ADJUSTED
   SAME_SEX_COUPLE
   POTENTIAL_PARTNER_GENDER_RECODES
   ALT_PARTNER_GENDER
   HOW_LONG_AGO_FIRST_MET_CAT
   RESPONDENT_RACE
   PARTNER_RACE
   MET_THROUGH_FRIENDS
   MET_THROUGH_FAMILY
   MET_THROUGH_AS_NEIGHBORS
   MET_THROUGH_AS_COWORKERS
   RESPONDENT_RELIGION_AT_16
   RESPONDENT_RELIG_16_CAT
   PARTNER_RELIGION_AT_16
   PARTNER_RELIG_16_CAT
   MARRIED
   PARENTAL_APPROVAL
   HOME_COUNTRY_RECODE
   US_RAISED
   RELATIONSHIP_QUALITY
   CORESIDENT
   PP2_AFTERP1
   PP2_PPHHHEAD
   PP2_PPHOUSE
   PP2_PPINCIMP
   PP2_PPMARIT
   PP2_PPMSACAT
   PP2_PPEDUC
   PP2_PPEDUCAT
   PP2_PPETHM
   PP2_PPREG4
   PP2_PPREG9
   PP2_PPRENT
   PP2_PPWORK
   PP2_PPNET
   PP_IGDR1
   PP_IEDUC1
   PP2_IGDR2
   PP2_IEDUC2
   W2_DECEASED
   W2_MULTINAME
   W2_PANELSTAT
   W2_DONOTCONTACT
   W2_ASSIGNED
   W2_F1COMPLETE
   W2_XMARRY
   W2_XSS
   W2_SOURCE
   W2_Q1
   W2_Q2
   W2_Q3
   W2_Q4
   W2_Q5
   W2_Q6
   W2_Q7
   W2_Q8
   W2_Q9
   W2_Q10
   W2_BROKE_UP
   PP3_PPHHHEAD
   PP3_PPHOUSE
   PP3_PPINCIMP
   PP3_PPMARIT
   PP3_PPMSACAT
   PP3_PPRENT
   PP3_PPREG4
   PP3_PPREG9
   INTERSTATE_MOVER_PP1_PP2
   INTERSTATE_MOVER_PP2_PP3
   INTERSTATE_MOVER_PP1_PP3
   PP3_PPWORK
   PP3_PPNET
   PP3_PPEDUC
   PP3_PPEDUCAT
   PP3_PPETHM
   PP3_NEWER
   W2W3_COMBO_BREAKUP
   W3_BROKE_UP
   W3_XPARTNERED
   W3_XDECEASED
   W3_MULTINAME
   W3_XSS
   W3_XLAST
   W3_XQUALIFIED
   W3_STATUS
   W3_COMPLETE
   W3_SOURCE
   W3_XMARRY
   W3_XTYPE
   W3_Q1
   W3_Q2
   W3_Q3
   W3_Q4
   W3_MBTIMING_YEAR
   W3_MBTIMING_MONTH
   W3_Q5
   W3_Q6
   W3_Q7
   W3_Q8
   W3_Q9
   W3_Q10
   W3_NONMBTIMING_MONTH
   ZPNHWHITE_CAT
   ZPNHBLACK_CAT
   ZPHISP_CAT
   ZPMEDHHINC_CAT
   ZPFORBORN_CAT
   ZPRURAL_CAT
   Q15A1_OTHER_UNEDITED
   Q15A1
   Q15A3_CODES
   W4_XQUALIFIED
   W4_STATUS
   W4_COMPLETE
   W4_SOURCE
   W4_XTYPE
   W4_XMONTH
   W4_XMARRY
   W4_XCIVIL
   W4_XSS
   W4_Q1
   W4_Q2
   W4_QUALITY
   W4_ATTRACTIVE
   W4_ATTRACTIVE_PARTNER
   W4_Q3
   W4_Q4
   W4_MBTIMING_MONTH
   W4_Q5
   W4_Q6
   W4_Q7
   W4_MAR_MONTH
   W4_Q8_A
   W4_Q8_B
   W4_Q9
   W4_Q10
   W4_NONMBTIMING_MONTH
   W4_BROKE_UP
   W234_COMBO_BREAKUP
   PP4_PPEDUC
   PP4_PPEDUCAT
   PP4_PPETHM
   PP4_PPHHHEAD
   PP4_PPHOUSE
   PP4_PPINCIMP
   PP4_PPMARIT
   PP4_PPMSACAT
   PP4_PPREG4
   PP4_PPREG9
   PP4_PPRENT
   PP4_PPWORK
   PP4_PPNET
   PP4_NEWER
   PPA2009_HOW_OFTEN_SERVICES
   W5_SOURCE
   W5_COMPLETE
   W5_STATUS
   W5X_QUALIFIED
   W5X_MARRY
   W5X_CIVIL
   W5X_MONTH
   W5X_CIVMONTH
   W5_Q1
   W5_Q2
   W5_SEX_FREQUENCY
   W5_P_MONOGAMY
   W5_IDENTITY
   W5_OUTNESS
   W5_Q3
   W5_Q4
   W5_MBTIMING_MONTH
   W5_Q5
   W5_Q6
   W5_Q7
   W5_MAR_MONTH
   W5_Q8
   W5_CIV_MONTH
   W5_Q9
   W5_Q10
   W5_NONMBTIMING_MONTH
   W5_BROKE_UP
   W2345_COMBO_BREAKUP
   RESPONDED_TO_W234OR5
   PP5_PPAGECAT
   PP5_PPAGECT4
   PP5_PPEDUC
   PP5_PPEDUCAT
   PP5_PPETHM
   PP5_PPGENDER
   PP5_PPHHHEAD
   PP5_PPHOUSE
   PP5_PPINCIMP
   PP5_PPMARIT
   PP5_NEWER
   PP5_PPMSACAT
   PP5_PPREG4
   PP5_PPREG9
   PP5_PPRENT
   PP5_PPWORK
   PP5_PPNET
   PPMARIT_2014
   PPMARIT_2013
   PPMARIT_2012
   PPMARIT_2011
   PPMARIT_2010
   PPMARIT_2009
   PPMARIT_2007
    (nominal).

* SPSS PRINT FORMAT COMMAND.

PRINT FORMAT
   CASEID_NEW (F7)
   WEIGHT1 (F6)
   WEIGHT2 (F6)
   PPAGE (F2)
   PPAGECAT (F2)
   PPAGECT4 (F2)
   PPEDUC (F2)
   PPEDUCAT (F2)
   PPETHM (F2)
   PPGENDER (F2)
   PPHHHEAD (F2)
   PPHOUSEHOLDSIZE (F2)
   PPHOUSE (F2)
   PPINCIMP (F2)
   HHINC (F6)
   PPMARIT (F2)
   PPMSACAT (F2)
   PPREG4 (F2)
   PPREG9 (F1)
   PPRENT (F2)
   PPT01 (F2)
   PPT1317 (F2)
   PPT18OV (F2)
   PPT25 (F2)
   PPT612 (F2)
   CHILDREN_IN_HH (F1)
   PPWORK (F2)
   PPNET (F1)
   PPQ14ARACE (F2)
   PPHISPAN (F2)
   PPRACE_WHITE (F2)
   PPRACE_BLACK (F2)
   PPRACE_NATIVEAMERICAN (F2)
   PPRACE_ASIANINDIAN (F2)
   PPRACE_CHINESE (F2)
   PPRACE_FILIPINO (F2)
   PPRACE_JAPANESE (F2)
   PPRACE_KOREAN (F2)
   PPRACE_VIETNAMESE (F2)
   PPRACE_OTHERASIAN (F2)
   PPRACE_HAWAIIAN (F2)
   PPRACE_GUAMANIAN (F2)
   PPRACE_SAMOAN (F2)
   PPRACE_OTHERPACIFICISLANDER (F2)
   PPRACE_SOMEOTHERRACE (F2)
   PAPGLB_FRIEND (F2)
   PPPARTYID3 (F2)
   PAPEVANGELICAL (F2)
   PAPRELIGION (F2)
   PPPPCMDATE_YRMO (F6)
   PPPADATE_YRMO (F6)
   PPHHCOMP11_MEMBER2_AGE (F2)
   PPHHCOMP11_MEMBER3_AGE (F2)
   PPHHCOMP11_MEMBER4_AGE (F2)
   PPHHCOMP11_MEMBER5_AGE (F3)
   PPHHCOMP11_MEMBER6_AGE (F2)
   PPHHCOMP11_MEMBER7_AGE (F2)
   PPHHCOMP11_MEMBER8_AGE (F2)
   PPHHCOMP11_MEMBER9_AGE (F2)
   PPHHCOMP11_MEMBER10_AGE (F2)
   PPHHCOMP11_MEMBER11_AGE (F2)
   PPHHCOMP11_MEMBER12_AGE (F1)
   PPHHCOMP11_MEMBER13_AGE (F1)
   PPHHCOMP11_MEMBER14_AGE (F1)
   PPHHCOMP11_MEMBER15_AGE (F1)
   PPHHCOMP11_MEMBER2_GENDER (F2)
   PPHHCOMP11_MEMBER3_GENDER (F2)
   PPHHCOMP11_MEMBER4_GENDER (F2)
   PPHHCOMP11_MEMBER5_GENDER (F2)
   PPHHCOMP11_MEMBER6_GENDER (F2)
   PPHHCOMP11_MEMBER7_GENDER (F2)
   PPHHCOMP11_MEMBER8_GENDER (F2)
   PPHHCOMP11_MEMBER9_GENDER (F2)
   PPHHCOMP11_MEMBER10_GENDER (F2)
   PPHHCOMP11_MEMBER11_GENDER (F2)
   PPHHCOMP11_MEMBER12_GENDER (F2)
   PPHHCOMP11_MEMBER13_GENDER (F2)
   PPHHCOMP11_MEMBER14_GENDER (F2)
   PPHHCOMP11_MEMBER15_GENDER (F2)
   PPHHCOMP11_MEMBER2_RELATIONSHIP (F2)
   PPHHCOMP11_MEMBER3_RELATIONSHIP (F2)
   PPHHCOMP11_MEMBER4_RELATIONSHIP (F2)
   PPHHCOMP11_MEMBER5_RELATIONSHIP (F2)
   PPHHCOMP11_MEMBER6_RELATIONSHIP (F2)
   PPHHCOMP11_MEMBER7_RELATIONSHIP (F2)
   PPHHCOMP11_MEMBER8_RELATIONSHIP (F2)
   PPHHCOMP11_MEMBER9_RELATIONSHIP (F2)
   PPHHCOMP11_MEMBER10_RELATIONSHIP (F2)
   PPHHCOMP11_MEMBER11_RELATIONSHIP (F2)
   PPHHCOMP11_MEMBER12_RELATIONSHIP (F2)
   PPHHCOMP11_MEMBER13_RELATIONSHIP (F2)
   PPHHCOMP11_MEMBER14_RELATIONSHIP (F2)
   PPHHCOMP11_MEMBER15_RELATIONSHIP (F2)
   IRB_CONSENT (F2)
   WEIGHT3 (F6)
   WEIGHT4 (F6)
   WEIGHT5 (F6)
   WEIGHT6 (F6)
   WEIGHT7 (F6)
   WEIGHT_COUPLES_CORESIDENT (F15.8)
   HCMST_MAIN_INTERVIEW_YRMO (F6)
   DURATION (F5)
   QFLAG (F1)
   GLBSTATUS (F1)
   PAPGLB_STATUS (F2)
   RECSOURCE (F1)
   S1 (F2)
   S1A (F2)
   S2 (F2)
   Q3_CODES (F2)
   Q4 (F2)
   Q5 (F2)
   Q6A (F2)
   Q6B (F2)
   Q7A (F2)
   Q7B (F2)
   Q8A (F2)
   Q8B (F2)
   Q9 (F2)
   Q10 (F2)
   Q11 (F2)
   Q12 (F2)
   Q13A (F2)
   Q13B (F2)
   Q14 (F2)
   Q15A1_COMPRESSED (F2)
   Q16 (F2)
   Q17A (F2)
   Q17B (F2)
   Q17C (F2)
   Q17D (F2)
   GENDER_ATTRACTION (F1)
   Q18A_1 (F2)
   Q18A_2 (F2)
   Q18A_3 (F2)
   Q18A_REFUSED (F1)
   Q18B_CODES (F2)
   Q18C_CODES (F2)
   Q19 (F2)
   Q20 (F2)
   Q21A (F2)
   Q21A_REFUSAL (F1)
   Q21B (F2)
   Q21B_REFUSAL (F1)
   Q21C (F2)
   Q21C_REFUSAL (F1)
   Q21D (F2)
   Q21D_REFUSAL (F1)
   Q21E (F2)
   Q21E_REFUSAL (F1)
   Q22 (F2)
   Q23 (F2)
   Q24_CODES (F2)
   Q25 (F2)
   Q26 (F2)
   Q27 (F2)
   Q28 (F2)
   Q29 (F2)
   Q30 (F2)
   Q31_1 (F2)
   Q31_2 (F2)
   Q31_3 (F2)
   Q31_4 (F2)
   Q31_5 (F2)
   Q31_6 (F2)
   Q31_7 (F2)
   Q31_8 (F2)
   Q31_9 (F2)
   Q31_OTHER_TEXT_ENTERED (F1)
   Q32 (F2)
   Q33_1 (F2)
   Q33_2 (F2)
   Q33_3 (F2)
   Q33_4 (F2)
   Q33_5 (F2)
   Q33_6 (F2)
   Q33_7 (F2)
   Q33_OTHER_TEXT_ENTERED (F1)
   Q34 (F2)
   Q35_CODES (F2)
   Q35_TEXT_ENTERED (F1)
   Q24_MET_ONLINE (F1)
   SUMMARY_Q24_TOTAL (F1)
   Q24_R_COWORK (F1)
   Q24_R_FRIEND (F1)
   Q24_R_FAMILY (F1)
   Q24_R_SIG_OTHER (F1)
   Q24_R_NEIGHBOR (F1)
   Q24_P_COWORK (F1)
   Q24_P_FRIEND (F1)
   Q24_P_FAMILY (F1)
   Q24_P_SIG_OTHER (F1)
   Q24_P_NEIGHBOR (F1)
   Q24_BTWN_I_COWORK (F1)
   Q24_BTWN_I_FRIEND (F1)
   Q24_BTWN_I_FAMILY (F1)
   Q24_BTWN_I_SIG_OTHER (F1)
   Q24_BTWN_I_NEIGHBOR (F1)
   Q24_SCHOOL (F1)
   Q24_COLLEGE (F1)
   Q24_MILITARY (F1)
   Q24_CHURCH (F1)
   Q24_VOL_ORG (F1)
   Q24_CUSTOMER (F1)
   Q24_BAR_RESTAURANT (F1)
   Q24_INTERNET_DATING (F1)
   Q24_INTERNET_SOCIAL_NETWORKING (F1)
   Q24_INTERNET_GAME (F1)
   Q24_INTERNET_CHAT (F1)
   Q24_INTERNET_COMMUNITY (F1)
   Q24_INTERNET_OTHER (F1)
   Q24_PUBLIC (F1)
   Q24_PRIVATE_PARTY (F1)
   Q24_BLIND_DATE (F1)
   Q24_VACATION (F1)
   Q24_SINGLES_SERVICE_NON_INTERNET (F1)
   Q24_BUSINESS_TRIP (F1)
   Q24_WORK_NEIGHBOR (F1)
   Q24_FAM_SISTER_ACTIVE (F1)
   Q24_FAM_BROTHER_ACTIVE (F1)
   Q24_FAM_MOTHER_ACTIVE (F1)
   Q24_FAM_FATHER_ACTIVE (F1)
   Q24_FAM_OTHER_ACTIVE (F1)
   Q24_FAM_COUSINS_ACTIVE (F1)
   Q24_FAM_AUNT_NIECE_ACTIVE (F1)
   Q24_FAM_UNCLE_NEPHEW_ACTIVE (F1)
   Q24_FAM_GRANDMOTHER_ACTIVE (F1)
   Q24_FAM_GRANDFATHER_ACTIVE (F1)
   Q24_FAM_SISTER_PASSIVE (F1)
   Q24_FAM_BROTHER_PASSIVE (F1)
   Q24_FAM_MOTHER_PASSIVE (F1)
   Q24_FAM_FATHER_PASSIVE (F1)
   Q24_FAM_OTHER_PASSIVE (F1)
   Q24_FAM_COUSINS_PASSIVE (F1)
   Q24_FAM_AUNT_NIECE_PASSIVE (F1)
   Q24_FAM_UNCLE_NEPHEW_PASSIVE (F1)
   Q24_FAM_GRANDMOTHER_PASSIVE (F1)
   Q24_FAM_GRANDFATHER_PASSIVE (F1)
   Q24_FAM_FEMALE (F1)
   Q24_FAM_MALE (F1)
   DISTANCEMOVED_10MI (F5)
   MARRYNOTREALLY (F1)
   CIVILNOTREALLY (F1)
   PARTNER_DECEASED (F1)
   PARTNER_RELIGION_RECLASSIFIED (F2)
   PARTNER_RELIGION_CHILD_RECLASS (F2)
   OWN_RELIGION_CHILD_RECLASS (F2)
   Q32_INTERNET (F1)
   HOW_MET_ONLINE (F1)
   EITHER_INTERNET (F1)
   EITHER_INTERNET_ADJUSTED (F2)
   SAME_SEX_COUPLE (F1)
   POTENTIAL_PARTNER_GENDER_RECODES (F2)
   ALT_PARTNER_GENDER (F2)
   HOW_LONG_AGO_FIRST_MET (F2)
   HOW_LONG_AGO_FIRST_ROMANTIC (F2)
   HOW_LONG_AGO_FIRST_COHAB (F2)
   HOW_LONG_AGO_FIRST_MET_CAT (F1)
   HOW_LONG_RELATIONSHIP (F14.11)
   RESPONDENT_RACE (F1)
   PARTNER_RACE (F1)
   AGE_DIFFERENCE (F2)
   MET_THROUGH_FRIENDS (F1)
   MET_THROUGH_FAMILY (F1)
   MET_THROUGH_AS_NEIGHBORS (F1)
   MET_THROUGH_AS_COWORKERS (F1)
   RESPONDENT_RELIGION_AT_16 (F2)
   RESPONDENT_RELIG_16_CAT (F1)
   PARTNER_RELIGION_AT_16 (F2)
   PARTNER_RELIG_16_CAT (F1)
   MARRIED (F1)
   PARENTAL_APPROVAL (F1)
   RESPONDENT_YRSED (F4.1)
   PARTNER_YRSED (F4.1)
   HOME_COUNTRY_RECODE (F2)
   US_RAISED (F1)
   PARTNER_MOM_YRSED (F4.1)
   RESPONDENT_MOM_YRSED (F4.1)
   RELATIONSHIP_QUALITY (F1)
   CORESIDENT (F1)
   PP2_AFTERP1 (F1)
   PP2_PPHHHEAD (F2)
   PP2_PPHHSIZE (F2)
   PP2_PPHOUSE (F2)
   PP2_PPINCIMP (F2)
   PP2_PPMARIT (F2)
   PP2_PPMSACAT (F2)
   PP2_PPEDUC (F2)
   PP2_PPEDUCAT (F2)
   PP2_RESPONDENT_YRSED (F4.1)
   PP2_PPETHM (F2)
   PP2_PPREG4 (F2)
   PP2_PPREG9 (F1)
   PP2_PPRENT (F2)
   PP2_PPT01 (F2)
   PP2_PPT1317 (F2)
   PP2_PPT18OV (F2)
   PP2_PPT25 (F2)
   PP2_PPT612 (F2)
   PP2_PPWORK (F2)
   PP2_PPNET (F1)
   PP2_PPCMDATE_YRMO (F6)
   PP_IGDR1 (F1)
   PP_IEDUC1 (F1)
   PP2_IGDR2 (F1)
   PP2_IEDUC2 (F1)
   W2_DECEASED (F1)
   W2_MULTINAME (F1)
   W2_PANELSTAT (F1)
   W2_DONOTCONTACT (F1)
   W2_ASSIGNED (F1)
   W2_F1COMPLETE (F1)
   W2_HCMST_INTERVIEW_FIN_YRMO (F6)
   W2_DURATION (F5)
   W2_XMARRY (F1)
   W2_XSS (F1)
   W2_SOURCE (F1)
   W2_Q1 (F2)
   W2_Q2 (F2)
   W2_Q3 (F2)
   W2_Q4 (F2)
   W2_Q5 (F2)
   W2_Q6 (F2)
   W2_Q7 (F2)
   W2_Q8 (F2)
   W2_Q9 (F2)
   W2_Q10 (F2)
   W2_BROKE_UP (F1)
   W2_DAYS_ELAPSED (F3)
   PP3_PPHHHEAD (F2)
   PP3_PPHHSIZE (F2)
   PP3_PPHOUSE (F2)
   PP3_PPINCIMP (F2)
   PP3_PPMARIT (F2)
   PP3_PPMSACAT (F2)
   PP3_PPRENT (F2)
   PP3_PPREG4 (F2)
   PP3_PPREG9 (F1)
   INTERSTATE_MOVER_PP1_PP2 (F1)
   INTERSTATE_MOVER_PP2_PP3 (F1)
   INTERSTATE_MOVER_PP1_PP3 (F1)
   PP3_PPT01 (F2)
   PP3_PPT1317 (F2)
   PP3_PPT18OV (F2)
   PP3_PPT25 (F2)
   PP3_PPT612 (F2)
   PP3_PPWORK (F2)
   PP3_PPNET (F1)
   PP3_PPCMDATE_YRMO (F6)
   PP3_PPEDUC (F2)
   PP3_PPEDUCAT (F2)
   PP3_RESPONDENT_YRSED (F4.1)
   PP3_PPETHM (F2)
   PP3_NEWER (F1)
   W2W3_COMBO_BREAKUP (F1)
   W3_BROKE_UP (F1)
   W3_XPARTNERED (F1)
   W3_XDECEASED (F1)
   W3_MULTINAME (F1)
   W3_XSS (F1)
   W3_XLAST (F1)
   W3_XYEAR (F4)
   W3_XMONTH (F1)
   W3_XQUALIFIED (F1)
   W3_STATUS (F1)
   W3_COMPLETE (F1)
   W3_SOURCE (F1)
   W3_HCMST_INTERVIEW_FIN_YRMO (F6)
   W3_DAYS_ELAPSED (F3)
   W3_DURATION (F6)
   W3_XMARRY (F1)
   W3_XTYPE (F1)
   W3_Q1 (F2)
   W3_Q2 (F2)
   W3_Q3 (F2)
   W3_Q4 (F2)
   W3_MBTIMING_YEAR (F2)
   W3_MBTIMING_MONTH (F2)
   W3_Q5 (F2)
   W3_Q6 (F2)
   W3_Q7 (F2)
   W3_Q8 (F2)
   W3_Q9 (F2)
   W3_Q10 (F2)
   W3_NONMBTIMING_YEAR (F4)
   W3_NONMBTIMING_MONTH (F2)
   ZPNHWHITE_CAT (F1)
   ZPNHBLACK_CAT (F1)
   ZPHISP_CAT (F1)
   ZPMEDHHINC_CAT (F1)
   ZPFORBORN_CAT (F1)
   ZPRURAL_CAT (F1)
   Q15A1 (F2)
   Q15A3_CODES (F2)
   W4_XQUALIFIED (F1)
   W4_STATUS (F1)
   W4_COMPLETE (F1)
   W4_SOURCE (F1)
   W4_DURATION (F5)
   W4_HCMST_INTERVIEW_FIN_YRMO (F6)
   W4_XTYPE (F1)
   W4_XYEAR (F4)
   W4_XMONTH (F2)
   W4_XMARRY (F1)
   W4_XLAST (F1)
   W4_XWAVE1_MONTH (F1)
   W4_XCIVIL (F1)
   W4_XSS (F1)
   W4_Q1 (F2)
   W4_Q2 (F2)
   W4_QUALITY (F2)
   W4_ATTRACTIVE (F2)
   W4_ATTRACTIVE_PARTNER (F2)
   W4_Q3 (F2)
   W4_Q4 (F2)
   W4_MBTIMING_YEAR (F4)
   W4_MBTIMING_MONTH (F2)
   W4_Q5 (F1)
   W4_Q6 (F1)
   W4_Q7 (F2)
   W4_MAR_YEAR (F4)
   W4_MAR_MONTH (F2)
   W4_CIV_YEAR (F4)
   W4_Q8_A (F2)
   W4_Q8_B (F2)
   W4_Q9 (F1)
   W4_Q10 (F2)
   W4_NONMBTIMING_YEAR (F4)
   W4_NONMBTIMING_MONTH (F2)
   RELATIONSHIP_QUALITY_W4 (F1)
   W4_BROKE_UP (F1)
   W234_COMBO_BREAKUP (F1)
   PP4_PPEDUC (F2)
   PP4_PPEDUCAT (F2)
   PP4_PPETHM (F2)
   PP4_PPHHHEAD (F2)
   PP4_PPHHSIZE (F2)
   PP4_PPHOUSE (F2)
   PP4_PPINCIMP (F2)
   PP4_PPMARIT (F2)
   PP4_PPMSACAT (F2)
   PP4_PPREG4 (F2)
   PP4_PPREG9 (F1)
   PP4_PPRENT (F2)
   PP4_PPT01 (F2)
   PP4_PPT25 (F2)
   PP4_PPT612 (F2)
   PP4_PPT1317 (F2)
   PP4_PPT18OV (F2)
   PP4_PPWORK (F2)
   PP4_PPNET (F1)
   PP4_PPCMDATE_YRMO (F6)
   PP4_NEWER (F1)
   PPA2009_SERVICES_YRMO (F6)
   PPA2009_HOW_OFTEN_SERVICES (F2)
   W5_DURATION (F5)
   W5_SOURCE (F1)
   W5_COMPLETE (F1)
   W5_STATUS (F1)
   W5X_QUALIFIED (F1)
   W5X_MARRY (F1)
   W5X_LAST (F1)
   W5X_YEAR (F4)
   W5X_CIVIL (F1)
   W5X_MONTH (F2)
   W5X_CIVYEAR (F4)
   W5X_CIVMONTH (F2)
   W5_Q1 (F2)
   W5_Q2 (F2)
   W5_SEX_FREQUENCY (F2)
   W5_P_MONOGAMY (F2)
   W5_IDENTITY (F2)
   W5_OUTNESS (F2)
   W5_Q3 (F1)
   W5_Q4 (F1)
   W5_MBTIMING_MONTH (F2)
   W5_MBTIMING_YEAR (F4)
   W5_Q5 (F2)
   W5_Q6 (F2)
   W5_Q7 (F2)
   W5_MAR_YEAR (F4)
   W5_MAR_MONTH (F2)
   W5_Q8 (F2)
   W5_CIV_YEAR (F4)
   W5_CIV_MONTH (F2)
   W5_Q9 (F1)
   W5_Q10 (F1)
   W5_NONMBTIMING_YEAR (F4)
   W5_NONMBTIMING_MONTH (F2)
   W5_BROKE_UP (F1)
   W5_HCMST_INTERVIEW_FIN_YRMO (F6)
   W2345_COMBO_BREAKUP (F1)
   RESPONDED_TO_W234OR5 (F1)
   PP5_PPAGE (F3)
   PP5_PPAGECAT (F2)
   PP5_PPAGECT4 (F2)
   PP5_PPEDUC (F2)
   PP5_PPEDUCAT (F2)
   PP5_PPETHM (F2)
   PP5_PPGENDER (F2)
   PP5_PPHHHEAD (F1)
   PP5_PPHHSIZE (F2)
   PP5_PPHOUSE (F2)
   PP5_PPINCIMP (F2)
   PP5_PPMARIT (F2)
   PP5_PPCMDATE_YRMO (F6)
   PP5_NEWER (F1)
   PP5_PPMSACAT (F1)
   PP5_PPREG4 (F2)
   PP5_PPREG9 (F1)
   PP5_PPRENT (F1)
   PP5_PPT01 (F2)
   PP5_PPT25 (F1)
   PP5_PPT612 (F2)
   PP5_PPT1317 (F2)
   PP5_PPT18OV (F2)
   PP5_PPWORK (F2)
   PP5_PPNET (F1)
   PPMARIT_2014 (F2)
   PPCMARIT_2014_YRMO (F6)
   PPMARIT_2013 (F2)
   PPCMARIT_2013_YRMO (F6)
   PPMARIT_2012 (F2)
   PPCMARIT_2012_YRMO (F6)
   PPMARIT_2011 (F2)
   PPCMARIT_2011_YRMO (F6)
   PPMARIT_2010 (F2)
   PPCMARIT_2010_YRMO (F6)
   PPMARIT_2009 (F2)
   PPCMARIT_2009_YRMO (F6)
   PPMARIT_2007 (F2)
   PPCMARIT_2007_YRMO (F6)
  .

* Create SPSS system file.

*SAVE OUTFILE="spss-filename.sav".
