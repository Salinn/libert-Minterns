class Admin::Dashboard < ActiveRecord::Base
  require 'csv'

  def self.import(file)
    #http://richonrails.com/articles/importing-csv-files
    user_ids = []
    user_organizations = []
    CSV.foreach(file.path, headers: true) do |row|

      user = create_or_find_user(user_hash)
      major = create_or_find_major(user_hash)
      college = create_or_find_college(user_hash)

      user_ids.push(user.id)
    end # end CSV.foreach
    
    User.with_role(:intern).each |user|
        if user_ids.include? user.id 
          user_ids.delete(user.id)
        else
          user.destroy
        end
      end
    end
    
    def create_or_find_user(user_hash)
      first_name = user_hash["First Name"]
      last_name = user_hash["Last Name"]
      email = user_hash["Email"]
      
      User.find_or_create_by(first_name: first_name, last_name: last_name, email: email)
    end
    
    def create_or_find_college(user_hash)
      school = user_hash["School"]
      
      College.find_or_create_by(name: school)
    end
    
    def create_or_find_major(user_hash)
      major = user_hash["Major"]
      
      Major.find_or_create_by(name: major)
    end
  end
end