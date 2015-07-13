#Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }
#No Requirments
load 'db/seeds/events.rb'
load 'db/seeds/years.rb'
load 'db/seeds/majors.rb'
load 'db/seeds/colleges.rb'
load 'db/seeds/faq_sections.rb' 

#Order matters
load 'db/seeds/users.rb' #Depends on colleges and majors
load 'db/seeds/faqs.rb' #Depends on faq_sections
#load 'db/seeds/ratings.rb' ratings get created in the models
load 'db/seeds/questions.rb' #Depends fa and user
load 'db/seeds/answers.rb' #Depends on user and question
load 'db/seeds/intern_summaries.rb' #Depends on user
