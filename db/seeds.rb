#Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }
#No Requirments
load 'db/seeds/years.rb'
load 'db/seeds/majors.rb'
load 'db/seeds/colleges.rb'
load 'db/seeds/faq_sections.rb' 
load 'db/seeds/departments.rb'

#Order matters
load 'db/seeds/users.rb' #Depends on colleges and majors
load 'db/seeds/events.rb' #Depends on users
load 'db/seeds/rsvps.rb' #Depends on Users and Events
load 'db/seeds/faqs.rb' #Depends on faq_sections
load 'db/seeds/questions.rb' #Depends fa and user
load 'db/seeds/answers.rb' #Depends on user and question
load 'db/seeds/intern_summaries.rb' #Depends on user
load 'db/seeds/photo_challenges.rb' #Depends on year
load 'db/seeds/photos.rb' #Depends on gallery and photo challenge
load 'db/seeds/comments.rb' #Depends on user and event
load 'db/seeds/winning_photos.rb' #Depends on photo and photo challenge

#get created in the models
#load 'db/seeds/ratings.rb'
#load 'db/seeds/galleries.rb'