/*-------------------------------------------------------------------------
 |                                                                         
 |                    SAS SETUP FILE FOR ICPSR 30103
 |        HOW COUPLES MEET AND STAY TOGETHER (HCMST), WAVE 1 2009,
 |          WAVE 2 2010, WAVE 3 2011, WAVE 4 2013, WAVE 5 2015,
 |                             UNITED STATES
 |                    (DATASET 0001: PUBLIC USE DATA)
 |
 |
 | SAS setup sections are provided for the ASCII version of this data
 | collection.  These sections are listed below:
 |
 | PROC FORMAT:  creates user-defined formats for the variables. Formats
 | replace original value codes with value code descriptions. Only
 | variables with user-defined formats are included in this section.
 |
 | DATA:  begins a SAS data step and names an output SAS data set.
 |
 | INFILE:  identifies the input file to be read with the input statement.
 | Users must replace the "data-filename" with a filename specifying the
 | directory on the user's computer system in which the downloaded and
 | unzipped data file is physically located (e.g.,
 | "c:\temp\30103-0001-data.txt").
 |
 | INPUT:  assigns the name, type, decimal specification (if any), and
 | specifies the beginning and ending column locations for each variable
 | in the data file.
 |
 | LABEL:  assigns descriptive labels to all variables. Variable labels
 | and variable names may be identical for some variables.
 |
 | MISSING VALUE RECODES:  sets user-defined numeric missing values to
 | missing as interpreted by the SAS system. Only variables with
 | user-defined missing values are included in this section.
 |
 | If any variables have more than one missing value, they are assigned
 | to the standard missing value of a single period (.) in the statement
 | below. To maintain the original meaning of missing codes, users may want
 | to take advantage of the SAS missing values (the letters A-Z or an
 | underscore preceded by a period).
 |
 | An example of a standard missing value recode:
 |
 |   IF (RELATION = 98 OR RELATION = 99) THEN RELATION = .; 
 |
 | The same example using special missing value recodes:
 |
 |    IF RELATION = 98 THEN RELATION = .A;
 |    IF RELATION = 99 THEN RELATION = .B;
 |
 | FORMAT:  associates the formats created by the PROC FORMAT step with
 | the variables named in the INPUT statement.
 |
 | NOTE:  Users should modify this setup file to suit their specific needs.
 | Sections for PROC FORMAT, FORMAT, and MISSING VALUE RECODES have been
 | commented out (i.e., '/*'). To include these sections in the final SAS
 | setup, users should remove the SAS comment indicators from the desired
 | section(s).
 |
 |------------------------------------------------------------------------*/

* SAS PROC FORMAT;

/*
PROC FORMAT;
VALUE pp_igdrf  0='(0) value not imputed' 1='(1) value imputed';
VALUE ppreg9ff  1='(1) new england' 2='(2) mid-atlantic' 3='(3) east-north central'
                4='(4) west-north central' 5='(5) south atlantic' 6='(6) east-south central'
                7='(7) west-south central' 8='(8) mountain' 9='(9) pacific';
VALUE w5_mbtif  -1='(-1) Refused' 1='(01) January' 2='(02) February' 3='(03) March'
                4='(04) April' 5='(05) May' 6='(06) June' 7='(07) July' 8='(08) August'
                9='(09) September' 10='(10) October' 11='(11) November' 12='(12) December';
VALUE w4_sourf  1='(1) On-line' 2='(2) Telephone';
VALUE w5_p_mof  -1='(-1) Refused' 1='(1) Yes, I expect (name) will only have sex with me'
                2='(2) No, I expect (name) to have sex with other people besides me';
VALUE pp3_ppm_1f  -2='(-2) Not asked' -1='(-1) refused' 0='(0) Non-Metro' 1='(1) Metro';
VALUE ppreg4ff  -2='(-2) not asked' -1='(-1) refused' 1='(1) northeast' 2='(2) midwest'
                3='(3) south' 4='(4) west';
VALUE w3_statf  1='(1) active member of KN panel' 2='(2) subject withdrew from KN panel'
                3='(3) subject retired from KN panel, KN decision'
                4='(4) Do Not Contact- subject withdrew and asked not to be contacted';
VALUE pp5_ppgf  -2='(-2) Not asked' -1='(-1) refused' 1='(1) Male' 2='(2) Female';
VALUE s1afffff  -1='(-1) refused' 1='(1) yes' 2='(2) no'
                3='(3) i would prefer not to answer this question';
VALUE pp5_ppa_1f  1='(01) 18-29' 2='(02) 30-44' 3='(03) 45-59' 4='(04) 60+'
                99='(99) Under 18';
VALUE w3_xquaf  0='(0) unqualified for wave 3' 1='(1) qualified for wave 3';
VALUE ppagecaf  1='(01) 18-24' 2='(02) 25-34' 3='(03) 35-44' 4='(04) 45-54' 5='(05) 55-64'
                6='(06) 65-74' 7='(07) 75+' 99='(99) under 18';
VALUE w3_q8fff  -1='(-1) Refused'
                1='(1) No, we have not gotten a domestic partnership or civil union agreement'
                2='(2) Yes, we have gotten a domestic partnership or civil union agreement';
VALUE glbstatf  0='(0) not glb' 1='(1) glb';
VALUE w3_xlasf  1='(1) 1 year ago' 2='(2) 2 years ago';
VALUE w2_brokf  0='(0) still together' 1='(1) broke up' 2='(2) partner passed away';
VALUE q5ffffff  -1='(-1) refused' 1='(1) yes, we are a same-sex couple'
                2='(2) no, we are an opposite-sex couple';
VALUE pp3_newf  0='(0) no, newer pp3 data is Not available'
                1='(1) Yes, pp3 data is newer and available';
VALUE met_thrf  0='(0) not met through friends' 1='(1) meet through friends';
VALUE w2_q3fff  -1='(-1) refused' 1='(1) divorce' 2='(2) separation with no divorce'
                3='(3) (partner) passed away, is deceased';
VALUE respond_1f  1='(1) Protestant or oth Christian' 2='(2) Catholic' 3='(3) Jewish'
                4='(4) Neither Christian nor Jewish' 5='(5) No religion';
VALUE w5_idenf  -1='(-1) Refused' 1='(1) heterosexual or straight' 2='(2) gay'
                3='(3) lesbian' 4='(4) bisexual' 5='(5) Something else';
VALUE q32_intf  0='(0) met offline according to q32' 1='(1) met online according to q32';
VALUE w5_q10ff  1='(1) I wanted to break up more' 2='(2) (name) wanted to break up more'
                3='(3) We both equally wanted to break up';
VALUE papglb_f  -2='(-2) not asked' -1='(-1) refused' 1='(1) yes, friends'
                2='(2) yes, relatives' 3='(3) yes, both' 4='(4) no'
                5='(5) i would prefer to not answer this question';
VALUE pp3_ppmf  -2='(-2) Not asked' -1='(-1) refused' 1='(1) Married' 2='(2) Widowed'
                3='(3) Divorced' 4='(4) Separated' 5='(5) Never married' 6='(6) Living with partner';
VALUE pp5_ppaf  1='(01) 18-24' 2='(02) 25-34' 3='(03) 35-44' 4='(04) 45-54' 5='(05) 55-64'
                6='(06) 65-74' 7='(07) 75+' 99='(99) Under 18';
VALUE q3_codef  -1='(-1) refused';
VALUE w2345_cf  0='(0) still together at w5 or some follow-up w/o breakup'
                1='(1) broke up at wave 2,3,4, or 5';
VALUE relatiof  1='(1) very poor' 2='(2) poor' 3='(3) fair' 4='(4) good' 5='(5) excellent';
VALUE pp3_ppr_2f  1='(1) New England' 2='(2) Mid-Atlantic' 3='(3) East-North Central'
                4='(4) West-North Central' 5='(5) South Atlantic' 6='(6) East-South Central'
                7='(7) West-South Central' 8='(8) Mountain' 9='(9) Pacific';
VALUE w2_q9fff  -1='(-1) refused' 1='(1) we broke up'
                2='(2) (partner) passed away, is deceased' 3='(3) other (please describe)';
VALUE ppnetfff  0='(0) no' 1='(1) yes';
VALUE pphhcom_1f  -1='(-1) please select' 2='(02) spouse'
                3='(03) child (biological, adopted, or stepchild)' 4='(04) grandchild' 5='(05) parent'
                6='(06) sibling' 7='(07) other relative' 8='(08) unmarried partner'
                9='(09) housemate/roommate' 10='(10) other non-relative';
VALUE pp3_pprf  -2='(-2) Not asked' -1='(-1) refused'
                1='(1) Owned or being bought by you or someone in your household' 2='(2) Rented for cash'
                3='(3) Occupied without payment of cash rent';
VALUE q8afffff  -1='(-1) refused' 1='(1) yes, the same' 2='(2) no, has changed religions';
VALUE ppmaritf  -2='(-2) not asked' -1='(-1) refused' 1='(1) married' 2='(2) widowed'
                3='(3) divorced' 4='(4) separated' 5='(5) never married' 6='(6) living with partner';
VALUE us_raisf  0='(0) raised outside US' 1='(1) raised in US';
VALUE q12fffff  -1='(-1) refused' 1='(1) republican' 2='(2) democrat' 3='(3) independent'
                4='(4) another party, please specify' 5='(5) no preference';
VALUE q17affff  -1='(-1) refused' 1='(1) once (this is my first marriage)' 2='(2) twice'
                3='(3) three times' 4='(4) four or more times';
VALUE pp3_ppif  -2='(-2) Not asked' -1='(-1) refused' 1='(01) Less than $5,000'
                2='(02) $5,000 to $7,499' 3='(03) $7,500 to $9,999' 4='(04) $10,000 to $12,499'
                5='(05) $12,500 to $14,999' 6='(06) $15,000 to $19,999' 7='(07) $20,000 to $24,999'
                8='(08) $25,000 to $29,999' 9='(09) $30,000 to $34,999' 10='(10) $35,000 to $39,999'
                11='(11) $40,000 to $49,999' 12='(12) $50,000 to $59,999' 13='(13) $60,000 to $74,999'
                14='(14) $75,000 to $84,999' 15='(15) $85,000 to $99,999' 16='(16) $100,000 to $124,999'
                17='(17) $125,000 to $149,999' 18='(18) $150,000 to $174,999' 19='(19) $175,000 or more';
VALUE pp5_pprf  1='(1) Owned or being bought by you or someone in household'
                2='(2) rented for cash' 3='(3) Occupied without payment';
VALUE ppeducaf  -2='(-2) not asked' -1='(-1) refused' 1='(1) less than high school'
                2='(2) high school' 3='(3) some college' 4='(4) bachelor''s degree or higher';
VALUE ppa2009f  -2='(-2) Not asked' -1='(-1) Refused' 1='(1) More than once a week'
                2='(2) Once a week' 3='(3) Once or twice a month' 4='(4) A few times a year'
                5='(5) Once a year or less' 6='(6) Never';
VALUE w4_q4fff  -1='(-1) Refused' 1='(1) I wanted the (divorce/separation) more'
                2='(2) (xname) wanted the (divorce/separation) more'
                3='(3) We both equally wanted the (divorce/separation)';
VALUE w3_xtypf  1='(1) same sex couple' 2='(2) heterosexual couple';
VALUE pp3_ppef  -2='(-2) Not asked' -1='(-1) refused' 1='(01) No formal education'
                2='(02) 1st, 2nd, 3rd, or 4th grade' 3='(03) 5th or 6th grade' 4='(04) 7th or 8th grade'
                5='(05) 9th grade' 6='(06) 10th grade' 7='(07) 11th grade' 8='(08) 12th grade NO DIPLOMA'
                9='(09) HIGH SCHOOL GRADUATE - high school DIPLOMA or the equivalent (GED)'
                10='(10) Some college, no degree' 11='(11) Associate degree' 12='(12) Bachelors degree'
                13='(13) Masters degree' 14='(14) Professional or Doctorate degree';
VALUE pp3_pph_1f  -2='(-2) Not asked' -1='(-1) refused'
                1='(1) A one-family house detached from any other house'
                2='(2) A one-family house attached to one or more houses'
                3='(3) A building with 2 or more apartments' 4='(4) A mobile home'
                5='(5) Boat, RV, van, etc.';
VALUE w4_xquaf  0='(0) unqualified for wave 4' 1='(1) qualified for wave 4';
VALUE q22fffff  -1='(-1) refused' 1='(1) less than one month' 2='(2) 1-3 months'
                3='(3) 4-6 months' 4='(4) 7 months - 1 year' 5='(5) more than 1 year, less than 2 years'
                6='(6) more than 2 years, less than 3 years' 7='(7) 3 years or more';
VALUE recsourf  1='(1) gen pop sample' 2='(2) glb augment sample'
                3='(3) glb withdrawn sample' 4='(4) glb item refused sample';
VALUE q6bfffff  -1='(-1) refused' 1='(1) white' 2='(2) black or african american'
                3='(3) american indian, aleut, or eskimo' 4='(4) asian or pacific islander'
                5='(5) other (please specify)';
VALUE q10fffff  -1='(-1) refused' 1='(01) no formal education' 2='(02) 1st - 4th grade'
                3='(03) 5th or 6th grade' 4='(04) 7th or 8th grade' 5='(05) 9th grade'
                6='(06) 10th grade' 7='(07) 11th grade' 8='(08) 12th grade no diploma'
                9='(09) hs graduate or ged' 10='(10) some college, no degree' 11='(11) associate degree'
                12='(12) bachelor''s degree' 13='(13) master''s degree'
                14='(14) professional or doctorate degree';
VALUE w4_q3fff  -1='(-1) Refused' 1='(1) divorce' 2='(2) separation with no divorce'
                3='(3) (xnamep) passed away, is deceased';
VALUE ppagectf  1='(01) 18-29' 2='(02) 30-44' 3='(03) 45-59' 4='(04) 60+'
                99='(99) under 18';
VALUE pprentff  -2='(-2) not asked' -1='(-1) refused'
                1='(1) owned or being bought by you or someone in your household' 2='(2) rented for cash'
                3='(3) occupied without payment of cash rent';
VALUE w2_f1cof  0='(0) did not complete followup survey' 1='(1) completed followup survey';
VALUE w5x_civf  0='(0) no civil union or DP prior to wave 5'
                1='(1) yes civil union or DP prior to wave 5';
VALUE pp3_ppe_1f  -2='(-2) Not asked' -1='(-1) refused' 1='(1) Less than high school'
                2='(2) High school' 3='(3) Some college' 4='(4) Bachelor''s degree or higher';
VALUE pp2_aftf  0='(0) No second background survey' 1='(1) Yes second background survey';
VALUE ppmarit_1f  -2='(-2) Not asked' -1='(-1) Refused' 1='(1) Married' 2='(2) Widowed'
                3='(3) Divorced' 4='(4) Separated' 5='(5) Never married' 6='(6) Living with partner';
VALUE w2_panef  1='(1) active kn panelist' 2='(2) withdrawn kn panelist';
VALUE q24_codf  -1='(-1) refused' 1='(1) answered but refused to provide information';
VALUE how_lonf  1='(1) 0-2' 2='(2) 3-5' 3='(3) 6-10' 4='(4) 11-15' 5='(5) 16-20'
                6='(6) 21-30' 7='(7) 31+';
VALUE q7bfffff  -1='(-1) refused' 1='(01) baptist - any denomination'
                2='(02) protestant (e.g. methodist, lutheran, presbyterian, episcopal)' 3='(03) catholic'
                4='(04) mormon' 5='(05) jewish' 6='(06) muslim' 7='(07) hindu' 8='(08) buddhist'
                9='(09) pentecostal' 10='(10) eastern orthodox' 11='(11) other christian'
                12='(12) other non-christian, please specify' 13='(13) none';
VALUE w234_cof  0='(0) still together at w4, or some follow-up w/o break-up'
                1='(1) broke up at wave 2, 3, or 4';
VALUE civilnof  0='(0) real civ union or dom partnership'
                1='(1) perhaps not real civ union or dom partnership';
VALUE q24_metf  0='(0) met offline' 1='(1) met online';
VALUE pp3_ppwf  -2='(-2) Not asked' -1='(-1) refused' 1='(1) Working - as a paid employee'
                2='(2) Working - self-employed' 3='(3) Not working - on temporary layoff from a job'
                4='(4) Not working - looking for work' 5='(5) Not working - retired'
                6='(6) Not working - disabled' 7='(7) Not working - other';
VALUE home_cof  -1='(-1) refused' 1='(01) united states' 2='(02) cambodia' 3='(03) canada'
                4='(04) china' 5='(05) colombia' 6='(06) cuba' 7='(07) dominican republic'
                8='(08) ecuador' 9='(09) el salvador' 10='(10) former yugoslavia' 11='(11) france'
                12='(12) germany' 13='(13) great britain' 14='(14) greece' 15='(15) guatemala'
                16='(16) guyana' 17='(17) haiti' 18='(18) honduras' 19='(19) hungary' 20='(20) india'
                21='(21) iran' 22='(22) ireland' 23='(23) italy' 24='(24) jamaica' 25='(25) japan'
                26='(26) korea' 27='(27) laos' 28='(28) mexico' 29='(29) nicaragua' 30='(30) peru'
                31='(31) philippines' 32='(32) poland' 33='(33) portugal' 34='(34) russia'
                35='(35) taiwan' 36='(36) thailand' 37='(37) trinidad and tobago' 38='(38) vietnam'
                39='(39) another country, please specify';
VALUE marrynof  0='(0) married' 1='(1) not legally married';
VALUE w3_q1fff  -1='(-1) Refused' 1='(1) yes' 2='(2) no';
VALUE w3_mbti_1f  1='(01) January' 2='(02) February' 3='(03) March' 4='(04) April'
                5='(05) May' 6='(06) June' 7='(07) July' 8='(08) August' 9='(09) September'
                10='(10) October' 11='(11) November' 12='(12) December';
VALUE w5_civ_f  -1='(-1) Refused';
VALUE w2_q10ff  -1='(-1) refused' 1='(1) i wanted to break up more'
                2='(2) (partner) wanted to break up more' 3='(3) we both equally wanted to break up';
VALUE w4_qualf  -1='(-1) Refused' 1='(1) Excellent' 2='(2) Good' 3='(3) Fair' 4='(4) Poor'
                5='(5) Very Poor';
VALUE w3_q10ff  -1='(-1) Refused' 1='(1) I wanted to break up more'
                2='(2) (xNameP) wanted to break up more' 3='(3) We both equally wanted to break up';
VALUE q7afffff  -1='(-1) refused' 1='(1) yes' 2='(2) no';
VALUE interstf  0='(0) stayer' 1='(1) mover';
VALUE q34fffff  -1='(-1) refused' 1='(1) excellent' 2='(2) good' 3='(3) fair' 4='(4) poor'
                5='(5) very poor';
VALUE q21a_ref  1='(1) refused';
VALUE w3_q7fff  -1='(-1) Refused' 1='(1) yes, married (xNameP)'
                2='(2) no, did not marry (xNameP)';
VALUE w4_attrf  -1='(-1) Refused' 1='(1) very attractive' 2='(2) moderately attractive'
                3='(3) slightly attractive' 4='(4) not at all attractive';
VALUE w3_q9fff  -1='(-1) Refused' 1='(1) We broke up'
                2='(2) (xNameP) passed away, is deceased' 3='(3) Other (please describe)';
VALUE w5_outnf  -1='(-1) Refused' 1='(1) All or most of them' 2='(2) Some of them'
                3='(3) Only a few of them' 4='(4) None of them';
VALUE w5_sourf  1='(1) online' 2='(2) phone';
VALUE pp3_pphf  -2='(-2) Not asked' -1='(-1) refused' 0='(0) No' 1='(1) Yes';
VALUE w5_q3fff  1='(1) Divorce' 2='(2) Separation with no divorce'
                3='(3) (name) passed away, is deceased';
VALUE w5x_marf  1='(1) married' 2='(2) unmarried partners';
VALUE ppethmff  -2='(-2) not asked' -1='(-1) refused' 1='(1) white, non-hispanic'
                2='(2) black, non-hispanic' 3='(3) other, non-hispanic' 4='(4) hispanic'
                5='(5) 2+ races, non-hispanic';
VALUE ppgendef  -2='(-2) not asked' -1='(-1) refused' 1='(1) male' 2='(2) female';
VALUE w4_q10ff  -1='(-1) Refused' 1='(1) I wanted to break up more'
                2='(2) (xnamep) , wanted to break up more' 3='(3) We both equally wanted to break up';
VALUE parentaf  0='(0) don''t approve or don''t know' 1='(1) approve';
VALUE ppmsacaf  -2='(-2) not asked' -1='(-1) refused' 0='(0) non-metro' 1='(1) metro';
VALUE w2_xssff  1='(1) yes, qualified to ask about new domestic parterships' 2='(2) no';
VALUE s2ffffff  -1='(-1) refused'
                1='(1) yes, i have a sexual partner (boyfriend or girlfriend)'
                2='(2) i have a romantic partner who is not yet a sexual partner'
                3='(3) no, i am single, with no boyfriend, no girlfriend and no romantic or sexual partner';
VALUE w5_sex_f  -1='(-1) Refused' 1='(1) Once a day or more' 2='(2) 3 to 6 times a week'
                3='(3) Once or twice a week' 4='(4) 2 to 3 times a month' 5='(5) Once a month or less';
VALUE zphisp_f  0='(0) <2%' 1='(1) 2%-3.99%' 2='(2) 4%-19.99%' 3='(3) 20%+';
VALUE w5x_quaf  0='(0) not qualified for wave 5' 1='(1) qualified for wave 5';
VALUE zpforbof  0='(0) <2%' 1='(1) 2%-4.99%' 2='(2) 5%-11.99%' 3='(3) 12%+';
VALUE w5_compf  0='(0) eligible but not completed' 1='(1) wave 5 completed';
VALUE q18a_1ff  -1='(-1) refused' 0='(0) no' 1='(1) yes';
VALUE met_thr_1f  0='(0) not met through family' 1='(1) met through family';
VALUE q17cffff  -1='(-1) refused' 1='(1) i am sexually attracted only to men'
                2='(2) i am mostly sexually attracted to men, less often sexually attracted to women'
                3='(3) i am equally sexually attracted to men and women'
                4='(4) i am mostly sexually attracted to women, less often sexually attracted to men'
                5='(5) i am sexually attracted only to women';
VALUE how_metf  1='(1) reconnected: already knew partner but reconnected online'
                2='(2) Mediated: Online connection was mediated by friends, family, or others'
                3='(3) Previously Strangers: Before online connection respondent and partner were strangers'
                4='(4) We cannot tell from the existed data whether the respondent and partner knew each other prior to online connection'
                5='(5) Probably Did Not meet partner online, despite positive answer to q32 or q24';
VALUE w3_xparf  0='(0) unqualified bc unpartnered at main survery'
                1='(1) Qualified for follow-up at wave3' 2='(2) unqualified bc broke up at wave 2';
VALUE w2_sourf  1='(1) online' 2='(2) telephone';
VALUE pp5_ppmf  0='(0) non-Metro' 1='(1) Metro';
VALUE papevanf  -2='(-2) not asked' -1='(-1) refused' 1='(1) yes' 2='(2) no';
VALUE q32fffff  -1='(-1) refused'
                1='(1) yes, a social networking site (like facebook or myspace)'
                2='(2) no, we did not meet through the internet'
                3='(3) yes, an internet dating or matchmaking site (like eharmony or match.com)'
                4='(4) yes, an internet classified advertising site (like craigslist)'
                5='(5) yes, an internet chat room' 6='(6) yes, a different kind of internet service';
VALUE zpmedhhf  0='(0) <$34K' 1='(1) $34000-$41999' 2='(2) $42000-$64999' 3='(3) $65K+';
VALUE s1ffffff  -1='(-1) refused' 1='(1) yes, i am married' 2='(2) no, i am not married';
VALUE q18a_3ff  -1='(-1) refused' 0='(0) have either DP or CU'
                1='(1) have neither DP nor CU';
VALUE papglb__1f  -2='(-2) not asked' -1='(-1) refused' 1='(1) yes' 2='(2) no'
                3='(3) i would prefer to not answer this question';
VALUE w5_q7fff  -1='(-1) Refused' 1='(1) Yes, married (name)'
                2='(2) No, did not marry (name)';
VALUE w2_donof  1='(1) withdrawn case on noncontact list' 2='(2) all other cases';
VALUE w3_multf  1='(1) reported multiple partner names in main survey';
VALUE q31_othf  0='(0) No' 1='(1) Yes';
VALUE met_thr_2f  0='(0) did not meet through or as neighbors'
                1='(1) met through or as neighbors';
VALUE w4_statf  1='(1) Active' 2='(2) Withdrawn' 3='(3) Retired' 4='(4) Do not call';
VALUE pp3_ppr_1f  -2='(-2) Not asked' -1='(-1) refused' 1='(1) Northeast' 2='(2) Midwest'
                3='(3) South' 4='(4) West';
VALUE ppq14arf  -2='(-2) not asked' -1='(-1) refused' 1='(01) white'
                2='(02) black, or african american' 3='(03) american indian or alaska native'
                4='(04) asian indian' 5='(05) chinese' 6='(06) filipino' 7='(07) japanese'
                8='(08) korean' 9='(09) vietnamese' 10='(10) other asian' 11='(11) native hawaiian'
                12='(12) guamanian or chamorro' 13='(13) samoan' 14='(14) other pacific islander'
                15='(15) some other race';
VALUE w5_q9fff  1='(1) We broke up' 2='(2) (name) passed away, is deceased';
VALUE w2_xmarf  1='(1) married' 2='(2) partnered';
VALUE respondf  1='(1) NH white' 2='(2) NH black' 3='(3) NH Amer Indian'
                4='(4) NH Asian Pac Islander' 5='(5) NH Other' 6='(6) Hispanic';
VALUE q15a1_cf  -1='(-1) refused' 1='(1) United States' 2='(2) all others';
VALUE w3_sourf  1='(1) Online' 2='(2) Telephone';
VALUE w3_mbtif  -1='(-1) Please Select' 2='(2) 2009' 3='(3) 2010' 4='(4) 2011';
VALUE pphhcomf  -1='(-1) please select' 2='(2) male' 3='(3) female';
VALUE w4_q9fff  1='(1) We broke up' 2='(2) (xnamep) passed away, is deceased';
VALUE q17dffff  -1='(-1) refused' 1='(1) i am sexually attracted only to women'
                2='(2) i am mostly sexually attracted to women, less often sexually attracted to men'
                3='(3) i am equally sexually attracted to men and women'
                4='(4) i am mostly sexually attracted to men, less often sexually attracted to women'
                5='(5) i am sexually attracted only to men';
VALUE q13affff  -1='(-1) refused' 1='(1) yes, the same'
                2='(2) no, i have changed religions';
VALUE ppincimf  -2='(-2) not asked' -1='(-1) refused' 1='(01) less than $5,000'
                2='(02) $5,000 to $7,499' 3='(03) $7,500 to $9,999' 4='(04) $10,000 to $12,499'
                5='(05) $12,500 to $14,999' 6='(06) $15,000 to $19,999' 7='(07) $20,000 to $24,999'
                8='(08) $25,000 to $29,999' 9='(09) $30,000 to $34,999' 10='(10) $35,000 to $39,999'
                11='(11) $40,000 to $49,999' 12='(12) $50,000 to $59,999' 13='(13) $60,000 to $74,999'
                14='(14) $75,000 to $84,999' 15='(15) $85,000 to $99,999' 16='(16) $100,000 to $124,999'
                17='(17) $125,000 to $149,999' 18='(18) $150,000 to $174,999' 19='(19) $175,000 or more';
VALUE ppeducff  -2='(-2) not asked' -1='(-1) refused' 1='(01) no formal education'
                2='(02) 1st, 2nd, 3rd, or 4th grade' 3='(03) 5th or 6th grade' 4='(04) 7th or 8th grade'
                5='(05) 9th grade' 6='(06) 10th grade' 7='(07) 11th grade' 8='(08) 12th grade no diploma'
                9='(09) high school graduate - high school diploma or the equivalent (ged)'
                10='(10) some college, no degree' 11='(11) associate degree' 12='(12) bachelors degree'
                13='(13) masters degree' 14='(14) professional or doctorate degree';
VALUE zpnhblaf  0='(0) <1%' 1='(1) 1%-2.99%' 2='(2) 3%-19.99%' 3='(3) 20% or more';
VALUE w4_xssff  1='(1) Yes' 2='(2) No';
VALUE q17bffff  -1='(-1) refused' 1='(1) never married' 2='(2) once' 3='(3) twice'
                4='(4) three times' 5='(5) four or more times';
VALUE paprelif  1='(01) Baptist- any denomination'
                2='(02) Protestant (e.g., Methodist, Lutheran, Presbyterian, Episcopal)'
                3='(03) Catholic' 4='(04) Mormon' 5='(05) Jewish' 6='(06) Muslim' 7='(07) Hindu'
                8='(08) Buddhist' 9='(09) Pentecostal' 10='(10) Eastern Orthodox'
                11='(11) other Christian' 12='(12) other non-Christian, please specify' 13='(13) None';
VALUE w3_xssff  1='(1) yes' 2='(2) no';
VALUE w3_xmarf  1='(1) Married' 2='(2) Partnered';
VALUE pp4_pphf  -2='(-2) Not asked' -1='(-1) refused';
VALUE w5_q4fff  1='(1) I wanted the divorce/separation more'
                2='(2) (name) wanted the divorce/separation more'
                3='(3) We both equally wanted the divorce/separation';
VALUE zpruralf  0='(0) non rural' 1='(1) rural';
VALUE zpnhwhif  0='(0) <55%' 1='(1) 55%-79.99%' 2='(2) 80%-91.99%' 3='(3) 92% and higher';
VALUE q6afffff  -1='(-1) refused' 1='(1) no (not latino or hispanic)'
                2='(2) yes, mexican, mexican american, chicano' 3='(3) yes, puerto rican'
                4='(4) yes, cuban' 5='(5) yes, other latino/hispanic';
VALUE q26fffff  -1='(-1) refused' 1='(1) attended same college or university'
                2='(2) did not attend same college or university';
VALUE pppartyf  -2='(-2) not asked' -1='(-1) refused' 1='(1) republican' 2='(2) other'
                3='(3) democrat';
VALUE q23fffff  -1='(-1) refused' 1='(1) i earned more'
                2='(2) we earned about the same amount' 3='(3) partner earned more';
VALUE qflagfff  1='(1) partnered' 2='(2) no spouse or partner or otherwise unqualified';
VALUE same_sef  0='(0) different sex couple' 1='(1) same-sex couple';
VALUE w2_q4fff  -1='(-1) refused' 1='(1) i wanted the (divorce/separation) more'
                2='(2) (partner) wanted the (divorce/separation) more'
                3='(3) we both equally wanted the (divorce/separation)';
VALUE marriedf  0='(0) not married' 1='(1) married';
VALUE w3_brokf  0='(0) still together' 1='(1) broke up' 2='(2) partner deceased';
VALUE w2_q7fff  -1='(-1) refused' 1='(1) yes, married (partner)'
                2='(2) no, did not marry (partner)';
VALUE irb_conf  -1='(-1) refused' 1='(1) yes, i agree to participate'
                2='(2) no, i don''t agree to participate';
VALUE w2_assif  1='(1) assigned to survey' 2='(2) not assigned to survey';
VALUE gender_f  1='(1) opposite gender only' 2='(2) mostly opposite'
                3='(3) both genders equally' 4='(4) same gender mostly' 5='(5) only same gender';
VALUE w4_q7fff  -1='(-1) Refused' 1='(1) Yes, married (xnamep)'
                2='(2) No, did not marry (xnamep)';
VALUE w4_xmarf  1='(1) Married' 2='(2) Unmarried partners';
VALUE ppagefff  -2='(-2) not asked' -1='(-1) refused';
VALUE ppworkff  -2='(-2) not asked' -1='(-1) refused' 1='(1) working - as a paid employee'
                2='(2) working - self-employed' 3='(3) not working - on temporary layoff from a job'
                4='(4) not working - looking for work' 5='(5) not working - retired'
                6='(6) not working - disabled' 7='(7) not working - other';
VALUE met_thr_3f  0='(0) did not meet through or as coworkers'
                1='(1) met through or as coworkers';
VALUE partnerf  0='(0) not deceased' 1='(1) apparently deceased';
VALUE w2w3_cof  0='(0) still together, or lost to follow-up, or partner deceased'
                1='(1) broke up';
VALUE pphispaf  -2='(-2) not asked' -1='(-1) refused' 1='(1) no, i am not'
                2='(2) yes, mexican, mexican-american, chicano' 3='(3) yes, puerto rican'
                4='(4) yes, cuban' 5='(5) yes, central american' 6='(6) yes, south american'
                7='(7) yes, caribbean' 8='(8) yes, other spanish/hispanic/latino';
VALUE q25fffff  -1='(-1) refused' 1='(1) same high school' 2='(2) different high school';
VALUE q4ffffff  -1='(-1) refused' 1='(1) male' 2='(2) female'
                3='(3) other, please specify';
VALUE w2_multf  1='(1) includes multiple names';
VALUE w3_q3fff  -1='(-1) Refused' 1='(1) divorce' 2='(2) separation with no divorce'
                3='(3) (xNameP) passed away, is deceased';
VALUE pphhheaf  -2='(-2) not asked' -1='(-1) refused' 0='(0) no' 1='(1) yes';
VALUE either_f  -1='(-1) probably not met online, q32 and q24 disagree'
                0='(0) not met online' 1='(1) met online';
VALUE w2_q8fff  -1='(-1) refused'
                1='(1) no, we have not gotten a domestic partnership or civil union agreement'
                2='(2) yes, we have gotten a domestic partnership or civil union agreement';
VALUE pp3_ppe_2f  -2='(-2) Not asked' -1='(-1) refused' 1='(1) White, Non-Hispanic'
                2='(2) Black, Non-Hispanic' 3='(3) Other, Non-Hispanic' 4='(4) Hispanic'
                5='(5) 2+ Races, Non-Hispanic';
VALUE q29fffff  -1='(-1) refused' 1='(1) father and mother' 2='(2) father only'
                3='(3) mother only' 4='(4) neither father nor mother are alive';
VALUE w4_xtypf  1='(1) same-sex couple' 2='(2) different sex couple';
VALUE pphousef  -2='(-2) not asked' -1='(-1) refused'
                1='(1) a one-family house detached from any other house'
                2='(2) a one-family house attached to one or more houses'
                3='(3) a building with 2 or more apartments' 4='(4) a mobile home'
                5='(5) boat, rv, van, etc.';
VALUE q30fffff  -1='(-1) refused' 1='(1) approve' 2='(2) neither approve nor disapprove'
                3='(3) disapprove' 4='(4) do not know';
VALUE w3_q4fff  -1='(-1) Refused' 1='(1) I wanted the (divorce/separation) more.'
                2='(2) (xNameP) wanted the (divorce/separation) more.'
                3='(3) We both equally wanted the (divorce/separation).';
*/


* SAS DATA, INFILE, INPUT STATEMENTS;

DATA;
INFILE "data-filename" LRECL=1284;
INPUT
       CASEID_NEW 1-7          WEIGHT1 8-13
        WEIGHT2 14-19           PPAGE 20-21             PPAGECAT 22-23
        PPAGECT4 24-25          PPEDUC 26-27            PPEDUCAT 28-29
        PPETHM 30-31            PPGENDER 32-33          PPHHHEAD 34-35
        PPHOUSEHOLDSIZE 36-37   PPHOUSE 38-39           PPINCIMP 40-41
        HHINC 42-47             PPMARIT 48-49           PPMSACAT 50-51
        PPREG4 52-53            PPREG9 54               PPRENT 55-56
        PPT01 57-58             PPT1317 59-60           PPT18OV 61-62
        PPT25 63-64             PPT612 65-66            CHILDREN_IN_HH 67
        PPWORK 68-69            PPNET 70                PPQ14ARACE 71-72
        PPHISPAN 73-74          PPRACE_WHITE 75-76      PPRACE_BLACK 77-78
        PPRACE_NATIVEAMERICAN 79-80 PPRACE_ASIANINDIAN 81-82 PPRACE_CHINESE 83-84
        PPRACE_FILIPINO 85-86   PPRACE_JAPANESE 87-88   PPRACE_KOREAN 89-90
        PPRACE_VIETNAMESE 91-92 PPRACE_OTHERASIAN 93-94 PPRACE_HAWAIIAN 95-96
        PPRACE_GUAMANIAN 97-98  PPRACE_SAMOAN 99-100    PPRACE_OTHERPACIFICISLANDER 101-102
        PPRACE_SOMEOTHERRACE 103-104 PAPGLB_FRIEND 105-106   PPPARTYID3 107-108
        PAPEVANGELICAL 109-110  PAPRELIGION 111-112     PPPPCMDATE_YRMO 113-118
        PPPADATE_YRMO 119-124   PPHHCOMP11_MEMBER2_AGE 125-126 PPHHCOMP11_MEMBER3_AGE 127-128
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
        PPHHCOMP11_MEMBER15_RELATIONSHIP 204-205 IRB_CONSENT 206-207     WEIGHT3 208-213
        WEIGHT4 214-219         WEIGHT5 220-225         WEIGHT6 226-231
        WEIGHT7 232-237         WEIGHT_COUPLES_CORESIDENT 238-252 .8 HCMST_MAIN_INTERVIEW_YRMO 253-258
        DURATION 259-263        QFLAG 264               GLBSTATUS 265
        PAPGLB_STATUS 266-267   RECSOURCE 268           S1 269-270
        S1A 271-272             S2 273-274              Q3_CODES 275-276
        Q4 277-278              Q5 279-280              Q6A 281-282
        Q6B 283-284             Q7A 285-286             Q7B 287-288
        Q8A 289-290             Q8B 291-292             Q9 293-294
        Q10 295-296             Q11 297-298             Q12 299-300
        Q13A 301-302            Q13B 303-304            Q14 305-306
        Q15A1_COMPRESSED 307-308 Q16 309-310             Q17A 311-312
        Q17B 313-314            Q17C 315-316            Q17D 317-318
        GENDER_ATTRACTION 319   Q18A_1 320-321          Q18A_2 322-323
        Q18A_3 324-325          Q18A_REFUSED 326        Q18B_CODES 327-328
        Q18C_CODES 329-330      Q19 331-332             Q20 333-334
        Q21A 335-336            Q21A_REFUSAL 337        Q21B 338-339
        Q21B_REFUSAL 340        Q21C 341-342            Q21C_REFUSAL 343
        Q21D 344-345            Q21D_REFUSAL 346        Q21E 347-348
        Q21E_REFUSAL 349        Q22 350-351             Q23 352-353
        Q24_CODES 354-355       Q25 356-357             Q26 358-359
        Q27 360-361             Q28 362-363             Q29 364-365
        Q30 366-367             Q31_1 368-369           Q31_2 370-371
        Q31_3 372-373           Q31_4 374-375           Q31_5 376-377
        Q31_6 378-379           Q31_7 380-381           Q31_8 382-383
        Q31_9 384-385           Q31_OTHER_TEXT_ENTERED 386 Q32 387-388
        Q33_1 389-390           Q33_2 391-392           Q33_3 393-394
        Q33_4 395-396           Q33_5 397-398           Q33_6 399-400
        Q33_7 401-402           Q33_OTHER_TEXT_ENTERED 403 Q34 404-405
        Q35_CODES 406-407       Q35_TEXT_ENTERED 408    Q24_MET_ONLINE 409
        SUMMARY_Q24_TOTAL 410   Q24_R_COWORK 411        Q24_R_FRIEND 412
        Q24_R_FAMILY 413        Q24_R_SIG_OTHER 414     Q24_R_NEIGHBOR 415
        Q24_P_COWORK 416        Q24_P_FRIEND 417        Q24_P_FAMILY 418
        Q24_P_SIG_OTHER 419     Q24_P_NEIGHBOR 420      Q24_BTWN_I_COWORK 421
        Q24_BTWN_I_FRIEND 422   Q24_BTWN_I_FAMILY 423   Q24_BTWN_I_SIG_OTHER 424
        Q24_BTWN_I_NEIGHBOR 425 Q24_SCHOOL 426          Q24_COLLEGE 427
        Q24_MILITARY 428        Q24_CHURCH 429          Q24_VOL_ORG 430
        Q24_CUSTOMER 431        Q24_BAR_RESTAURANT 432  Q24_INTERNET_DATING 433
        Q24_INTERNET_SOCIAL_NETWORKING 434 Q24_INTERNET_GAME 435   Q24_INTERNET_CHAT 436
        Q24_INTERNET_COMMUNITY 437 Q24_INTERNET_OTHER 438  Q24_PUBLIC 439
        Q24_PRIVATE_PARTY 440   Q24_BLIND_DATE 441      Q24_VACATION 442
        Q24_SINGLES_SERVICE_NON_INTERNET 443 Q24_BUSINESS_TRIP 444   Q24_WORK_NEIGHBOR 445
        Q24_FAM_SISTER_ACTIVE 446 Q24_FAM_BROTHER_ACTIVE 447 Q24_FAM_MOTHER_ACTIVE 448
        Q24_FAM_FATHER_ACTIVE 449 Q24_FAM_OTHER_ACTIVE 450 Q24_FAM_COUSINS_ACTIVE 451
        Q24_FAM_AUNT_NIECE_ACTIVE 452 Q24_FAM_UNCLE_NEPHEW_ACTIVE 453 Q24_FAM_GRANDMOTHER_ACTIVE 454
        Q24_FAM_GRANDFATHER_ACTIVE 455 Q24_FAM_SISTER_PASSIVE 456 Q24_FAM_BROTHER_PASSIVE 457
        Q24_FAM_MOTHER_PASSIVE 458 Q24_FAM_FATHER_PASSIVE 459 Q24_FAM_OTHER_PASSIVE 460
        Q24_FAM_COUSINS_PASSIVE 461 Q24_FAM_AUNT_NIECE_PASSIVE 462 Q24_FAM_UNCLE_NEPHEW_PASSIVE 463
        Q24_FAM_GRANDMOTHER_PASSIVE 464 Q24_FAM_GRANDFATHER_PASSIVE 465 Q24_FAM_FEMALE 466
        Q24_FAM_MALE 467        DISTANCEMOVED_10MI 468-472 MARRYNOTREALLY 473
        MARRYCOUNTRY $474-479   CIVILNOTREALLY 480      PARTNER_DECEASED 481
        PARTNER_RELIGION_RECLASSIFIED 482-483 PARTNER_RELIGION_CHILD_RECLASS 484-485 OWN_RELIGION_CHILD_RECLASS 486-487
        Q32_INTERNET 488        HOW_MET_ONLINE 489      EITHER_INTERNET 490
        EITHER_INTERNET_ADJUSTED 491-492 SAME_SEX_COUPLE 493     POTENTIAL_PARTNER_GENDER_RECODES 494-495
        ALT_PARTNER_GENDER 496-497 HOW_LONG_AGO_FIRST_MET 498-499 HOW_LONG_AGO_FIRST_ROMANTIC 500-501
        HOW_LONG_AGO_FIRST_COHAB 502-503 HOW_LONG_AGO_FIRST_MET_CAT 504 HOW_LONG_RELATIONSHIP 505-518 .11
        RESPONDENT_RACE 519     PARTNER_RACE 520        AGE_DIFFERENCE 521-522
        MET_THROUGH_FRIENDS 523 MET_THROUGH_FAMILY 524  MET_THROUGH_AS_NEIGHBORS 525
        MET_THROUGH_AS_COWORKERS 526 RESPONDENT_RELIGION_AT_16 527-528 RESPONDENT_RELIG_16_CAT 529
        PARTNER_RELIGION_AT_16 530-531 PARTNER_RELIG_16_CAT 532 MARRIED 533
        PARENTAL_APPROVAL 534   RESPONDENT_YRSED 535-538 .1 PARTNER_YRSED 539-542 .1
        HOME_COUNTRY_RECODE 543-544 US_RAISED 545           PARTNER_MOM_YRSED 546-549 .1
        RESPONDENT_MOM_YRSED 550-553 .1 RELATIONSHIP_QUALITY 554 CORESIDENT 555
        PP2_AFTERP1 556         PP2_PPHHHEAD 557-558    PP2_PPHHSIZE 559-560
        PP2_PPHOUSE 561-562     PP2_PPINCIMP 563-564    PP2_PPMARIT 565-566
        PP2_PPMSACAT 567-568    PP2_PPEDUC 569-570      PP2_PPEDUCAT 571-572
        PP2_RESPONDENT_YRSED 573-576 .1 PP2_PPETHM 577-578      PP2_PPREG4 579-580
        PP2_PPREG9 581          PP2_PPRENT 582-583      PP2_PPT01 584-585
        PP2_PPT1317 586-587     PP2_PPT18OV 588-589     PP2_PPT25 590-591
        PP2_PPT612 592-593      PP2_PPWORK 594-595      PP2_PPNET 596
        PP2_PPCMDATE_YRMO 597-602 PP_IGDR1 603            PP_IEDUC1 604
        PP2_IGDR2 605           PP2_IEDUC2 606          W2_DECEASED 607
        W2_MULTINAME 608        W2_PANELSTAT 609        W2_DONOTCONTACT 610
        W2_ASSIGNED 611         W2_F1COMPLETE 612       W2_HCMST_INTERVIEW_FIN_YRMO 613-618
        W2_DURATION 619-623     W2_XMARRY 624           W2_XSS 625
        W2_SOURCE 626           W2_Q1 627-628           W2_Q2 629-630
        W2_Q3 631-632           W2_Q4 633-634           W2_Q5 635-636
        W2_Q6 637-638           W2_Q7 639-640           W2_Q8 641-642
        W2_Q9 643-644           W2_Q10 645-646          W2_BROKE_UP 647
        W2_DAYS_ELAPSED 648-650 PP3_PPHHHEAD 651-652    PP3_PPHHSIZE 653-654
        PP3_PPHOUSE 655-656     PP3_PPINCIMP 657-658    PP3_PPMARIT 659-660
        PP3_PPMSACAT 661-662    PP3_PPRENT 663-664      PP3_PPREG4 665-666
        PP3_PPREG9 667          INTERSTATE_MOVER_PP1_PP2 668 INTERSTATE_MOVER_PP2_PP3 669
        INTERSTATE_MOVER_PP1_PP3 670 PP3_PPT01 671-672       PP3_PPT1317 673-674
        PP3_PPT18OV 675-676     PP3_PPT25 677-678       PP3_PPT612 679-680
        PP3_PPWORK 681-682      PP3_PPNET 683           PP3_PPCMDATE_YRMO 684-689
        PP3_PPEDUC 690-691      PP3_PPEDUCAT 692-693    PP3_RESPONDENT_YRSED 694-697 .1
        PP3_PPETHM 698-699      PP3_NEWER 700           W2W3_COMBO_BREAKUP 701
        W3_BROKE_UP 702         W3_XPARTNERED 703       W3_XDECEASED 704
        W3_MULTINAME 705        W3_XSS 706              W3_XLAST 707
        W3_XYEAR 708-711        W3_XMONTH 712           W3_XQUALIFIED 713
        W3_STATUS 714           W3_COMPLETE 715         W3_SOURCE 716
        W3_HCMST_INTERVIEW_FIN_YRMO 717-722 W3_DAYS_ELAPSED 723-725 W3_DURATION 726-731
        W3_XMARRY 732           W3_XTYPE 733            W3_Q1 734-735
        W3_Q2 736-737           W3_Q3 738-739           W3_Q4 740-741
        W3_MBTIMING_YEAR 742-743 W3_MBTIMING_MONTH 744-745 W3_Q5 746-747
        W3_Q6 748-749           W3_Q7 750-751           W3_Q8 752-753
        W3_Q9 754-755           W3_Q10 756-757          W3_NONMBTIMING_YEAR 758-761
        W3_NONMBTIMING_MONTH 762-763 ZPNHWHITE_CAT 764       ZPNHBLACK_CAT 765
        ZPHISP_CAT 766          ZPMEDHHINC_CAT 767      ZPFORBORN_CAT 768
        ZPRURAL_CAT 769         Q15A1_OTHER_UNEDITED $770-967 Q15A1 968-969
        Q15A3_CODES 970-971     W4_XQUALIFIED 972       W4_STATUS 973
        W4_COMPLETE 974         W4_SOURCE 975           W4_DURATION 976-980
        W4_HCMST_INTERVIEW_FIN_YRMO 981-986 W4_XTYPE 987            W4_XYEAR 988-991
        W4_XMONTH 992-993       W4_XMARRY 994           W4_XLAST 995
        W4_XWAVE1_MONTH 996     W4_XCIVIL 997           W4_XSS 998
        W4_Q1 999-1000          W4_Q2 1001-1002         W4_QUALITY 1003-1004
        W4_ATTRACTIVE 1005-1006 W4_ATTRACTIVE_PARTNER 1007-1008 W4_Q3 1009-1010
        W4_Q4 1011-1012         W4_MBTIMING_YEAR 1013-1016 W4_MBTIMING_MONTH 1017-1018
        W4_Q5 1019              W4_Q6 1020              W4_Q7 1021-1022
        W4_MAR_YEAR 1023-1026   W4_MAR_MONTH 1027-1028  W4_CIV_YEAR 1029-1032
        W4_Q8_A 1033-1034       W4_Q8_B 1035-1036       W4_Q9 1037
        W4_Q10 1038-1039        W4_NONMBTIMING_YEAR 1040-1043 W4_NONMBTIMING_MONTH 1044-1045
        RELATIONSHIP_QUALITY_W4 1046 W4_BROKE_UP 1047        W234_COMBO_BREAKUP 1048
        PP4_PPEDUC 1049-1050    PP4_PPEDUCAT 1051-1052  PP4_PPETHM 1053-1054
        PP4_PPHHHEAD 1055-1056  PP4_PPHHSIZE 1057-1058  PP4_PPHOUSE 1059-1060
        PP4_PPINCIMP 1061-1062  PP4_PPMARIT 1063-1064   PP4_PPMSACAT 1065-1066
        PP4_PPREG4 1067-1068    PP4_PPREG9 1069         PP4_PPRENT 1070-1071
        PP4_PPT01 1072-1073     PP4_PPT25 1074-1075     PP4_PPT612 1076-1077
        PP4_PPT1317 1078-1079   PP4_PPT18OV 1080-1081   PP4_PPWORK 1082-1083
        PP4_PPNET 1084          PP4_PPCMDATE_YRMO 1085-1090 PP4_NEWER 1091
        PPA2009_SERVICES_YRMO 1092-1097 PPA2009_HOW_OFTEN_SERVICES 1098-1099 W5_DURATION 1100-1104
        W5_SOURCE 1105          W5_COMPLETE 1106        W5_STATUS 1107
        W5X_QUALIFIED 1108      W5X_MARRY 1109          W5X_LAST 1110
        W5X_YEAR 1111-1114      W5X_CIVIL 1115          W5X_MONTH 1116-1117
        W5X_CIVYEAR 1118-1121   W5X_CIVMONTH 1122-1123  W5_Q1 1124-1125
        W5_Q2 1126-1127         W5_SEX_FREQUENCY 1128-1129 W5_P_MONOGAMY 1130-1131
        W5_IDENTITY 1132-1133   W5_OUTNESS 1134-1135    W5_Q3 1136
        W5_Q4 1137              W5_MBTIMING_MONTH 1138-1139 W5_MBTIMING_YEAR 1140-1143
        W5_Q5 1144-1145         W5_Q6 1146-1147         W5_Q7 1148-1149
        W5_MAR_YEAR 1150-1153   W5_MAR_MONTH 1154-1155  W5_Q8 1156-1157
        W5_CIV_YEAR 1158-1161   W5_CIV_MONTH 1162-1163  W5_Q9 1164
        W5_Q10 1165             W5_NONMBTIMING_YEAR 1166-1169 W5_NONMBTIMING_MONTH 1170-1171
        W5_BROKE_UP 1172        W5_HCMST_INTERVIEW_FIN_YRMO 1173-1178 W2345_COMBO_BREAKUP 1179
        RESPONDED_TO_W234OR5 1180 PP5_PPAGE 1181-1183     PP5_PPAGECAT 1184-1185
        PP5_PPAGECT4 1186-1187  PP5_PPEDUC 1188-1189    PP5_PPEDUCAT 1190-1191
        PP5_PPETHM 1192-1193    PP5_PPGENDER 1194-1195  PP5_PPHHHEAD 1196
        PP5_PPHHSIZE 1197-1198  PP5_PPHOUSE 1199-1200   PP5_PPINCIMP 1201-1202
        PP5_PPMARIT 1203-1204   PP5_PPCMDATE_YRMO 1205-1210 PP5_NEWER 1211
        PP5_PPMSACAT 1212       PP5_PPREG4 1213-1214    PP5_PPREG9 1215
        PP5_PPRENT 1216         PP5_PPT01 1217-1218     PP5_PPT25 1219
        PP5_PPT612 1220-1221    PP5_PPT1317 1222-1223   PP5_PPT18OV 1224-1225
        PP5_PPWORK 1226-1227    PP5_PPNET 1228          PPMARIT_2014 1229-1230
        PPCMARIT_2014_YRMO 1231-1236 PPMARIT_2013 1237-1238  PPCMARIT_2013_YRMO 1239-1244
        PPMARIT_2012 1245-1246  PPCMARIT_2012_YRMO 1247-1252 PPMARIT_2011 1253-1254
        PPCMARIT_2011_YRMO 1255-1260 PPMARIT_2010 1261-1262  PPCMARIT_2010_YRMO 1263-1268
        PPMARIT_2009 1269-1270  PPCMARIT_2009_YRMO 1271-1276 PPMARIT_2007 1277-1278
        PPCMARIT_2007_YRMO 1279-1284 ;


* SAS LABEL STATEMENT;

LABEL 
   CASEID_NEW= 'Client ID original (CASEID_NEW)' 
   WEIGHT1 = 'Main Weight for all respondents' 
   WEIGHT2 = 'Main Weight for Partnered Respondents' 
   PPAGE   = 'respondent age at time of HCMST wave I survey' 
   PPAGECAT= 'age - 7 categories' 
   PPAGECT4= 'age - 4 categories' 
   PPEDUC  = '(PPEDUC) education (highest degree received)' 
   PPEDUCAT= '(PPEDUCAT) education (categorical)' 
   PPETHM  = '(PPETHM) race / ethnicity' 
   PPGENDER= 'gender' 
   PPHHHEAD= '(PPHHHEAD) household head' 
   PPHOUSEHOLDSIZE= 'Including yourself, how many people currently live in your household at least 50% of the time?' 
   PPHOUSE = '(PPHOUSE) housing type' 
   PPINCIMP= 'household income (PPINCIMP)' 
   HHINC   = 'dollar value hhinc based on categorical var ppincimp' 
   PPMARIT = 'marital status (PPMARIT)' 
   PPMSACAT= 'msa status (PPMSACAT)' 
   PPREG4  = '(PPREG4) region 4 - based on state of residence' 
   PPREG9  = '(PPREG9) region 9 - based on state of residence' 
   PPRENT  = '(PPRENT) ownership status of living quarters' 
   PPT01   = 'number of children age <2 in HH (PPT01)' 
   PPT1317 = '(PPT1317) number of children age 13-17 in HH' 
   PPT18OV = 'number of adults age 18+ in HH (PPT18OV)' 
   PPT25   = '(PPT25) number of children age 2-5 in HH' 
   PPT612  = '(PPT612) number of children age 6-12 in HH' 
   CHILDREN_IN_HH= 'number of children in hh based on  ppt01+ ppt25+ ppt612+ ppt1317' 
   PPWORK  = '(PPWORK) current employment status' 
   PPNET   = 'hh has its own Internet access at the time of core adult profile' 
   PPQ14ARACE= 'which of these races do you identify with most closely?' 
   PPHISPAN= 'are you of spanish, hispanic, or latino descent?' 
   PPRACE_WHITE= 'white' 
   PPRACE_BLACK= 'black' 
   PPRACE_NATIVEAMERICAN= 'native american' 
   PPRACE_ASIANINDIAN= 'asian indian' 
   PPRACE_CHINESE= 'chinese' 
   PPRACE_FILIPINO= 'filipino' 
   PPRACE_JAPANESE= 'japanese' 
   PPRACE_KOREAN= 'korean' 
   PPRACE_VIETNAMESE= 'vietnamese' 
   PPRACE_OTHERASIAN= 'other asian' 
   PPRACE_HAWAIIAN= 'hawaiian' 
   PPRACE_GUAMANIAN= 'guamanian' 
   PPRACE_SAMOAN= 'samoan' 
   PPRACE_OTHERPACIFICISLANDER= 'other pacific islander' 
   PPRACE_SOMEOTHERRACE= 'some other race' 
   PAPGLB_FRIEND= 'q22:Do you have any friends or relatives who you know to be gay, lesbian, or bisexual?' 
   PPPARTYID3= 'derived: political party affiliation (3 categories)' 
   PAPEVANGELICAL= 'q26a:would you describe yourself as a born-again or evangelical christian?' 
   PAPRELIGION= 'q26:what is your religion?' 
   PPPPCMDATE_YRMO= 'date member completed first core profile survey in YYYYMM format' 
   PPPADATE_YRMO= 'date member completed public affairs survey in YYYYMM format' 
   PPHHCOMP11_MEMBER2_AGE= 'member 2 : age' 
   PPHHCOMP11_MEMBER3_AGE= 'member 3 : age' 
   PPHHCOMP11_MEMBER4_AGE= 'member 4 : age' 
   PPHHCOMP11_MEMBER5_AGE= 'member 5 : age' 
   PPHHCOMP11_MEMBER6_AGE= 'member 6 : age' 
   PPHHCOMP11_MEMBER7_AGE= 'member 7 : age' 
   PPHHCOMP11_MEMBER8_AGE= 'member 8 : age' 
   PPHHCOMP11_MEMBER9_AGE= 'member 9 : age' 
   PPHHCOMP11_MEMBER10_AGE= 'member 10 : age' 
   PPHHCOMP11_MEMBER11_AGE= 'member 11 : age' 
   PPHHCOMP11_MEMBER12_AGE= 'member 12 : age' 
   PPHHCOMP11_MEMBER13_AGE= 'member 13 : age' 
   PPHHCOMP11_MEMBER14_AGE= 'member 14 : age' 
   PPHHCOMP11_MEMBER15_AGE= 'member 15 : age' 
   PPHHCOMP11_MEMBER2_GENDER= 'member 2 : gender' 
   PPHHCOMP11_MEMBER3_GENDER= 'member 3 : gender' 
   PPHHCOMP11_MEMBER4_GENDER= 'member 4 : gender' 
   PPHHCOMP11_MEMBER5_GENDER= 'member 5 : gender' 
   PPHHCOMP11_MEMBER6_GENDER= 'member 6 : gender' 
   PPHHCOMP11_MEMBER7_GENDER= 'member 7 : gender' 
   PPHHCOMP11_MEMBER8_GENDER= 'member 8 : gender' 
   PPHHCOMP11_MEMBER9_GENDER= 'member 9 : gender' 
   PPHHCOMP11_MEMBER10_GENDER= 'member 10 : gender' 
   PPHHCOMP11_MEMBER11_GENDER= 'member 11 : gender' 
   PPHHCOMP11_MEMBER12_GENDER= 'member 12 : gender' 
   PPHHCOMP11_MEMBER13_GENDER= 'member 13 : gender' 
   PPHHCOMP11_MEMBER14_GENDER= 'member 14 : gender' 
   PPHHCOMP11_MEMBER15_GENDER= 'member 15 : gender' 
   PPHHCOMP11_MEMBER2_RELATIONSHIP= 'member 2 : relationship to you' 
   PPHHCOMP11_MEMBER3_RELATIONSHIP= 'member 3 : relationship to you' 
   PPHHCOMP11_MEMBER4_RELATIONSHIP= 'member 4 : relationship to you' 
   PPHHCOMP11_MEMBER5_RELATIONSHIP= 'member 5 : relationship to you' 
   PPHHCOMP11_MEMBER6_RELATIONSHIP= 'member 6 : relationship to you' 
   PPHHCOMP11_MEMBER7_RELATIONSHIP= 'member 7 : relationship to you' 
   PPHHCOMP11_MEMBER8_RELATIONSHIP= 'member 8 : relationship to you' 
   PPHHCOMP11_MEMBER9_RELATIONSHIP= 'member 9 : relationship to you' 
   PPHHCOMP11_MEMBER10_RELATIONSHIP= 'member 10 : relationship to you' 
   PPHHCOMP11_MEMBER11_RELATIONSHIP= 'member 11 : relationship to you' 
   PPHHCOMP11_MEMBER12_RELATIONSHIP= 'member 12 : relationship to you' 
   PPHHCOMP11_MEMBER13_RELATIONSHIP= 'member 13 : relationship to you' 
   PPHHCOMP11_MEMBER14_RELATIONSHIP= 'member 14 : relationship to you' 
   PPHHCOMP11_MEMBER15_RELATIONSHIP= 'member 15 : relationship to you' 
   IRB_CONSENT= 'irb consent' 
   WEIGHT3 = 'Supplementary weight for all qualified glb and non-glb separately' 
   WEIGHT4 = 'Supplementary weight for genpop and augment samples weighted separately' 
   WEIGHT5 = 'Supplementary weight for all qualified respondents scaled from weight4' 
   WEIGHT6 = 'Supplementary weight for total glb genpop and augment respondents' 
   WEIGHT7 = 'Supplementary weight for total qualified glb genpop and augment respondents' 
   WEIGHT_COUPLES_CORESIDENT= 'Supplementary weight ACS-based couples race weight for coresident couples' 
   HCMST_MAIN_INTERVIEW_YRMO= 'year and month HCMST main survey was completed in YYYYMM format' 
   DURATION= 'interview duration in minutes, rounded down' 
   QFLAG   = 'Does respondent have a spouse or partner?' 
   GLBSTATUS= 'glb status including asking again those who refused to answer in the PAP' 
   PAPGLB_STATUS= 'q23: are you yourself gay, lesbian, or bisexual?' 
   RECSOURCE= 'recruitment source' 
   S1      = 'are you married?' 
   S1A     = 'are you yourself gay, lesbian, or bisexual?' 
   S2      = 'do you have a boyfriend, a girlfriend, a sexual partner or a romantic partner?' 
   Q3_CODES= 'name of partner was refused' 
   Q4      = 'is [partner_name] male or female?' 
   Q5      = 'is [partner_name] the same gender as you?' 
   Q6A     = 'is [partner_name] latino or hispanic?' 
   Q6B     = 'what is [partner_name]''s race?' 
   Q7A     = 'Would [partner_name] describe [himself/herself/themself] as a born-again or evangelical Christian?' 
   Q7B     = 'what is [partner_name]''s religion?' 
   Q8A     = 'Is [partner_name]''s religion today the same as [partner_name]''s religion when [he was/she 
was/they were] 16 years old?' 
   Q8B     = 'what was [partner_name]''s religion when [he/she/they] was/were 16 years old?' 
   Q9      = 'how old is [partner_name]?' 
   Q10     = 'what is the highest level of schooling [partner_name] has completed?' 
   Q11     = 'what is the highest level of schooling [partner_name]''s mother has completed?' 
   Q12     = 'generally speaking, does [partner_name] think of [himself/herself/themself] as:' 
   Q13A    = 'is your religion today the same as your religion when you were 16 years old?' 
   Q13B    = 'what was your religion when you were 16 years old?' 
   Q14     = 'what is the highest level of schooling your mother has completed?' 
   Q15A1_COMPRESSED= 'between birth and age 16, where did you spend most of the time living' 
   Q16     = 'how many of your relatives do you see in person at least once a month?' 
   Q17A    = 'including your current marriage, how many times have you been married?' 
   Q17B    = 'how many times have you been married?' 
   Q17C    = 'What gender are you most attracted to, sexually? (for women)' 
   Q17D    = 'What gender are you most attracted to, sexually? (for men)' 
   GENDER_ATTRACTION= 'based on q17c and q17d' 
   Q18A_1  = 'Have domestic partnership' 
   Q18A_2  = 'Have Civil Union' 
   Q18A_3  = 'Have neither Domestic Partnership nor Civil Union' 
   Q18A_REFUSED= '[refused] do you and [partner_name] have:' 
   Q18B_CODES= 'q18b refusals' 
   Q18C_CODES= '(Q18C_CODES) codes' 
   Q19     = 'are you currently living with [partner_name]?' 
   Q20     = 'have you ever lived together with [partner_name]?' 
   Q21A    = 'how old were you when you first met [partner_name]?' 
   Q21A_REFUSAL= 'respondents who refused q21a' 
   Q21B    = 'how old were you when your romantic relationship with [partner_name] began?' 
   Q21B_REFUSAL= 'respondents who refused q21b' 
   Q21C    = 'how old were you when you first lived together with [partner_name]?' 
   Q21C_REFUSAL= 'respondents who refused q21c' 
   Q21D    = 'how old were you when you married [partner_name]?' 
   Q21D_REFUSAL= 'respondents who refused q21d' 
   Q21E    = 'How old were you when you joined in domestic partnership or civil union with [partner_name]?' 
   Q21E_REFUSAL= 'respondents who refused q21e' 
   Q22     = 'how long have you been in a romantic relationship with [partner_name]?' 
   Q23     = 'between you and [partner_name], who earned more income in 2008:' 
   Q24_CODES= 'refused q24' 
   Q25     = 'did you and [partner_name] attend the same high school?' 
   Q26     = 'did you and [partner_name] attend the same college or university?' 
   Q27     = 'did you and [partner_name] grow up in the same city or town?' 
   Q28     = 'did your parents know [partner_name]''s parents before you met [partner_name]?' 
   Q29     = 'which of your parents are alive today:' 
   Q30     = 'how does your [father and mother/father/mother] feel about [partner_name]?' 
   Q31_1   = '[work] where did you meet [partner_name]?' 
   Q31_2   = '[school] where did you meet [partner_name]?' 
   Q31_3   = '[church/church activity] where did you meet [partner_name]?' 
   Q31_4   = '[qpersonal ads/dating service via the internet] where did you meet [partner_name]?' 
   Q31_5   = '[vacation/business trip] where did you meet [partner_name]?' 
   Q31_6   = '[bar/nightclub/dance club] where did you meet [partner_name]?' 
   Q31_7   = '[social organization/health club/gym/volunteer-service activity] where did you meet [partner_name]?' 
   Q31_8   = '[private party] where did you meet [partner_name]?' 
   Q31_9   = '[other] where did you meet [partner_name]?' 
   Q31_OTHER_TEXT_ENTERED= 'Did subject enter any text for q31_9, i.e. ''Other''' 
   Q32     = 'did you use an internet service to meet [partner_name]?' 
   Q33_1   = '[family] who introduced you to [partner_name]?' 
   Q33_2   = '[mutual friends or acquaintances] who introduced you to [partner_name]?' 
   Q33_3   = '[co-workers] who introduced you to [partner_name]?' 
   Q33_4   = '[classmates] who introduced you to [partner_name]?' 
   Q33_5   = '[neighbors] who introduced you to [partner_name]?' 
   Q33_6   = '[introduced self or partner introduced self] who introduced you to [partner_name]?' 
   Q33_7   = '[other] who introduced you to [partner_name]?' 
   Q33_OTHER_TEXT_ENTERED= 'Did subject write text for q33_7, i.e q33 ''other''' 
   Q34     = 'In general, how would you describe the quality of your relationship with [partner_name]?' 
   Q35_CODES= '(Q35_CODES) codes' 
   Q35_TEXT_ENTERED= 'Did subject write text for q35, ''Describe the Quality of Your Relationship''' 
   Q24_MET_ONLINE= 'met online according to q24' 
   SUMMARY_Q24_TOTAL= 'total of all q24 codes' 
   Q24_R_COWORK= 'Respondent''s coworker: intermediary or Partner' 
   Q24_R_FRIEND= 'Respondent''s friend: intermediary' 
   Q24_R_FAMILY= 'Respondent''s family: intermediary' 
   Q24_R_SIG_OTHER= 'Respondent''s (current or past) Significant Other: intermediary' 
   Q24_R_NEIGHBOR= 'Respondent''s residential neighbor: intermediary or Partner' 
   Q24_P_COWORK= 'Partner''s coworker: Intermediary or Respondent' 
   Q24_P_FRIEND= 'Partner''s friend: intermediary' 
   Q24_P_FAMILY= 'Partner''s family: intermediary' 
   Q24_P_SIG_OTHER= 'Partner''s (current or past) Significant Other: intermediary' 
   Q24_P_NEIGHBOR= 'Partner''s neighbor: intermediary or Respondent' 
   Q24_BTWN_I_COWORK= 'coworker relationship between Intermediaries' 
   Q24_BTWN_I_FRIEND= 'friendship between intermediaries' 
   Q24_BTWN_I_FAMILY= 'family relationship between intermediaries' 
   Q24_BTWN_I_SIG_OTHER= 'significant other relationship between intermediaries' 
   Q24_BTWN_I_NEIGHBOR= 'intermediaries are neighbors' 
   Q24_SCHOOL= 'primary or secondary school' 
   Q24_COLLEGE= 'college or university' 
   Q24_MILITARY= 'military service' 
   Q24_CHURCH= 'church or religious organization' 
   Q24_VOL_ORG= 'voluntary organization (non-church)' 
   Q24_CUSTOMER= 'customer-client relationship' 
   Q24_BAR_RESTAURANT= 'bar, restaurant, or other public social gathering place' 
   Q24_INTERNET_DATING= 'internet dating web site' 
   Q24_INTERNET_SOCIAL_NETWORKING= 'internet social networking website' 
   Q24_INTERNET_GAME= 'internet gaming website' 
   Q24_INTERNET_CHAT= 'internet chat' 
   Q24_INTERNET_COMMUNITY= 'internet web site not mainly dedicated to dating' 
   Q24_INTERNET_OTHER= 'internet, not otherwise classified' 
   Q24_PUBLIC= 'met in public space' 
   Q24_PRIVATE_PARTY= 'private party' 
   Q24_BLIND_DATE= 'met on blind date' 
   Q24_VACATION= 'met while on vacation' 
   Q24_SINGLES_SERVICE_NON_INTERNET= 'met through non-internet dating or singles service' 
   Q24_BUSINESS_TRIP= 'met while on business trip' 
   Q24_WORK_NEIGHBOR= 'met as work neighbors' 
   Q24_FAM_SISTER_ACTIVE= '(Q24_FAM_SISTER_ACTIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_BROTHER_ACTIVE= '(Q24_FAM_BROTHER_ACTIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_MOTHER_ACTIVE= '(Q24_FAM_MOTHER_ACTIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_FATHER_ACTIVE= '(Q24_FAM_FATHER_ACTIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_OTHER_ACTIVE= '(Q24_FAM_OTHER_ACTIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_COUSINS_ACTIVE= '(Q24_FAM_COUSINS_ACTIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_AUNT_NIECE_ACTIVE= '(Q24_FAM_AUNT_NIECE_ACTIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_UNCLE_NEPHEW_ACTIVE= '(Q24_FAM_UNCLE_NEPHEW_ACTIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_GRANDMOTHER_ACTIVE= '(Q24_FAM_GRANDMOTHER_ACTIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_GRANDFATHER_ACTIVE= '(Q24_FAM_GRANDFATHER_ACTIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_SISTER_PASSIVE= '(Q24_FAM_SISTER_PASSIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_BROTHER_PASSIVE= '(Q24_FAM_BROTHER_PASSIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_MOTHER_PASSIVE= '(Q24_FAM_MOTHER_PASSIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_FATHER_PASSIVE= '(Q24_FAM_FATHER_PASSIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_OTHER_PASSIVE= '(Q24_FAM_OTHER_PASSIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_COUSINS_PASSIVE= '(Q24_FAM_COUSINS_PASSIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_AUNT_NIECE_PASSIVE= '(Q24_FAM_AUNT_NIECE_PASSIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_UNCLE_NEPHEW_PASSIVE= '(Q24_FAM_UNCLE_NEPHEW_PASSIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_GRANDMOTHER_PASSIVE= '(Q24_FAM_GRANDMOTHER_PASSIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_GRANDFATHER_PASSIVE= '(Q24_FAM_GRANDFATHER_PASSIVE) specific family intervention in respondent meeting partner from q24' 
   Q24_FAM_FEMALE= 'did any female family members introduce couple, see q24_fam' 
   Q24_FAM_MALE= 'did any male family members introduce couple, see q24_fam' 
   DISTANCEMOVED_10MI= 'Distance in Miles between resp home town and current home, to nearest 10 mi' 
   MARRYNOTREALLY= 'q18c indicates not really married' 
   MARRYCOUNTRY= 'same-sex couple marriage country, based on q18c' 
   CIVILNOTREALLY= 'q18b indicates not really in civil union or domestic parternship' 
   PARTNER_DECEASED= 'text answers from main survey imply that reported partner is deceased' 
   PARTNER_RELIGION_RECLASSIFIED= 'q7b partner religion reclassified from Other, please specify, based on text answer' 
   PARTNER_RELIGION_CHILD_RECLASS= 'q8b partner childhood religion reclassified from Other' 
   OWN_RELIGION_CHILD_RECLASS= 'q13b own religion at age 16 reclassified from Other' 
   Q32_INTERNET= 'summary of q32 internet categories' 
   HOW_MET_ONLINE= 'type of internet meeting based on q24 text, q32, q33, age, and when met' 
   EITHER_INTERNET= 'q32 or q24 internet' 
   EITHER_INTERNET_ADJUSTED= 'either_internet adjusted by how_met_online, takes account of misreporting of int' 
   SAME_SEX_COUPLE= 'best guess as to whether the couple is a same-sex couple' 
   POTENTIAL_PARTNER_GENDER_RECODES= 'partner gender recoded based on partner name, glb status, and attraction.' 
   ALT_PARTNER_GENDER= 'new partner gender variable based on q4 and potential_partner_gender_recodes' 
   HOW_LONG_AGO_FIRST_MET= 'how long ago respondent met partner, in years, based on ppage and q21a' 
   HOW_LONG_AGO_FIRST_ROMANTIC= 'how long ago romance with partner began, in years, based on ppage and q21b' 
   HOW_LONG_AGO_FIRST_COHAB= 'how long ago cohabitation with partner began, in years, from ppage and q21c' 
   HOW_LONG_AGO_FIRST_MET_CAT= 'In years, categorical, based on how_long_ago_first_met' 
   HOW_LONG_RELATIONSHIP= 'relationship duration, in years, based on ppage, q21b, and  q22' 
   RESPONDENT_RACE= '6 cat respondent race/hispanic from pprace_white, etc, ppq14arace, and pphispan' 
   PARTNER_RACE= '6 cat partner/spouse race/hispanicity from q6a and q6b' 
   AGE_DIFFERENCE= 'absolute value of ppage-q9' 
   MET_THROUGH_FRIENDS= 'combination of  q24_R_friend and  q24_P_friend' 
   MET_THROUGH_FAMILY= 'combination of q24_R_family and  q24_P_family' 
   MET_THROUGH_AS_NEIGHBORS= 'combination of  q24_R_neighbor and q24_P_neighbor' 
   MET_THROUGH_AS_COWORKERS= 'combination of  q24_R_cowork and  q24_P_cowork' 
   RESPONDENT_RELIGION_AT_16= 'combination of  papreligion and q13b' 
   RESPONDENT_RELIG_16_CAT= 'respondent religion 5 category based on respondent_religion_at_16' 
   PARTNER_RELIGION_AT_16= 'combination of q7b and q8b' 
   PARTNER_RELIG_16_CAT= 'partner religion 5 category based on partner_religion_at_16' 
   MARRIED = 'married at time of main survey, based on s1' 
   PARENTAL_APPROVAL= 'based on q30' 
   RESPONDENT_YRSED= 'Respondent yrs education based on ppeduc, first demographic background survey' 
   PARTNER_YRSED= 'Partner yrs education based on q10' 
   HOME_COUNTRY_RECODE= 'recode home country from Other' 
   US_RAISED= 'US raised based on q15a1' 
   PARTNER_MOM_YRSED= 'partner''s mother''s years of education based on q11' 
   RESPONDENT_MOM_YRSED= 'respondent''s mother''s years of education based on q14' 
   RELATIONSHIP_QUALITY= 'relationship quality, based on q34, higher number is better' 
   CORESIDENT= 'respondent and partner coresident based on q19' 
   PP2_AFTERP1= 'Did respondent complete a second background survey after HCM main survey?' 
   PP2_PPHHHEAD= '(PP2_PPHHHEAD) household head' 
   PP2_PPHHSIZE= 'household size' 
   PP2_PPHOUSE= '(PP2_PPHOUSE) housing type' 
   PP2_PPINCIMP= 'household income (PP2_PPINCIMP)' 
   PP2_PPMARIT= 'marital status (PP2_PPMARIT))' 
   PP2_PPMSACAT= 'msa status (PP2_PPMSACAT)' 
   PP2_PPEDUC= '(PP2_PPEDUC) education (highest degree received)' 
   PP2_PPEDUCAT= '(PP2_PPEDUCAT) education (categorical)' 
   PP2_RESPONDENT_YRSED= 'Respondent yrs education based on pp2_ppeduc' 
   PP2_PPETHM= '(PP2_PPETHM) race / ethnicity' 
   PP2_PPREG4= '(PP2_PPREG4) region 4 - based on state of residence' 
   PP2_PPREG9= '(PP2_PPREG9) region 9 - based on state of residence' 
   PP2_PPRENT= '(PP2_PPRENT) ownership status of living quarters' 
   PP2_PPT01= 'number of children age <2 in HH (PP2_PPT01)' 
   PP2_PPT1317= '(PP2_PPT1317) number of children age 13-17 in HH' 
   PP2_PPT18OV= 'number of adults age 18+ in HH (PP2_PPT18OV)' 
   PP2_PPT25= '(PP2_PPT25) number of children age 2-5 in HH' 
   PP2_PPT612= '(PP2_PPT612) number of children age 6-12 in HH' 
   PP2_PPWORK= '(PP2_PPWORK) current employment status' 
   PP2_PPNET= 'hh has its own Internet access at the time of the pp2 core adult profile' 
   PP2_PPCMDATE_YRMO= 'date second background survey completed in YYYYMM format' 
   PP_IGDR1= 'flag.  gender value imputed at time of baseline survey' 
   PP_IEDUC1= 'flag. education value imputed at time of baseline survey' 
   PP2_IGDR2= 'flag. gender value imputed at time of follow-up survey' 
   PP2_IEDUC2= 'flag.  education value imputed at time of followup survey' 
   W2_DECEASED= 'text answers imply that reported partner is deceased' 
   W2_MULTINAME= 'text answers include multiple partner names' 
   W2_PANELSTAT= 'flag.  panel status at time of assignment' 
   W2_DONOTCONTACT= 'flag.  withdrawn cases on noncontact list' 
   W2_ASSIGNED= 'flag.  survey assignment flag' 
   W2_F1COMPLETE= 'flag.  completed followup survey' 
   W2_HCMST_INTERVIEW_FIN_YRMO= 'year and month subject finished second wave interview in YYYYMM format' 
   W2_DURATION= 'wave 2 interview duration in minutes, rounded down' 
   W2_XMARRY= 'data only: respondent is married or partnered' 
   W2_XSS  = 'Respondent has same-sex partner AND does Not have domestic partnership' 
   W2_SOURCE= 'interview source (online or telephone)' 
   W2_Q1   = 'are you still married to [partner]?' 
   W2_Q2   = '(W2_Q2) are you currently living with [partner]?' 
   W2_Q3   = 'how did your marriage to [partner] end?' 
   W2_Q4   = 'between you and [partner], who wanted the [divorce/separation] more?' 
   W2_Q5   = 'are you still in a romantic relationship with [partner]?' 
   W2_Q6   = '(W2_Q6) are you currently living with [partner]?' 
   W2_Q7   = 'in the past 12 months, have you and [partner] gotten married?' 
   W2_Q8   = 'In the past 12 months, have you and [partner] gotten a formal domestic partnership?' 
   W2_Q9   = 'how did your relationship with [partner] end?' 
   W2_Q10  = 'between you and [partner], who wanted more to break up?' 
   W2_BROKE_UP= 'based on  w2_q5 and  w2_q1' 
   W2_DAYS_ELAPSED= 'days between wave 1 and wave 2, w2_tm_finish- tm_finish, converted to days' 
   PP3_PPHHHEAD= 'Household Head (PP3_PPHHHEAD)' 
   PP3_PPHHSIZE= '(PP3_PPHHSIZE) Household Size' 
   PP3_PPHOUSE= '(PP3_PPHOUSE) Housing Type' 
   PP3_PPINCIMP= 'Household Income (PP3_PPINCIMP)' 
   PP3_PPMARIT= '(PP3_PPMARIT) Marital Status' 
   PP3_PPMSACAT= 'MSA Status (PP3_PPMSACAT)' 
   PP3_PPRENT= '(PP3_PPRENT) Ownership Status of Living Quarters' 
   PP3_PPREG4= 'Region 4 - Based on State of Residence (PP3_PPREG4)' 
   PP3_PPREG9= '(PP3_PPREG9) Region 9 - Based on State of Residence' 
   INTERSTATE_MOVER_PP1_PP2= 'subject resided in different state in pp2 and pp1' 
   INTERSTATE_MOVER_PP2_PP3= 'subject resided in different state in pp2 and pp3' 
   INTERSTATE_MOVER_PP1_PP3= 'subject resided in different state in pp1 and pp3' 
   PP3_PPT01= 'number of children age <2 in HH (PP3_PPT01)' 
   PP3_PPT1317= '(PP3_PPT1317) number of children age 13-17 in HH' 
   PP3_PPT18OV= 'number of adults age 18+ in HH (PP3_PPT18OV)' 
   PP3_PPT25= '(PP3_PPT25) number of children age 2-5 in HH' 
   PP3_PPT612= '(PP3_PPT612) number of children age 6-12 in HH' 
   PP3_PPWORK= 'Current Employment Status' 
   PP3_PPNET= 'hh has its own Internet access at the time of the pp3 core adult profile' 
   PP3_PPCMDATE_YRMO= 'date third background survey was completed in YYYYMM format' 
   PP3_PPEDUC= '(PP3_PPEDUC)Education (Highest Degree Received)' 
   PP3_PPEDUCAT= '(PP3_PPEDUCAT) Education (Categorical)' 
   PP3_RESPONDENT_YRSED= 'Respondent yrs education based on pp3_ppeduc' 
   PP3_PPETHM= '(PP3_PPETHM) Race / Ethnicity' 
   PP3_NEWER= 'is pp3 more recent core demographic data than pp2 or pp1?' 
   W2W3_COMBO_BREAKUP= 'break-up across wave 2 and wave 3' 
   W3_BROKE_UP= 'couple broke up or partner deceased at wave 3' 
   W3_XPARTNERED= 'is subject partnered (one element of being qualified) for wave 3 survey' 
   W3_XDECEASED= 'is subject unqualified for w3 bc partner was deceased at main survey?' 
   W3_MULTINAME= 'original main survey response did not give name for partner' 
   W3_XSS  = 'Data only: respondent has same-sex partner but does not have civil union or domestic partnership?' 
   W3_XLAST= 'whether respondent was last contacted 1 or 2 years ago' 
   W3_XYEAR= 'year of last contact' 
   W3_XMONTH= 'month of last contact' 
   W3_XQUALIFIED= 'is subject qualified for wave 3' 
   W3_STATUS= 'KN panel status for wave 3 qualified subjects.' 
   W3_COMPLETE= 'did subject complete wave 3 survey?' 
   W3_SOURCE= 'Interview source (online or telephone)' 
   W3_HCMST_INTERVIEW_FIN_YRMO= 'year and month subject finished 3rd wave interview in YYYYMM format' 
   W3_DAYS_ELAPSED= 'days elapsed between wave 1 and wave 3' 
   W3_DURATION= 'Interview duration in minutes, rounded down' 
   W3_XMARRY= 'Respondent is married or partnered' 
   W3_XTYPE= 'same-sex or heterosexual couple' 
   W3_Q1   = 'Are you still married to [xNameP]?' 
   W3_Q2   = '(W3_Q2) Are you currently living with [xNameP]?' 
   W3_Q3   = 'How did your marriage to [xNameP] end?' 
   W3_Q4   = 'Between you and [xNameP], who wanted the [divorce/separation] more?' 
   W3_MBTIMING_YEAR= '[Year:] When did you get [divorced/separated] from [xNameP]?' 
   W3_MBTIMING_MONTH= '[Month:] When did you get [divorced/separated] from [xNameP]?' 
   W3_Q5   = 'Are you still in a romantic relationship with [xNameP]?' 
   W3_Q6   = '(W3_Q6) Are you currently living with [xNameP]?' 
   W3_Q7   = 'In the past [year/two years], have you and [xNameP] gotten married?' 
   W3_Q8   = 'In the past [year/two years], have you and [xNameP] gotten a formal domestic partnership?' 
   W3_Q9   = 'How did your relationship with [xNameP] end?' 
   W3_Q10  = 'Between you and [xNameP], who wanted more to break up?' 
   W3_NONMBTIMING_YEAR= '[Year:] When did you break-up with [xNameP]?' 
   W3_NONMBTIMING_MONTH= '[Month:] When did you break-up with [xNameP]?' 
   ZPNHWHITE_CAT= '% of ZIP coded that is NH white in 2000' 
   ZPNHBLACK_CAT= '% of ZIP code that is NH Black in 2000' 
   ZPHISP_CAT= '% of ZIP code that is Hispanic in 2000' 
   ZPMEDHHINC_CAT= 'median ZIP HH income in 1999 dollars' 
   ZPFORBORN_CAT= '% of ZIP that is foreign born in 2000' 
   ZPRURAL_CAT= 'ZIP code is rural' 
   Q15A1_OTHER_UNEDITED= 'original variable without truncated answers' 
   Q15A1   = 'Between the time you were born and when you were 16 years old, where did you spend the most time 
living?' 
   Q15A3_CODES= 'town where raised refusals' 
   W4_XQUALIFIED= 'Subjects qualified for wave 4 (ie w3_xqualified minus w3 break ups and deaths)' 
   W4_STATUS= 'status of respondent at wave 4' 
   W4_COMPLETE= 'did subject complete wave 4 survey?' 
   W4_SOURCE= 'source for completed wave 4 survey' 
   W4_DURATION= 'duration of wave 4 surveys (Internet only), in minutes' 
   W4_HCMST_INTERVIEW_FIN_YRMO= 'year and month subject responded to wave 4 survey' 
   W4_XTYPE= 'Same-sex couples versus hetero couples for consistency with prior waves' 
   W4_XYEAR= 'The year of last contact with the subject' 
   W4_XMONTH= 'Month of last contact' 
   W4_XMARRY= 'Were respondent and partner married as of last contact' 
   W4_XLAST= 'How many years ago was last contact, assuming wave 4 is in 2013' 
   W4_XWAVE1_MONTH= 'Month wave 1 was completed in year 2009' 
   W4_XCIVIL= 'Did subject previously report having a civil union' 
   W4_XSS  = 'Respondent is in same sex couple and does not have domestic partnership' 
   W4_Q1   = 'Are you still married to [xnamep]?' 
   W4_Q2   = '(w4_q2) Are you currently living with [xnamep]?' 
   W4_QUALITY= 'In general, how would you describe the quality of your relationship with [xnamep' 
   W4_ATTRACTIVE= 'How attractive are you?' 
   W4_ATTRACTIVE_PARTNER= 'How attractive is [xnamep]?' 
   W4_Q3   = 'How did your marriage to [xnamep] end?' 
   W4_Q4   = 'Between you and [xnamep], who wanted the [divorce/separation] more?' 
   W4_MBTIMING_YEAR= '[YEAR] When did you get [divorced/separated] from [xnamep]? You last told us you' 
   W4_MBTIMING_MONTH= '[Month] When did you get [divorced/separated] from [xnamep]?' 
   W4_Q5   = 'Are you still in a romantic relationship with [xnamep]?' 
   W4_Q6   = '(w4_q6) Are you currently living with [xnamep]?' 
   W4_Q7   = 'In the past [xyears] have you and [xnamep] gotten married?' 
   W4_MAR_YEAR= '[YEAR] When did you get married with [xnamep]? We last contacted you in [xmonth]' 
   W4_MAR_MONTH= '[MONTH] When did you get married with [xnamep]? We last contacted you in [xmonth' 
   W4_CIV_YEAR= '[YEAR] When did you get a domestic partnership or civil union agreement with [xn' 
   W4_Q8_A = '(w4_q8_a) In the past [xyears], have you and [xnamep] gotten a formal domestic partnership' 
   W4_Q8_B = '(w4_q8_b) In the past [xyears], have you and [xnamep] gotten a formal domestic partnership' 
   W4_Q9   = 'How did your relationship with [xnamep] end?' 
   W4_Q10  = 'Between you and [xnamep], who wanted more to break up?' 
   W4_NONMBTIMING_YEAR= '[YEAR] When did you break up with [xnamep]? You last told us you were in a relat' 
   W4_NONMBTIMING_MONTH= '[MONTH] When did you break up with [xnamep]? You last told us you were in a rela' 
   RELATIONSHIP_QUALITY_W4= 'wave 4 relationship quality, 1-5 scale 5 is best' 
   W4_BROKE_UP= 'break-ups, divorces, and partner mortality recorded in W4' 
   W234_COMBO_BREAKUP= 'outcome over 3 waves, incl all respondents who completed at least 1 follow-up' 
   PP4_PPEDUC= '(pp4_ppeduc) Education (Highest Degree Received)' 
   PP4_PPEDUCAT= '(pp4_ppeducat) Education (Categorical)' 
   PP4_PPETHM= '(pp4_ppethm) Race / Ethnicity' 
   PP4_PPHHHEAD= 'Household Head (pp4_pphhhead)' 
   PP4_PPHHSIZE= '(pp4_pphhsize) Household Size' 
   PP4_PPHOUSE= '(pp4_pphouse) Housing Type' 
   PP4_PPINCIMP= 'Household Income (pp4_ppincimp)' 
   PP4_PPMARIT= '(pp4_ppmarit) Marital Status' 
   PP4_PPMSACAT= 'MSA Status (pp4_ppmsacat)' 
   PP4_PPREG4= 'Region 4 - Based on State of Residence (pp4_ppreg4)' 
   PP4_PPREG9= '(pp4_ppreg9) Region 9 - Based on State of Residence' 
   PP4_PPRENT= '(pp4_pprent) Ownership Status of Living Quarters' 
   PP4_PPT01= 'Presence of Household Members - Children 0-1' 
   PP4_PPT25= 'Presence of Household Members - Children 2-5' 
   PP4_PPT612= 'Presence of Household Members - Children 6-12' 
   PP4_PPT1317= 'Presence of Household Members - Children 13-17' 
   PP4_PPT18OV= 'Presence of Household Members - Adults 18+' 
   PP4_PPWORK= '(pp4_ppwork) current employment status' 
   PP4_PPNET= 'HH Internet Access' 
   PP4_PPCMDATE_YRMO= 'year and month that pp4 was taken in YYYYMM format' 
   PP4_NEWER= 'whether pp4 variables are new information compared to pp3, pp2, and pp1' 
   PPA2009_SERVICES_YRMO= 'year and month for the new 2009 religious service attendance question' 
   PPA2009_HOW_OFTEN_SERVICES= 'How often do you attend religious services? (from 2009)' 
   W5_DURATION= 'interview duration in minutes (online surveys only)(W5_DURATION)' 
   W5_SOURCE= 'Survey type (W5_SOURCE)' 
   W5_COMPLETE= 'Wave 5 completion flag (W5_COMPLETE)' 
   W5_STATUS= 'Status of Respondent (W5_STATUS)' 
   W5X_QUALIFIED= 'Is subject qualified to take wave5 or not (W5X_QUALIFIED)' 
   W5X_MARRY= 'married as of last contact before wave 5 (W5X_MARRY)' 
   W5X_LAST= 'how many years ago was last contact (W5X_LAST)' 
   W5X_YEAR= 'year of last contact (W5X_YEAR)' 
   W5X_CIVIL= 'does subject have a civil union or domestic partnership prior to wave 5 (W5X_CIVIL)' 
   W5X_MONTH= 'month of last contact (W5X_MONTH)' 
   W5X_CIVYEAR= 'year last asked the civil union question (W5X_CIVYEAR)' 
   W5X_CIVMONTH= 'month last asked the civil union question (W5X_CIVMONTH)' 
   W5_Q1   = 'Are you still married to [xname]? (W5_Q1)' 
   W5_Q2   = 'Are you currently living with [wxnamep]? (W5_Q2)' 
   W5_SEX_FREQUENCY= 'During the last 12 months, about how often did you have sex with [name]? Was it. (W5_SEX_FREQUENCY)' 
   W5_P_MONOGAMY= 'Do you expect [name] to have sexual activity only with you? (W5_P_MONOGAMY)' 
   W5_IDENTITY= 'Do you think of yourself as (W5_IDENTITY)' 
   W5_OUTNESS= 'Thinking about the important people in your life, how many are aware that you are (W5_OUTNESS)' 
   W5_Q3   = 'How did your marriage to [name] end? (W5_Q3)' 
   W5_Q4   = 'Between you and [name], who wanted the [divorce/seperation] more? (W5_Q4)' 
   W5_MBTIMING_MONTH= '[MONTH] When did you break up with [name]? You last told us you were in a relationship 
(W5_MBTIMING_MONTH)' 
   W5_MBTIMING_YEAR= '[year] when did you break up with [name]? you last told us you were in a relatio (w5_mbtiming_year)' 
   W5_Q5   = 'Are you still in a romantic relationship with [name]? (W5_Q5)' 
   W5_Q6   = 'Are you currently living with [name]? (W5_Q6)' 
   W5_Q7   = 'In the past [w5_xlast], have you and [name] gotten married? (W5_Q7)' 
   W5_MAR_YEAR= '[YEAR] When did you get married with [w5_xnamep]? We last contacted you in [w5_xmonth], [w5_xyear] 
(W5_MAR_YEAR)' 
   W5_MAR_MONTH= '[MONTH] When did you get married with [w5_xnamep]? We last contacted you in [w5_xmonth], [w5_xyear] 
(W5_MAR_MONTH)' 
   W5_Q8   = 'Since [year], have you and [name] gotten a formal domestic partnership or civil (W5_Q8)' 
   W5_CIV_YEAR= '[YEAR] When did you get a domestic partnership or civil union agreement with [w5_xnamep]? We last 
asked you about civil unions and domestic partnerships in [xcivmon], [xcivyear] (W5_CIV_YEAR)' 
   W5_CIV_MONTH= '[MONTH] When did you get a domestic partnership or civil union agreement with [w5_xnamep]? We last 
asked you about civil unions and domestic partnerships in [xcivmon], [xcivyear] (W5_CIV_MONTH)' 
   W5_Q9   = 'How did your relationship with [name] end? (W5_Q9)' 
   W5_Q10  = 'Between you and [name], who wanted more to break up? (W5_Q10)' 
   W5_NONMBTIMING_YEAR= '[YEAR] When did you break up with [name]? You last told us you were in a relationship with 
[w5_xnamep] in [w5_xmonth], [w5_xyear] (W5_NONMBTIMING_YEAR)' 
   W5_NONMBTIMING_MONTH= '[MONTH] When did you break up with [name]? You last told us you were in a relationship with 
[w5_xnamep] in [w5_xmonth], [w5_xyear] (W5_NONMBTIMING_MONTH)' 
   W5_BROKE_UP= 'wave 5 broke up from w5_q3, w5_q9, and text answers (W5_BROKE_UP)' 
   W5_HCMST_INTERVIEW_FIN_YRMO= 'when subject finished wave 5 YYYYMM including phone respondents (W5_HCMST_INTERVIEW_FIN_YRMO)' 
   W2345_COMBO_BREAKUP= 'outcome over 4 waves, incl all respondents who completed at least 1 follow-up (W2345_COMBO_BREAKUP)' 
   RESPONDED_TO_W234OR5= 'whether subject responded to any of the followup surveys through w5 (RESPONDED_TO_W234OR5)' 
   PP5_PPAGE= 'Age (PP5_PPAGE)' 
   PP5_PPAGECAT= 'Age - 7 Categories (PP5_PPAGECAT)' 
   PP5_PPAGECT4= 'Age - 4 Categories (PP5_PPAGECT4)' 
   PP5_PPEDUC= 'Education (Highest Degree Received) (PP5_PPEDUC)' 
   PP5_PPEDUCAT= 'Education (Categorical) (PP5_PPEDUCAT)' 
   PP5_PPETHM= 'Race / Ethnicity (PP5_PPETHM)' 
   PP5_PPGENDER= 'Gender (PP5_PPGENDER)' 
   PP5_PPHHHEAD= 'Household Head (PP5_PPHHHEAD)' 
   PP5_PPHHSIZE= 'Household Size (PP5_PPHHSIZE)' 
   PP5_PPHOUSE= 'Housing Type (PP5_PPHOUSE)' 
   PP5_PPINCIMP= 'Household Income (PP5_PPINCIMP)' 
   PP5_PPMARIT= 'Marital Status (PP5_PPMARIT)' 
   PP5_PPCMDATE_YRMO= 'year and month of most recent background survey, in YYYYMM format (PP5_PPCMDATE_YRMO)' 
   PP5_NEWER= 'is pp5 more recent than pp4 or earlier pp surveys? (PP5_NEWER)' 
   PP5_PPMSACAT= 'MSA Status(PP5_PPMSACAT)' 
   PP5_PPREG4= 'Region 4 - Based on State of Residence (PP5_PPREG4)' 
   PP5_PPREG9= 'Region 9 - Based on State of Residence (PP5_PPREG9)' 
   PP5_PPRENT= 'Ownership Status of Living Quarters (PP5_PPRENT)' 
   PP5_PPT01= 'Presence of Household Members - Children 0-1 PP5_PPT01)' 
   PP5_PPT25= 'Presence of Household Members - Children 2-5 (PP5_PPT25)' 
   PP5_PPT612= 'Presence of Household Members - Children 6-12 (PP5_PPT612)' 
   PP5_PPT1317= 'Presence of Household Members - Children 13-17 (PP5_PPT1317)' 
   PP5_PPT18OV= 'Presence of Household Members - Adults 18+ (PP5_PPT18OV)' 
   PP5_PPWORK= 'Current Employment Status (PP5_PPWORK)' 
   PP5_PPNET= 'HH Internet Access (PP5_PPNET)' 
   PPMARIT_2014= 'repeat background Q Are you now Married, widow, div., never mar, live w partner? (PPMARIT_2014)' 
   PPCMARIT_2014_YRMO= 'YYYYMM of ppmarit_2014 (PPCMARIT_2014_YRMO)' 
   PPMARIT_2013= 'repeat background Q Are you now Married, widow, div., never mar, live w partner? (PPMARIT_2013)' 
   PPCMARIT_2013_YRMO= 'YYYYMM of ppmarit_2013 (PPCMARIT_2013_YRMO)' 
   PPMARIT_2012= 'repeat background Q Are you now Married, widow, div., never mar, live w partner? (PPMARIT_2012)' 
   PPCMARIT_2012_YRMO= 'YYYYMM of ppmarit_2012 (PPCMARIT_2012_YRMO)' 
   PPMARIT_2011= 'repeat background Q Are you now Married, widow, div., never mar, live w partner? (PPMARIT_2011)' 
   PPCMARIT_2011_YRMO= 'YYYYMM of ppmarit_2011 (PPCMARIT_2011_YRMO)' 
   PPMARIT_2010= 'repeat background Q Are you now Married, widow, div., never mar, live w partner? (PPMARIT_2010)' 
   PPCMARIT_2010_YRMO= 'YYYYMM of ppmarit_2010 (PPCMARIT_2010_YRMO)' 
   PPMARIT_2009= 'repeat background Q Are you now Married, widow, div., never mar, live w partner? (PPMARIT_2009)' 
   PPCMARIT_2009_YRMO= 'YYYYMM of ppmarit_2009 (PPCMARIT_2009_YRMO)' 
   PPMARIT_2007= 'repeat background Q Are you now Married, widow, div., never mar, live w partner? (PPMARIT_2007)' 
   PPCMARIT_2007_YRMO= 'YYYYMM of ppmarit_2007 (PPCMARIT_2007_YRMO)' 
        ; 


* USER-DEFINED MISSING VALUES RECODE TO SAS SYSMIS;

/*
   IF (PPAGE = -1 OR PPAGE = -2) THEN PPAGE = .;
   IF (PPEDUC = -1 OR PPEDUC = -2) THEN PPEDUC = .;
   IF (PPEDUCAT = -1 OR PPEDUCAT = -2) THEN PPEDUCAT = .;
   IF (PPETHM = -1 OR PPETHM = -2) THEN PPETHM = .;
   IF (PPGENDER = -1 OR PPGENDER = -2) THEN PPGENDER = .;
   IF (PPHHHEAD = -1 OR PPHHHEAD = -2) THEN PPHHHEAD = .;
   IF (PPHOUSE = -1 OR PPHOUSE = -2) THEN PPHOUSE = .;
   IF (PPINCIMP = -1 OR PPINCIMP = -2) THEN PPINCIMP = .;
   IF (PPMARIT = -1 OR PPMARIT = -2) THEN PPMARIT = .;
   IF (PPMSACAT = -1 OR PPMSACAT = -2) THEN PPMSACAT = .;
   IF (PPREG4 = -1 OR PPREG4 = -2) THEN PPREG4 = .;
   IF (PPRENT = -1 OR PPRENT = -2) THEN PPRENT = .;
   IF (PPT01 = -1 OR PPT01 = -2) THEN PPT01 = .;
   IF (PPT1317 = -1 OR PPT1317 = -2) THEN PPT1317 = .;
   IF (PPT18OV = -1 OR PPT18OV = -2) THEN PPT18OV = .;
   IF (PPT25 = -1 OR PPT25 = -2) THEN PPT25 = .;
   IF (PPT612 = -1 OR PPT612 = -2) THEN PPT612 = .;
   IF (PPWORK = -1 OR PPWORK = -2) THEN PPWORK = .;
   IF (PPQ14ARACE = -1 OR PPQ14ARACE = -2) THEN PPQ14ARACE = .;
   IF (PPHISPAN = -1 OR PPHISPAN = -2) THEN PPHISPAN = .;
   IF (PPRACE_WHITE = -1 OR PPRACE_WHITE = -2) THEN PPRACE_WHITE = .;
   IF (PPRACE_BLACK = -1 OR PPRACE_BLACK = -2) THEN PPRACE_BLACK = .;
   IF (PPRACE_NATIVEAMERICAN = -1 OR PPRACE_NATIVEAMERICAN = -2) THEN PPRACE_NATIVEAMERICAN = .;
   IF (PPRACE_ASIANINDIAN = -1 OR PPRACE_ASIANINDIAN = -2) THEN PPRACE_ASIANINDIAN = .;
   IF (PPRACE_CHINESE = -1 OR PPRACE_CHINESE = -2) THEN PPRACE_CHINESE = .;
   IF (PPRACE_FILIPINO = -1 OR PPRACE_FILIPINO = -2) THEN PPRACE_FILIPINO = .;
   IF (PPRACE_JAPANESE = -1 OR PPRACE_JAPANESE = -2) THEN PPRACE_JAPANESE = .;
   IF (PPRACE_KOREAN = -1 OR PPRACE_KOREAN = -2) THEN PPRACE_KOREAN = .;
   IF (PPRACE_VIETNAMESE = -1 OR PPRACE_VIETNAMESE = -2) THEN PPRACE_VIETNAMESE = .;
   IF (PPRACE_OTHERASIAN = -1 OR PPRACE_OTHERASIAN = -2) THEN PPRACE_OTHERASIAN = .;
   IF (PPRACE_HAWAIIAN = -1 OR PPRACE_HAWAIIAN = -2) THEN PPRACE_HAWAIIAN = .;
   IF (PPRACE_GUAMANIAN = -1 OR PPRACE_GUAMANIAN = -2) THEN PPRACE_GUAMANIAN = .;
   IF (PPRACE_SAMOAN = -1 OR PPRACE_SAMOAN = -2) THEN PPRACE_SAMOAN = .;
   IF (PPRACE_OTHERPACIFICISLANDER = -1 OR PPRACE_OTHERPACIFICISLANDER = -2) THEN PPRACE_OTHERPACIFICISLANDER = .;
   IF (PPRACE_SOMEOTHERRACE = -1 OR PPRACE_SOMEOTHERRACE = -2) THEN PPRACE_SOMEOTHERRACE = .;
   IF (PAPGLB_FRIEND = -1 OR PAPGLB_FRIEND = -2) THEN PAPGLB_FRIEND = .;
   IF (PPPARTYID3 = -1 OR PPPARTYID3 = -2) THEN PPPARTYID3 = .;
   IF (PAPEVANGELICAL = -1 OR PAPEVANGELICAL = -2) THEN PAPEVANGELICAL = .;
   IF (PAPRELIGION = -1 OR PAPRELIGION = -2) THEN PAPRELIGION = .;
   IF (PPHHCOMP11_MEMBER2_GENDER = -1) THEN PPHHCOMP11_MEMBER2_GENDER = .;
   IF (PPHHCOMP11_MEMBER3_GENDER = -1) THEN PPHHCOMP11_MEMBER3_GENDER = .;
   IF (PPHHCOMP11_MEMBER4_GENDER = -1) THEN PPHHCOMP11_MEMBER4_GENDER = .;
   IF (PPHHCOMP11_MEMBER5_GENDER = -1) THEN PPHHCOMP11_MEMBER5_GENDER = .;
   IF (PPHHCOMP11_MEMBER6_GENDER = -1) THEN PPHHCOMP11_MEMBER6_GENDER = .;
   IF (PPHHCOMP11_MEMBER7_GENDER = -1) THEN PPHHCOMP11_MEMBER7_GENDER = .;
   IF (PPHHCOMP11_MEMBER8_GENDER = -1) THEN PPHHCOMP11_MEMBER8_GENDER = .;
   IF (PPHHCOMP11_MEMBER9_GENDER = -1) THEN PPHHCOMP11_MEMBER9_GENDER = .;
   IF (PPHHCOMP11_MEMBER10_GENDER = -1) THEN PPHHCOMP11_MEMBER10_GENDER = .;
   IF (PPHHCOMP11_MEMBER11_GENDER = -1) THEN PPHHCOMP11_MEMBER11_GENDER = .;
   IF (PPHHCOMP11_MEMBER12_GENDER = -1) THEN PPHHCOMP11_MEMBER12_GENDER = .;
   IF (PPHHCOMP11_MEMBER13_GENDER = -1) THEN PPHHCOMP11_MEMBER13_GENDER = .;
   IF (PPHHCOMP11_MEMBER14_GENDER = -1) THEN PPHHCOMP11_MEMBER14_GENDER = .;
   IF (PPHHCOMP11_MEMBER15_GENDER = -1) THEN PPHHCOMP11_MEMBER15_GENDER = .;
   IF (PPHHCOMP11_MEMBER2_RELATIONSHIP = -1) THEN PPHHCOMP11_MEMBER2_RELATIONSHIP = .;
   IF (PPHHCOMP11_MEMBER3_RELATIONSHIP = -1) THEN PPHHCOMP11_MEMBER3_RELATIONSHIP = .;
   IF (PPHHCOMP11_MEMBER4_RELATIONSHIP = -1) THEN PPHHCOMP11_MEMBER4_RELATIONSHIP = .;
   IF (PPHHCOMP11_MEMBER5_RELATIONSHIP = -1) THEN PPHHCOMP11_MEMBER5_RELATIONSHIP = .;
   IF (PPHHCOMP11_MEMBER6_RELATIONSHIP = -1) THEN PPHHCOMP11_MEMBER6_RELATIONSHIP = .;
   IF (PPHHCOMP11_MEMBER7_RELATIONSHIP = -1) THEN PPHHCOMP11_MEMBER7_RELATIONSHIP = .;
   IF (PPHHCOMP11_MEMBER8_RELATIONSHIP = -1) THEN PPHHCOMP11_MEMBER8_RELATIONSHIP = .;
   IF (PPHHCOMP11_MEMBER9_RELATIONSHIP = -1) THEN PPHHCOMP11_MEMBER9_RELATIONSHIP = .;
   IF (PPHHCOMP11_MEMBER10_RELATIONSHIP = -1) THEN PPHHCOMP11_MEMBER10_RELATIONSHIP = .;
   IF (PPHHCOMP11_MEMBER11_RELATIONSHIP = -1) THEN PPHHCOMP11_MEMBER11_RELATIONSHIP = .;
   IF (PPHHCOMP11_MEMBER12_RELATIONSHIP = -1) THEN PPHHCOMP11_MEMBER12_RELATIONSHIP = .;
   IF (PPHHCOMP11_MEMBER13_RELATIONSHIP = -1) THEN PPHHCOMP11_MEMBER13_RELATIONSHIP = .;
   IF (PPHHCOMP11_MEMBER14_RELATIONSHIP = -1) THEN PPHHCOMP11_MEMBER14_RELATIONSHIP = .;
   IF (PPHHCOMP11_MEMBER15_RELATIONSHIP = -1) THEN PPHHCOMP11_MEMBER15_RELATIONSHIP = .;
   IF (IRB_CONSENT = -1) THEN IRB_CONSENT = .;
   IF (PAPGLB_STATUS = -1 OR PAPGLB_STATUS = -2) THEN PAPGLB_STATUS = .;
   IF (S1 = -1) THEN S1 = .;
   IF (S1A = -1) THEN S1A = .;
   IF (S2 = -1) THEN S2 = .;
   IF (Q3_CODES = -1) THEN Q3_CODES = .;
   IF (Q4 = -1) THEN Q4 = .;
   IF (Q5 = -1) THEN Q5 = .;
   IF (Q6A = -1) THEN Q6A = .;
   IF (Q6B = -1) THEN Q6B = .;
   IF (Q7A = -1) THEN Q7A = .;
   IF (Q7B = -1) THEN Q7B = .;
   IF (Q8A = -1) THEN Q8A = .;
   IF (Q8B = -1) THEN Q8B = .;
   IF (Q10 = -1) THEN Q10 = .;
   IF (Q11 = -1) THEN Q11 = .;
   IF (Q12 = -1) THEN Q12 = .;
   IF (Q13A = -1) THEN Q13A = .;
   IF (Q13B = -1) THEN Q13B = .;
   IF (Q14 = -1) THEN Q14 = .;
   IF (Q15A1_COMPRESSED = -1) THEN Q15A1_COMPRESSED = .;
   IF (Q16 = -1) THEN Q16 = .;
   IF (Q17A = -1) THEN Q17A = .;
   IF (Q17B = -1) THEN Q17B = .;
   IF (Q17C = -1) THEN Q17C = .;
   IF (Q17D = -1) THEN Q17D = .;
   IF (Q18A_1 = -1) THEN Q18A_1 = .;
   IF (Q18A_2 = -1) THEN Q18A_2 = .;
   IF (Q18A_3 = -1) THEN Q18A_3 = .;
   IF (Q18B_CODES = -1) THEN Q18B_CODES = .;
   IF (Q18C_CODES = -1) THEN Q18C_CODES = .;
   IF (Q19 = -1) THEN Q19 = .;
   IF (Q20 = -1) THEN Q20 = .;
   IF (Q22 = -1) THEN Q22 = .;
   IF (Q23 = -1) THEN Q23 = .;
   IF (Q24_CODES = -1) THEN Q24_CODES = .;
   IF (Q25 = -1) THEN Q25 = .;
   IF (Q26 = -1) THEN Q26 = .;
   IF (Q27 = -1) THEN Q27 = .;
   IF (Q28 = -1) THEN Q28 = .;
   IF (Q29 = -1) THEN Q29 = .;
   IF (Q30 = -1) THEN Q30 = .;
   IF (Q31_1 = -1) THEN Q31_1 = .;
   IF (Q31_2 = -1) THEN Q31_2 = .;
   IF (Q31_3 = -1) THEN Q31_3 = .;
   IF (Q31_4 = -1) THEN Q31_4 = .;
   IF (Q31_5 = -1) THEN Q31_5 = .;
   IF (Q31_6 = -1) THEN Q31_6 = .;
   IF (Q31_7 = -1) THEN Q31_7 = .;
   IF (Q31_8 = -1) THEN Q31_8 = .;
   IF (Q31_9 = -1) THEN Q31_9 = .;
   IF (Q32 = -1) THEN Q32 = .;
   IF (Q33_1 = -1) THEN Q33_1 = .;
   IF (Q33_2 = -1) THEN Q33_2 = .;
   IF (Q33_3 = -1) THEN Q33_3 = .;
   IF (Q33_4 = -1) THEN Q33_4 = .;
   IF (Q33_5 = -1) THEN Q33_5 = .;
   IF (Q33_6 = -1) THEN Q33_6 = .;
   IF (Q33_7 = -1) THEN Q33_7 = .;
   IF (Q34 = -1) THEN Q34 = .;
   IF (Q35_CODES = -1) THEN Q35_CODES = .;
   IF (PARTNER_RELIGION_RECLASSIFIED = -1) THEN PARTNER_RELIGION_RECLASSIFIED = .;
   IF (PARTNER_RELIGION_CHILD_RECLASS = -1) THEN PARTNER_RELIGION_CHILD_RECLASS = .;
   IF (OWN_RELIGION_CHILD_RECLASS = -1) THEN OWN_RELIGION_CHILD_RECLASS = .;
   IF (EITHER_INTERNET_ADJUSTED = -1) THEN EITHER_INTERNET_ADJUSTED = .;
   IF (POTENTIAL_PARTNER_GENDER_RECODES = -1) THEN POTENTIAL_PARTNER_GENDER_RECODES = .;
   IF (ALT_PARTNER_GENDER = -1) THEN ALT_PARTNER_GENDER = .;
   IF (RESPONDENT_RELIGION_AT_16 = -1) THEN RESPONDENT_RELIGION_AT_16 = .;
   IF (PARTNER_RELIGION_AT_16 = -1) THEN PARTNER_RELIGION_AT_16 = .;
   IF (HOME_COUNTRY_RECODE = -1) THEN HOME_COUNTRY_RECODE = .;
   IF (PP2_PPHHHEAD = -1 OR PP2_PPHHHEAD = -2) THEN PP2_PPHHHEAD = .;
   IF (PP2_PPHHSIZE = -1 OR PP2_PPHHSIZE = -2) THEN PP2_PPHHSIZE = .;
   IF (PP2_PPHOUSE = -1 OR PP2_PPHOUSE = -2) THEN PP2_PPHOUSE = .;
   IF (PP2_PPINCIMP = -1 OR PP2_PPINCIMP = -2) THEN PP2_PPINCIMP = .;
   IF (PP2_PPMARIT = -1 OR PP2_PPMARIT = -2) THEN PP2_PPMARIT = .;
   IF (PP2_PPMSACAT = -1 OR PP2_PPMSACAT = -2) THEN PP2_PPMSACAT = .;
   IF (PP2_PPEDUC = -1 OR PP2_PPEDUC = -2) THEN PP2_PPEDUC = .;
   IF (PP2_PPEDUCAT = -1 OR PP2_PPEDUCAT = -2) THEN PP2_PPEDUCAT = .;
   IF (PP2_PPETHM = -1 OR PP2_PPETHM = -2) THEN PP2_PPETHM = .;
   IF (PP2_PPREG4 = -1 OR PP2_PPREG4 = -2) THEN PP2_PPREG4 = .;
   IF (PP2_PPRENT = -1 OR PP2_PPRENT = -2) THEN PP2_PPRENT = .;
   IF (PP2_PPT01 = -1 OR PP2_PPT01 = -2) THEN PP2_PPT01 = .;
   IF (PP2_PPT1317 = -1 OR PP2_PPT1317 = -2) THEN PP2_PPT1317 = .;
   IF (PP2_PPT18OV = -1 OR PP2_PPT18OV = -2) THEN PP2_PPT18OV = .;
   IF (PP2_PPT25 = -1 OR PP2_PPT25 = -2) THEN PP2_PPT25 = .;
   IF (PP2_PPT612 = -1 OR PP2_PPT612 = -2) THEN PP2_PPT612 = .;
   IF (PP2_PPWORK = -1 OR PP2_PPWORK = -2) THEN PP2_PPWORK = .;
   IF (W2_Q1 = -1) THEN W2_Q1 = .;
   IF (W2_Q2 = -1) THEN W2_Q2 = .;
   IF (W2_Q3 = -1) THEN W2_Q3 = .;
   IF (W2_Q4 = -1) THEN W2_Q4 = .;
   IF (W2_Q5 = -1) THEN W2_Q5 = .;
   IF (W2_Q6 = -1) THEN W2_Q6 = .;
   IF (W2_Q7 = -1) THEN W2_Q7 = .;
   IF (W2_Q8 = -1) THEN W2_Q8 = .;
   IF (W2_Q9 = -1) THEN W2_Q9 = .;
   IF (W2_Q10 = -1) THEN W2_Q10 = .;
   IF (PP3_PPHHHEAD = -1 OR PP3_PPHHHEAD = -2) THEN PP3_PPHHHEAD = .;
   IF (PP3_PPHHSIZE = -1 OR PP3_PPHHSIZE = -2) THEN PP3_PPHHSIZE = .;
   IF (PP3_PPHOUSE = -1 OR PP3_PPHOUSE = -2) THEN PP3_PPHOUSE = .;
   IF (PP3_PPINCIMP = -1 OR PP3_PPINCIMP = -2) THEN PP3_PPINCIMP = .;
   IF (PP3_PPMARIT = -1 OR PP3_PPMARIT = -2) THEN PP3_PPMARIT = .;
   IF (PP3_PPMSACAT = -1 OR PP3_PPMSACAT = -2) THEN PP3_PPMSACAT = .;
   IF (PP3_PPRENT = -1 OR PP3_PPRENT = -2) THEN PP3_PPRENT = .;
   IF (PP3_PPREG4 = -1 OR PP3_PPREG4 = -2) THEN PP3_PPREG4 = .;
   IF (PP3_PPT01 = -1 OR PP3_PPT01 = -2) THEN PP3_PPT01 = .;
   IF (PP3_PPT1317 = -1 OR PP3_PPT1317 = -2) THEN PP3_PPT1317 = .;
   IF (PP3_PPT18OV = -1 OR PP3_PPT18OV = -2) THEN PP3_PPT18OV = .;
   IF (PP3_PPT25 = -1 OR PP3_PPT25 = -2) THEN PP3_PPT25 = .;
   IF (PP3_PPT612 = -1 OR PP3_PPT612 = -2) THEN PP3_PPT612 = .;
   IF (PP3_PPWORK = -1 OR PP3_PPWORK = -2) THEN PP3_PPWORK = .;
   IF (PP3_PPEDUC = -1 OR PP3_PPEDUC = -2) THEN PP3_PPEDUC = .;
   IF (PP3_PPEDUCAT = -1 OR PP3_PPEDUCAT = -2) THEN PP3_PPEDUCAT = .;
   IF (PP3_PPETHM = -1 OR PP3_PPETHM = -2) THEN PP3_PPETHM = .;
   IF (W3_Q1 = -1) THEN W3_Q1 = .;
   IF (W3_Q2 = -1) THEN W3_Q2 = .;
   IF (W3_Q3 = -1) THEN W3_Q3 = .;
   IF (W3_Q4 = -1) THEN W3_Q4 = .;
   IF (W3_MBTIMING_YEAR = -1) THEN W3_MBTIMING_YEAR = .;
   IF (W3_Q5 = -1) THEN W3_Q5 = .;
   IF (W3_Q6 = -1) THEN W3_Q6 = .;
   IF (W3_Q7 = -1) THEN W3_Q7 = .;
   IF (W3_Q8 = -1) THEN W3_Q8 = .;
   IF (W3_Q9 = -1) THEN W3_Q9 = .;
   IF (W3_Q10 = -1) THEN W3_Q10 = .;
   IF (W3_NONMBTIMING_YEAR = -1) THEN W3_NONMBTIMING_YEAR = .;
   IF (Q15A1 = -1) THEN Q15A1 = .;
   IF (W4_Q1 = -1) THEN W4_Q1 = .;
   IF (W4_Q2 = -1) THEN W4_Q2 = .;
   IF (W4_QUALITY = -1) THEN W4_QUALITY = .;
   IF (W4_ATTRACTIVE = -1) THEN W4_ATTRACTIVE = .;
   IF (W4_ATTRACTIVE_PARTNER = -1) THEN W4_ATTRACTIVE_PARTNER = .;
   IF (W4_Q3 = -1) THEN W4_Q3 = .;
   IF (W4_Q4 = -1) THEN W4_Q4 = .;
   IF (W4_Q7 = -1) THEN W4_Q7 = .;
   IF (W4_Q8_A = -1) THEN W4_Q8_A = .;
   IF (W4_Q8_B = -1) THEN W4_Q8_B = .;
   IF (W4_Q9 = -1) THEN W4_Q9 = .;
   IF (W4_Q10 = -1) THEN W4_Q10 = .;
   IF (PP4_PPEDUC = -1 OR PP4_PPEDUC = -2) THEN PP4_PPEDUC = .;
   IF (PP4_PPEDUCAT = -1 OR PP4_PPEDUCAT = -2) THEN PP4_PPEDUCAT = .;
   IF (PP4_PPETHM = -1 OR PP4_PPETHM = -2) THEN PP4_PPETHM = .;
   IF (PP4_PPHHHEAD = -1 OR PP4_PPHHHEAD = -2) THEN PP4_PPHHHEAD = .;
   IF (PP4_PPHHSIZE = -1 OR PP4_PPHHSIZE = -2) THEN PP4_PPHHSIZE = .;
   IF (PP4_PPHOUSE = -1 OR PP4_PPHOUSE = -2) THEN PP4_PPHOUSE = .;
   IF (PP4_PPINCIMP = -1 OR PP4_PPINCIMP = -2) THEN PP4_PPINCIMP = .;
   IF (PP4_PPMARIT = -1 OR PP4_PPMARIT = -2) THEN PP4_PPMARIT = .;
   IF (PP4_PPMSACAT = -1 OR PP4_PPMSACAT = -2) THEN PP4_PPMSACAT = .;
   IF (PP4_PPREG4 = -1 OR PP4_PPREG4 = -2) THEN PP4_PPREG4 = .;
   IF (PP4_PPRENT = -1 OR PP4_PPRENT = -2) THEN PP4_PPRENT = .;
   IF (PP4_PPT01 = -1 OR PP4_PPT01 = -2) THEN PP4_PPT01 = .;
   IF (PP4_PPT25 = -1 OR PP4_PPT25 = -2) THEN PP4_PPT25 = .;
   IF (PP4_PPT612 = -1 OR PP4_PPT612 = -2) THEN PP4_PPT612 = .;
   IF (PP4_PPT1317 = -1 OR PP4_PPT1317 = -2) THEN PP4_PPT1317 = .;
   IF (PP4_PPT18OV = -1 OR PP4_PPT18OV = -2) THEN PP4_PPT18OV = .;
   IF (PP4_PPWORK = -1 OR PP4_PPWORK = -2) THEN PP4_PPWORK = .;
   IF (PPA2009_HOW_OFTEN_SERVICES = -1 OR PPA2009_HOW_OFTEN_SERVICES = -2) THEN PPA2009_HOW_OFTEN_SERVICES = .;
   IF (W5_Q1 = -1) THEN W5_Q1 = .;
   IF (W5_Q2 = -1) THEN W5_Q2 = .;
   IF (W5_SEX_FREQUENCY = -1) THEN W5_SEX_FREQUENCY = .;
   IF (W5_P_MONOGAMY = -1) THEN W5_P_MONOGAMY = .;
   IF (W5_IDENTITY = -1) THEN W5_IDENTITY = .;
   IF (W5_OUTNESS = -1) THEN W5_OUTNESS = .;
   IF (W5_Q3 = -1) THEN W5_Q3 = .;
   IF (W5_Q4 = -1) THEN W5_Q4 = .;
   IF (W5_MBTIMING_MONTH = -1) THEN W5_MBTIMING_MONTH = .;
   IF (W5_Q5 = -1) THEN W5_Q5 = .;
   IF (W5_Q6 = -1) THEN W5_Q6 = .;
   IF (W5_Q7 = -1) THEN W5_Q7 = .;
   IF (W5_MAR_MONTH = -1) THEN W5_MAR_MONTH = .;
   IF (W5_Q8 = -1) THEN W5_Q8 = .;
   IF (W5_CIV_YEAR = -1) THEN W5_CIV_YEAR = .;
   IF (W5_CIV_MONTH = -1) THEN W5_CIV_MONTH = .;
   IF (W5_Q9 = -1) THEN W5_Q9 = .;
   IF (W5_Q10 = -1) THEN W5_Q10 = .;
   IF (W5_NONMBTIMING_MONTH = -1) THEN W5_NONMBTIMING_MONTH = .;
   IF (PP5_PPAGE = -2 OR PP5_PPAGE = -1) THEN PP5_PPAGE = .;
   IF (PP5_PPEDUC = -2 OR PP5_PPEDUC = -1) THEN PP5_PPEDUC = .;
   IF (PP5_PPEDUCAT = -2 OR PP5_PPEDUCAT = -1) THEN PP5_PPEDUCAT = .;
   IF (PP5_PPETHM = -2 OR PP5_PPETHM = -1) THEN PP5_PPETHM = .;
   IF (PP5_PPGENDER = -2 OR PP5_PPGENDER = -1) THEN PP5_PPGENDER = .;
   IF (PP5_PPHHSIZE = -2 OR PP5_PPHHSIZE = -1) THEN PP5_PPHHSIZE = .;
   IF (PP5_PPHOUSE = -2 OR PP5_PPHOUSE = -1) THEN PP5_PPHOUSE = .;
   IF (PP5_PPINCIMP = -2 OR PP5_PPINCIMP = -1) THEN PP5_PPINCIMP = .;
   IF (PP5_PPMARIT = -2 OR PP5_PPMARIT = -1) THEN PP5_PPMARIT = .;
   IF (PP5_PPREG4 = -2 OR PP5_PPREG4 = -1) THEN PP5_PPREG4 = .;
   IF (PP5_PPT01 = -2 OR PP5_PPT01 = -1) THEN PP5_PPT01 = .;
   IF (PP5_PPT612 = -2 OR PP5_PPT612 = -1) THEN PP5_PPT612 = .;
   IF (PP5_PPT1317 = -2 OR PP5_PPT1317 = -1) THEN PP5_PPT1317 = .;
   IF (PP5_PPT18OV = -2 OR PP5_PPT18OV = -1) THEN PP5_PPT18OV = .;
   IF (PP5_PPWORK = -2 OR PP5_PPWORK = -1) THEN PP5_PPWORK = .;
   IF (PPMARIT_2014 = -2 OR PPMARIT_2014 = -1) THEN PPMARIT_2014 = .;
   IF (PPMARIT_2013 = -2 OR PPMARIT_2013 = -1) THEN PPMARIT_2013 = .;
   IF (PPMARIT_2012 = -2 OR PPMARIT_2012 = -1) THEN PPMARIT_2012 = .;
   IF (PPMARIT_2011 = -2 OR PPMARIT_2011 = -1) THEN PPMARIT_2011 = .;
   IF (PPMARIT_2010 = -2 OR PPMARIT_2010 = -1) THEN PPMARIT_2010 = .;
   IF (PPMARIT_2009 = -2 OR PPMARIT_2009 = -1) THEN PPMARIT_2009 = .;
   IF (PPMARIT_2007 = -2 OR PPMARIT_2007 = -1) THEN PPMARIT_2007 = .;
*/


* SAS FORMAT STATEMENT;

/*
   FORMAT
         ALT_PARTNER_GENDER q4ffffff. CIVILNOTREALLY civilnof. CORESIDENT q31_othf.
         EITHER_INTERNET q31_othf. EITHER_INTERNET_ADJUSTED either_f. GENDER_ATTRACTION gender_f.
         GLBSTATUS glbstatf. HOME_COUNTRY_RECODE home_cof. HOW_LONG_AGO_FIRST_MET_CAT how_lonf.
         HOW_MET_ONLINE how_metf. INTERSTATE_MOVER_PP1_PP2 interstf. INTERSTATE_MOVER_PP1_PP3 interstf.
         INTERSTATE_MOVER_PP2_PP3 interstf. IRB_CONSENT irb_conf. MARRIED marriedf.
         MARRYNOTREALLY marrynof. MET_THROUGH_AS_COWORKERS met_thr_3f. MET_THROUGH_AS_NEIGHBORS met_thr_2f.
         MET_THROUGH_FAMILY met_thr_1f. MET_THROUGH_FRIENDS met_thrf. OWN_RELIGION_CHILD_RECLASS q7bfffff.
         PAPEVANGELICAL papevanf. PAPGLB_FRIEND papglb_f. PAPGLB_STATUS papglb__1f.
         PAPRELIGION paprelif. PARENTAL_APPROVAL parentaf. PARTNER_DECEASED partnerf.
         PARTNER_RACE respondf. PARTNER_RELIGION_AT_16 q7bfffff. PARTNER_RELIGION_CHILD_RECLASS q7bfffff.
         PARTNER_RELIGION_RECLASSIFIED q7bfffff. PARTNER_RELIG_16_CAT respond_1f. POTENTIAL_PARTNER_GENDER_RECODES q4ffffff.
         PP2_AFTERP1 pp2_aftf. PP2_IEDUC2 pp_igdrf. PP2_IGDR2 pp_igdrf.
         PP2_PPEDUC ppeducff. PP2_PPEDUCAT ppeducaf. PP2_PPETHM ppethmff.
         PP2_PPHHHEAD pphhheaf. PP2_PPHHSIZE ppagefff. PP2_PPHOUSE pphousef.
         PP2_PPINCIMP ppincimf. PP2_PPMARIT ppmaritf. PP2_PPMSACAT ppmsacaf.
         PP2_PPNET ppnetfff. PP2_PPREG4 ppreg4ff. PP2_PPREG9 ppreg9ff.
         PP2_PPRENT pprentff. PP2_PPT01 ppagefff. PP2_PPT1317 ppagefff.
         PP2_PPT18OV ppagefff. PP2_PPT25 ppagefff. PP2_PPT612 ppagefff.
         PP2_PPWORK ppworkff. PP3_NEWER pp3_newf. PP3_PPEDUC pp3_ppef.
         PP3_PPEDUCAT pp3_ppe_1f. PP3_PPETHM pp3_ppe_2f. PP3_PPHHHEAD pp3_pphf.
         PP3_PPHHSIZE ppagefff. PP3_PPHOUSE pp3_pph_1f. PP3_PPINCIMP pp3_ppif.
         PP3_PPMARIT pp3_ppmf. PP3_PPMSACAT pp3_ppm_1f. PP3_PPNET q31_othf.
         PP3_PPREG4 pp3_ppr_1f. PP3_PPREG9 pp3_ppr_2f. PP3_PPRENT pp3_pprf.
         PP3_PPT01 ppagefff. PP3_PPT1317 ppagefff. PP3_PPT18OV ppagefff.
         PP3_PPT25 ppagefff. PP3_PPT612 ppagefff. PP3_PPWORK pp3_ppwf.
         PP4_NEWER q31_othf. PP4_PPEDUC pp3_ppef. PP4_PPEDUCAT pp3_ppe_1f.
         PP4_PPETHM pp3_ppe_2f. PP4_PPHHHEAD pp3_pphf. PP4_PPHHSIZE pp4_pphf.
         PP4_PPHOUSE pp3_pph_1f. PP4_PPINCIMP pp3_ppif. PP4_PPMARIT pp3_ppmf.
         PP4_PPMSACAT pp3_ppm_1f. PP4_PPNET q31_othf. PP4_PPREG4 pp3_ppr_1f.
         PP4_PPREG9 pp3_ppr_2f. PP4_PPRENT pp3_pprf. PP4_PPT01 pp4_pphf.
         PP4_PPT1317 pp4_pphf. PP4_PPT18OV pp4_pphf. PP4_PPT25 pp4_pphf.
         PP4_PPT612 pp4_pphf. PP4_PPWORK pp3_ppwf. PP5_NEWER q31_othf.
         PP5_PPAGE pp4_pphf. PP5_PPAGECAT pp5_ppaf. PP5_PPAGECT4 pp5_ppa_1f.
         PP5_PPEDUC pp3_ppef. PP5_PPEDUCAT pp3_ppe_1f. PP5_PPETHM pp3_ppe_2f.
         PP5_PPGENDER pp5_ppgf. PP5_PPHHHEAD q31_othf. PP5_PPHHSIZE pp4_pphf.
         PP5_PPHOUSE pp3_pph_1f. PP5_PPINCIMP pp3_ppif. PP5_PPMARIT pp3_ppmf.
         PP5_PPMSACAT pp5_ppmf. PP5_PPNET q31_othf. PP5_PPREG4 pp3_ppr_1f.
         PP5_PPREG9 pp3_ppr_2f. PP5_PPRENT pp5_pprf. PP5_PPT01 pp4_pphf.
         PP5_PPT1317 pp4_pphf. PP5_PPT18OV pp4_pphf. PP5_PPT612 pp4_pphf.
         PP5_PPWORK pp3_ppwf. PPA2009_HOW_OFTEN_SERVICES ppa2009f. PPAGE ppagefff.
         PPAGECAT ppagecaf. PPAGECT4 ppagectf. PPEDUC ppeducff.
         PPEDUCAT ppeducaf. PPETHM ppethmff. PPGENDER ppgendef.
         PPHHCOMP11_MEMBER10_GENDER pphhcomf. PPHHCOMP11_MEMBER10_RELATIONSHIP pphhcom_1f. PPHHCOMP11_MEMBER11_GENDER pphhcomf.
         PPHHCOMP11_MEMBER11_RELATIONSHIP pphhcom_1f. PPHHCOMP11_MEMBER12_GENDER pphhcomf. PPHHCOMP11_MEMBER12_RELATIONSHIP pphhcom_1f.
         PPHHCOMP11_MEMBER13_GENDER pphhcomf. PPHHCOMP11_MEMBER13_RELATIONSHIP pphhcom_1f. PPHHCOMP11_MEMBER14_GENDER pphhcomf.
         PPHHCOMP11_MEMBER14_RELATIONSHIP pphhcom_1f. PPHHCOMP11_MEMBER15_GENDER pphhcomf. PPHHCOMP11_MEMBER15_RELATIONSHIP pphhcom_1f.
         PPHHCOMP11_MEMBER2_GENDER pphhcomf. PPHHCOMP11_MEMBER2_RELATIONSHIP pphhcom_1f. PPHHCOMP11_MEMBER3_GENDER pphhcomf.
         PPHHCOMP11_MEMBER3_RELATIONSHIP pphhcom_1f. PPHHCOMP11_MEMBER4_GENDER pphhcomf. PPHHCOMP11_MEMBER4_RELATIONSHIP pphhcom_1f.
         PPHHCOMP11_MEMBER5_GENDER pphhcomf. PPHHCOMP11_MEMBER5_RELATIONSHIP pphhcom_1f. PPHHCOMP11_MEMBER6_GENDER pphhcomf.
         PPHHCOMP11_MEMBER6_RELATIONSHIP pphhcom_1f. PPHHCOMP11_MEMBER7_GENDER pphhcomf. PPHHCOMP11_MEMBER7_RELATIONSHIP pphhcom_1f.
         PPHHCOMP11_MEMBER8_GENDER pphhcomf. PPHHCOMP11_MEMBER8_RELATIONSHIP pphhcom_1f. PPHHCOMP11_MEMBER9_GENDER pphhcomf.
         PPHHCOMP11_MEMBER9_RELATIONSHIP pphhcom_1f. PPHHHEAD pphhheaf. PPHISPAN pphispaf.
         PPHOUSE pphousef. PPINCIMP ppincimf. PPMARIT ppmaritf.
         PPMARIT_2007 ppmarit_1f. PPMARIT_2009 ppmarit_1f. PPMARIT_2010 ppmarit_1f.
         PPMARIT_2011 ppmarit_1f. PPMARIT_2012 ppmarit_1f. PPMARIT_2013 ppmarit_1f.
         PPMARIT_2014 ppmarit_1f. PPMSACAT ppmsacaf. PPNET ppnetfff.
         PPPARTYID3 pppartyf. PPQ14ARACE ppq14arf. PPRACE_ASIANINDIAN pphhheaf.
         PPRACE_BLACK pphhheaf. PPRACE_CHINESE pphhheaf. PPRACE_FILIPINO pphhheaf.
         PPRACE_GUAMANIAN pphhheaf. PPRACE_HAWAIIAN pphhheaf. PPRACE_JAPANESE pphhheaf.
         PPRACE_KOREAN pphhheaf. PPRACE_NATIVEAMERICAN pphhheaf. PPRACE_OTHERASIAN pphhheaf.
         PPRACE_OTHERPACIFICISLANDER pphhheaf. PPRACE_SAMOAN pphhheaf. PPRACE_SOMEOTHERRACE pphhheaf.
         PPRACE_VIETNAMESE pphhheaf. PPRACE_WHITE pphhheaf. PPREG4 ppreg4ff.
         PPREG9 ppreg9ff. PPRENT pprentff. PPT01 ppagefff.
         PPT1317 ppagefff. PPT18OV ppagefff. PPT25 ppagefff.
         PPT612 ppagefff. PPWORK ppworkff. PP_IEDUC1 pp_igdrf.
         PP_IGDR1 pp_igdrf. Q10 q10fffff. Q11 q10fffff.
         Q12 q12fffff. Q13A q13affff. Q13B q7bfffff.
         Q14 q10fffff. Q15A1 home_cof. Q15A1_COMPRESSED q15a1_cf.
         Q15A3_CODES q3_codef. Q16 q3_codef. Q17A q17affff.
         Q17B q17bffff. Q17C q17cffff. Q17D q17dffff.
         Q18A_1 q18a_1ff. Q18A_2 q18a_1ff. Q18A_3 q18a_3ff.
         Q18A_REFUSED ppnetfff. Q18B_CODES q3_codef. Q18C_CODES q3_codef.
         Q19 q7afffff. Q20 q7afffff. Q21A_REFUSAL q21a_ref.
         Q21B_REFUSAL q21a_ref. Q21C_REFUSAL q21a_ref. Q21D_REFUSAL q21a_ref.
         Q21E_REFUSAL q21a_ref. Q22 q22fffff. Q23 q23fffff.
         Q24_BAR_RESTAURANT q31_othf. Q24_BLIND_DATE q31_othf. Q24_BTWN_I_COWORK q31_othf.
         Q24_BTWN_I_FAMILY q31_othf. Q24_BTWN_I_FRIEND q31_othf. Q24_BTWN_I_NEIGHBOR q31_othf.
         Q24_BTWN_I_SIG_OTHER q31_othf. Q24_BUSINESS_TRIP q31_othf. Q24_CHURCH q31_othf.
         Q24_CODES q24_codf. Q24_COLLEGE q31_othf. Q24_CUSTOMER q31_othf.
         Q24_FAM_AUNT_NIECE_ACTIVE q31_othf. Q24_FAM_AUNT_NIECE_PASSIVE q31_othf. Q24_FAM_BROTHER_ACTIVE q31_othf.
         Q24_FAM_BROTHER_PASSIVE q31_othf. Q24_FAM_COUSINS_ACTIVE q31_othf. Q24_FAM_COUSINS_PASSIVE q31_othf.
         Q24_FAM_FATHER_ACTIVE q31_othf. Q24_FAM_FATHER_PASSIVE q31_othf. Q24_FAM_FEMALE q31_othf.
         Q24_FAM_GRANDFATHER_ACTIVE q31_othf. Q24_FAM_GRANDFATHER_PASSIVE q31_othf. Q24_FAM_GRANDMOTHER_ACTIVE q31_othf.
         Q24_FAM_GRANDMOTHER_PASSIVE q31_othf. Q24_FAM_MALE q31_othf. Q24_FAM_MOTHER_ACTIVE q31_othf.
         Q24_FAM_MOTHER_PASSIVE q31_othf. Q24_FAM_OTHER_ACTIVE q31_othf. Q24_FAM_OTHER_PASSIVE q31_othf.
         Q24_FAM_SISTER_ACTIVE q31_othf. Q24_FAM_SISTER_PASSIVE q31_othf. Q24_FAM_UNCLE_NEPHEW_ACTIVE q31_othf.
         Q24_FAM_UNCLE_NEPHEW_PASSIVE q31_othf. Q24_INTERNET_CHAT q31_othf. Q24_INTERNET_COMMUNITY q31_othf.
         Q24_INTERNET_DATING q31_othf. Q24_INTERNET_GAME q31_othf. Q24_INTERNET_OTHER q31_othf.
         Q24_INTERNET_SOCIAL_NETWORKING q31_othf. Q24_MET_ONLINE q24_metf. Q24_MILITARY q31_othf.
         Q24_PRIVATE_PARTY q31_othf. Q24_PUBLIC q31_othf. Q24_P_COWORK q31_othf.
         Q24_P_FAMILY q31_othf. Q24_P_FRIEND q31_othf. Q24_P_NEIGHBOR q31_othf.
         Q24_P_SIG_OTHER q31_othf. Q24_R_COWORK q31_othf. Q24_R_FAMILY q31_othf.
         Q24_R_FRIEND q31_othf. Q24_R_NEIGHBOR q31_othf. Q24_R_SIG_OTHER q31_othf.
         Q24_SCHOOL q31_othf. Q24_SINGLES_SERVICE_NON_INTERNET q31_othf. Q24_VACATION q31_othf.
         Q24_VOL_ORG q31_othf. Q24_WORK_NEIGHBOR q31_othf. Q25 q25fffff.
         Q26 q26fffff. Q27 q7afffff. Q28 q7afffff.
         Q29 q29fffff. Q30 q30fffff. Q31_1 q18a_1ff.
         Q31_2 q18a_1ff. Q31_3 q18a_1ff. Q31_4 q18a_1ff.
         Q31_5 q18a_1ff. Q31_6 q18a_1ff. Q31_7 q18a_1ff.
         Q31_8 q18a_1ff. Q31_9 q18a_1ff. Q31_OTHER_TEXT_ENTERED q31_othf.
         Q32 q32fffff. Q32_INTERNET q32_intf. Q33_1 q18a_1ff.
         Q33_2 q18a_1ff. Q33_3 q18a_1ff. Q33_4 q18a_1ff.
         Q33_5 q18a_1ff. Q33_6 q18a_1ff. Q33_7 q18a_1ff.
         Q33_OTHER_TEXT_ENTERED q31_othf. Q34 q34fffff. Q35_CODES q3_codef.
         Q35_TEXT_ENTERED q31_othf. Q3_CODES q3_codef. Q4 q4ffffff.
         Q5 q5ffffff. Q6A q6afffff. Q6B q6bfffff.
         Q7A q7afffff. Q7B q7bfffff. Q8A q8afffff.
         Q8B q7bfffff. QFLAG qflagfff. RECSOURCE recsourf.
         RELATIONSHIP_QUALITY relatiof. RESPONDED_TO_W234OR5 q31_othf. RESPONDENT_RACE respondf.
         RESPONDENT_RELIGION_AT_16 q7bfffff. RESPONDENT_RELIG_16_CAT respond_1f. S1 s1ffffff.
         S1A s1afffff. S2 s2ffffff. SAME_SEX_COUPLE same_sef.
         US_RAISED us_raisf. W2345_COMBO_BREAKUP w2345_cf. W234_COMBO_BREAKUP w234_cof.
         W2W3_COMBO_BREAKUP w2w3_cof. W2_ASSIGNED w2_assif. W2_BROKE_UP w2_brokf.
         W2_DECEASED partnerf. W2_DONOTCONTACT w2_donof. W2_F1COMPLETE w2_f1cof.
         W2_MULTINAME w2_multf. W2_PANELSTAT w2_panef. W2_Q1 q7afffff.
         W2_Q10 w2_q10ff. W2_Q2 q7afffff. W2_Q3 w2_q3fff.
         W2_Q4 w2_q4fff. W2_Q5 q7afffff. W2_Q6 q7afffff.
         W2_Q7 w2_q7fff. W2_Q8 w2_q8fff. W2_Q9 w2_q9fff.
         W2_SOURCE w2_sourf. W2_XMARRY w2_xmarf. W2_XSS w2_xssff.
         W3_BROKE_UP w3_brokf. W3_COMPLETE ppnetfff. W3_MBTIMING_MONTH w3_mbti_1f.
         W3_MBTIMING_YEAR w3_mbtif. W3_MULTINAME w3_multf. W3_NONMBTIMING_MONTH w3_mbti_1f.
         W3_Q1 w3_q1fff. W3_Q10 w3_q10ff. W3_Q2 w3_q1fff.
         W3_Q3 w3_q3fff. W3_Q4 w3_q4fff. W3_Q5 w3_q1fff.
         W3_Q6 w3_q1fff. W3_Q7 w3_q7fff. W3_Q8 w3_q8fff.
         W3_Q9 w3_q9fff. W3_SOURCE w3_sourf. W3_STATUS w3_statf.
         W3_XDECEASED partnerf. W3_XLAST w3_xlasf. W3_XMARRY w3_xmarf.
         W3_XPARTNERED w3_xparf. W3_XQUALIFIED w3_xquaf. W3_XSS w3_xssff.
         W3_XTYPE w3_xtypf. W4_ATTRACTIVE w4_attrf. W4_ATTRACTIVE_PARTNER w4_attrf.
         W4_BROKE_UP w2_brokf. W4_COMPLETE q31_othf. W4_MAR_MONTH w3_mbti_1f.
         W4_MBTIMING_MONTH w3_mbti_1f. W4_NONMBTIMING_MONTH w3_mbti_1f. W4_Q1 w3_q1fff.
         W4_Q10 w4_q10ff. W4_Q2 w3_q1fff. W4_Q3 w4_q3fff.
         W4_Q4 w4_q4fff. W4_Q5 q31_othf. W4_Q6 q31_othf.
         W4_Q7 w4_q7fff. W4_Q8_A w3_q8fff. W4_Q8_B w3_q8fff.
         W4_Q9 w4_q9fff. W4_QUALITY w4_qualf. W4_SOURCE w4_sourf.
         W4_STATUS w4_statf. W4_XCIVIL q31_othf. W4_XMARRY w4_xmarf.
         W4_XMONTH w3_mbti_1f. W4_XQUALIFIED w4_xquaf. W4_XSS w4_xssff.
         W4_XTYPE w4_xtypf. W5X_CIVIL w5x_civf. W5X_CIVMONTH w3_mbti_1f.
         W5X_MARRY w5x_marf. W5X_MONTH w3_mbti_1f. W5X_QUALIFIED w5x_quaf.
         W5_BROKE_UP w3_brokf. W5_CIV_MONTH w5_mbtif. W5_CIV_YEAR w5_civ_f.
         W5_COMPLETE w5_compf. W5_IDENTITY w5_idenf. W5_MAR_MONTH w5_mbtif.
         W5_MBTIMING_MONTH w5_mbtif. W5_NONMBTIMING_MONTH w5_mbtif. W5_OUTNESS w5_outnf.
         W5_P_MONOGAMY w5_p_mof. W5_Q1 w3_q1fff. W5_Q10 w5_q10ff.
         W5_Q2 w3_q1fff. W5_Q3 w5_q3fff. W5_Q4 w5_q4fff.
         W5_Q5 w3_q1fff. W5_Q6 w3_q1fff. W5_Q7 w5_q7fff.
         W5_Q8 w3_q8fff. W5_Q9 w5_q9fff. W5_SEX_FREQUENCY w5_sex_f.
         W5_SOURCE w5_sourf. W5_STATUS w4_statf. ZPFORBORN_CAT zpforbof.
         ZPHISP_CAT zphisp_f. ZPMEDHHINC_CAT zpmedhhf. ZPNHBLACK_CAT zpnhblaf.
         ZPNHWHITE_CAT zpnhwhif. ZPRURAL_CAT zpruralf.
    ;
*/

RUN ;
