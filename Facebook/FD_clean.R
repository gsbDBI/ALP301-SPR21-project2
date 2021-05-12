# Read in the data
setwd('~/important/')
sample <- read.csv(file = 'Social_Impact_Research_Initiative_2021_05_10_20_29_12.csv') # downloaded from Chatfuel


# rename
write.csv(sample, "FD_5_11_2021.csv", row.names = FALSE)
# variables 
# [1] "seen_total"      "question_6_pre"  "question_2_pre"  "question_4_pre"  "question_1_pre"  "question_3_pre"  "question_5_pre"  "engagement"      "survey_type"     "quiz_answer"    
# [11] "engagement_1"    "engagement_3"    "engagement_2"    "question_2_post" "question_3_post" "question_5_post" "question_6_post" "question_1_post" "question_4_post" "demo_gender"    
# [21] "demo_age"        "demo_asked"      "demo_school"     "demo_media"      "last.seen"

# Variables explained 

# last.seen is the last time the individual interacted with the chatbot
# 
# seen_total is used for tracking the amount of stimuli that an individual saw. 6 means they saw all six stimuli. This is what we should expect for an individual that finsihed the survey
# 
# survey_type: either "continuous" or "days"
# 
# engagement: indicator variable, either 1 or 0. It indicates that an individual was assinged the engagement treatment
# 
# engagement_x: response to engagement question x. Either "yes" or "no"
# 
#             1st question: Do you think that misinformation is an issue?
#               
#             2nd question: Think about your communication with friends or family. Has someone shared images, memes, or videos that use these techniques?
#             
#             3rd question: Is this information helpful?
# 
# quiz_answer: response to quiz during images section 
#     question: Quiz:
#               *A*: Using bulk fake experts
#             *B*: Using vague experts whose credentials are not known
#             *C*: Using misleading images to convey expertise
#             *D*: Using a false debate to create doubt
# 
# demo_school: demographics school question
# demo_media: demographics media question
# demo_gender: demographics gender question
# demo_age: demographics age question
# demo_asked: flag that indicates that an individual was asked demographics questions 
# 
# pre/post treatment questions. "willingness to share"
# 
# We numbered the questions as follows:
#   Question 1: "There is no climate emergency, say 500 experts in letter to the United Nations"
#   Question 2: "From a medical friend"
#   Question 3: "Bill Nye"
#   Question 4: "Some experts say new CDC guidelines are too cautious. Here's why that matters with vaccine hesitancy."
#   Question 5: "Out-of-town Homebuyers with Deep Pockets Edging out Locals. 31.5% of Redfin.com users looking to migrate."
#   Question 6: "US may finally be turning corner on pandemic
#   
#   response is an integer between 1-7
# question_x_pre: individual's response to question x pretreatment 
# question_x_post: indivual's response to question x posttreatment 