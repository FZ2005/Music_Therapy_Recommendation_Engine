# Data Exploration Findings
## Analysis with Python 
### Correlation between the Four Mental Health Levels
- Anxiety and depression have a moderate correlation with a value of 0.52.

### Relationship between Genres and Music Effects
- Participants who reported a higher percentage of improvements in mentela health levels tend to listen to gospel, lofi, hip hop, k-pop, EDM, country, folk, jazz, and rap music. In comparison, participants whose favorite genres are rock, latin, and video game music reported lower improvements in mental health.

### Relationship between BPM and Music Effects
- All types of BPM levels show improvements in participants' mental health. There is no significant relationship between BPM levels and the effects of music.

### Relationship between BPM and Age Groups
- However, individuals who are in their middle 50's to 60's perfer moderate to moderately fast BPM levels, and participants who are 65 and above tend to listen to music with lower BPM levels.


### Correlation between Mental Health Levels and Favorite Genres
- **Anxiety**: Participants whose favorite genres Folk, K pop, hip hop, and Rock have a higher anxiety level on average, while Latin, Gospel, and Classical seem to give a lower anxiety level. Latin, Rap, Gospel, and Classical have the highest percentage of "No" and "Low" anxiety levels.
- **Depression**: Lofi and Hip hop have the highest average depression levels among participants, while Latin and Gospel again have the lowest average depression level. R&B, Classical, and Rap also have a relatively lower depression level as well. However, from the stacked bar chart, it seems Jazz and K pop have more people with No to Low depression level than Classical.
- **Insomnia**: Lofi one of the highest average insomnia level, followed by surprisingly, Gospel and Metal. Latin, R&B, Country, and Rap have the lowest insomnia levels. The influence of favorite genre to insomnia levels are very two-ended. Lofi, Gospel, and Metal have a large number of participants with High insomnia levels. However, this might be due to few participants have Lofi and Gospel as their favorite genres, so the result might be biased.
- **OCD**: Lofi, Rap, and EDM have the highest average OCD levels, while Gospel, Latin, and Folk have the lowest average OCD levels. Folk, Gospel, and Video Game Music have the most number of participants with No to Low OCD levels, while Lofi, K-pop, and EDM have the fewest.


gospel_probabilities = gospel_model.predict_proba(X_test)[:, 1]  # Probabilities for the positive class (1)

**Correlation Analysis Between Frequencies and Mental Health Levels**
1. Performed simple linear correlations
- No strong correlation between frequencies and mental health levels
- Found a few strong and medium strong correlations between different frequencies
2. Decision Tree

**Averages that are within the range 0 to 0.3:**
- Classical_Anxiety :  0.28764102649456524
- Country_Anxiety :  0.17780701888586956
- EDM_Anxiety :  0.2108088586956522
- Folk_Anxiety :  0.20179446385869565
- Gospel_Anxiety :  0.0845785535326087
- HipHop_Anxiety :  0.2744140953804348
- Jass_Anxiety :  0.21352624714673912
- Kpop_Anxiety :  0.1451388789402174
- Latin_Anxiety :  0.12880261861413042
- Lofi_Anxiety :  0.2135730654891304
- Metal_Anxiety :  0.2536666686141304
- RB_Anxiety :  0.2487757164402174
- Rap_Anxiety :  0.26177055733695653
- VideoGameMusic_Anxiety :  0.24149541195652177
- Country_Depression :  0.24555328519021738
- EDM_Depression :  0.27056866345108693
- Folk_Depression :  0.26074062364130435
- Gospel_Depression :  0.11177569008152174
- Jass_Depression :  0.27752629375000004
- Kpop_Depression :  0.21778687866847826
- Latin_Depression :  0.17710085543478263
- Lofi_Depression :  0.2938265190217392
- Gospel_Insomnia :  0.15045309035326088
- Kpop_Insomnia :  0.2780600813858696
- Latin_Insomnia :  0.23518029714673916
- Gospel_OCD :  0.19151137989130432

**Averages that are within the range 0.3 to 1:**
- Pop_Anxiety :  0.4028831964673913
- Rock_Anxiety :  0.42498786222826085
- Classical_Depression :  0.3908127775815217
- HipHop_Depression :  0.3755721516304348
- Metal_Depression :  0.3091115430706522
- Pop_Depression :  0.5561144627717391
- RB_Depression :  0.34544861942934785
- Rap_Depression :  0.35432194796195654
- Rock_Depression :  0.5410408154891304
- VideoGameMusic_Depression :  0.3351146850543479
- Classical_Insomnia :  0.5027540258152174
- Country_Insomnia :  0.32316500855978264
- EDM_Insomnia :  0.3755356614130435
- Folk_Insomnia :  0.3751963308423913
- HipHop_Insomnia :  0.5309422038043479
- Jass_Insomnia :  0.39632433600543476
- Lofi_Insomnia :  0.394924516576087
- Metal_Insomnia :  0.43022035951086957
- Pop_Insomnia :  0.7873656516304347
- RB_Insomnia :  0.48752570597826084
- Rap_Insomnia :  0.5061444388586956
- Rock_Insomnia :  0.771636194972826
- VideoGameMusic_Insomnia :  0.46519461766304354
- Classical_OCD :  0.6840273881793478
- Country_OCD :  0.4029680870923913
- EDM_OCD :  0.4933349114130435
- Folk_OCD :  0.5266392619565218
- HipHop_OCD :  0.6945363705163043
- Jass_OCD :  0.5287037645380435
- Kpop_OCD :  0.37234879836956525
- Latin_OCD :  0.3183577724184783
- Lofi_OCD :  0.5293333432065218
- Metal_OCD :  0.6311035197010869
- RB_OCD :  0.617010599048913
- Rap_OCD :  0.6644877918478261
- VideoGameMusic_OCD :  0.6261785917119566

**Averages that are within the range 1 to 3:**
- Pop_OCD :  1.0283908716032608
- Rock_OCD :  1.0676782463315218

### Findings
- May use these insights to inform the recommendations of my model.
    - If someone reports moderate anxiety, model recommends genres that fall into the 0.3 to 1 range.
    - For users with less severe symptoms, genres that fall into the 1 to 3 range might be more appropriate recommendations.


## Analysis with Tableau
### Anxiety
- Folk (6.567), K-pop (6.231), Hip hop (6.200), and Rock (6.218) have the highest average anxiety levels (with anxiety levels in parenthesis for each genre).
- Latin (4.333), Gospel (4.833) and Classical (4.877) have the lowest average anxiety levels.



### Depression
- Lofi (6.600), Hip hop (5.800), Rock (5.259), and EDM (5.243) have the highest average depression levels.
- Gospel (2.667), Latin (3.000), and R&B (3.829) have the lowest average depression levels.

### Insomnia
- Lofi (5.600), Gospel (5.333), and Metal (4.557) have the highest average insomnia levels.
- Rap (2.500), Country (2.720), and R&B (2.886) have the lowest average insomnia levels.


### OCD
- Lofi (3.400), Rap (3.350), EDM (3.000) have the highest average OCD levels. However, this is still low compared to the other average depression levels.
- Gospel (0.333), Latin (1.667), and Folk (2.200) have the loweest average OCD levels.

### Hours per day
- The average anxiety level peaks at 9.667 and 10.000 when the number of hours listening to music per day is 9 and 13, respectively. 
- The average depression and insomnia levels show a slow increasing trend when the number of hours listening to music per day increases.
- The average OCD levels also show a slow increasing trend but increases more rapidly when at 15 hours per day to 18 hours per day.


## Distribution of Favorite Genres
- Rock (25.512%), Pop (15.553%), and Metal (12.005%) are the most popular music genres among the participants, while Latin (0.409%), Gospel (0.819%), and Lofi (1.304%) are the least popular.
