Coursera Data Science Capstone Project
========================================================
Predicting the Next Word  

Ashish Veera  
21st January 2018


Introduction
========================================================

The goal of this project is to build a predictive text model so that it can predict the next word after the user has entered a partial sentence into the Shiny app. 

The Shiny app is available at <https://ashishveera.shinyapps.io/ShinyApp/>  
Please use chrome browser to launch the Shiny App

Github Repo is available at <https://github.com/AshishVeera/Data-Science-Capstone>


Preprocessing the data
========================================================
- A subset of the original data (which was downloaded from Coursera) was sampled from the 3 distinct sources (blogs,twitter and news) and was finally merged into one.
- The data was then processed by converting into lowercase, stripping white spaces and removing punctuation and numbers.
- Then the n-grams were created (Quadgram,Trigram and Bigram).
- The term-count tables were extracted from the N-Grams and sorted according to the frequency in descending order.
- Finally, the n-gram objects were saved as R-Compressed files (.RData)

Word Prediction Model
========================================================
The prediction model for predicting the next word is based on the Katz Back-off algorithm. Here's the description of the mechanics of this algorithm:

- Compressed data sets containing descending frequency sorted n-grams are first loaded.  
- User input words are cleaned in the similar way as before prior to prediction of the next word.
-For predicting the next word, Quadgram is first used (first three words of Quadgram are the last three words of the user provided sentence).
- If no Quadgram is found, back off to Trigram (first two words of Trigram are the last two words of the sentence).
- If no Trigram is found, back off to Bigram (first word of Bigram is the last word of the sentence)
- If no Bigram is found, back off to the most common word with highest frequency 'the' is returned

Shiny Application
========================================================
- User can enter a partially sentence and click on the submit button
- The predicted word is shown in the dedicated text box under the title "The predicted next word is:"
- As a note, the n-gram used to predict the next word is indicated in the note section 




