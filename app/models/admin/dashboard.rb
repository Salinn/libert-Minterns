class Admin::Dashboard
  require 'csv'

  def self.import(file)
    #http://richonrails.com/articles/importing-csv-files
    user_ids = []
    user_organizations = []
    CSV.foreach(file.path, headers: true) do |row|
      user_hash = row.to_hash
      
      user = create_or_find_user(user_hash)
      major = create_or_find_major(user_hash)
      college = create_or_find_college(user_hash)

      user_ids.push(user.id)
    end # end CSV.foreach
  end

  def self.create_or_find_user(user_hash)
    first_name = user_hash["First Name"]
    last_name = user_hash["Last Name"]
    email = user_hash["Email"]
    
    generated_password = Devise.friendly_token.first(8)

    User.find_or_create_by(first_name: first_name, last_name: last_name, email: email)
  end

  def self.create_or_find_college(user_hash)
    school = user_hash["School"]

    College.find_or_create_by(name: school)
  end

  def self.create_or_find_major(user_hash)
    major = user_hash["Major"]

    Major.find_or_create_by(name: major)
  end
end