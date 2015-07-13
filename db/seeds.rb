#Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }
#Order matters
load 'db/seeds/years.rb'
load 'db/seeds/majors.rb'
load 'db/seeds/colleges.rb'
load 'db/seeds/users.rb'
load 'db/seeds/faq_sections.rb'
load 'db/seeds/faqs.rb'
#load 'db/seeds/ratings.rb' ratings get created in the models
load 'db/seeds/questions.rb'
load 'db/seeds/answers.rb'