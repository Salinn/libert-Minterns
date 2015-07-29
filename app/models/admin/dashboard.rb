class Admin::Dashboard
  require 'csv'

  def self.import(file)
    #http://richonrails.com/articles/importing-csv-files
    user_ids = []
    CSV.foreach(file.path, headers: true) do |row|
      user_hash = row.to_hash

      major = create_or_find_major(user_hash)
      college = create_or_find_college(user_hash)
      user = create_or_find_user(user_hash, major, college)

      user_ids.push(user.id)
    end # end CSV.foreach
    User.with_role(:intern).each do |user|
      if user_ids.include? user.id
        user_ids.delete(user.id)
      else
        user.destroy
      end
    end
  end

  def self.create_or_find_user(user_hash, major, college)
    first_name = user_hash["First Name"]
    last_name = user_hash["Last Name"]
    email = user_hash["Email"].downcase

    user_exists = User.find_by(email: email)
    if user_exists
      User.update(user_exists.id, first_name: first_name, last_name: last_name, email: email, major: major, college: college)
    else
      generated_password = Devise.friendly_token.first(8)
      new_intern = User.create!(first_name: first_name, last_name: last_name, email: email, major: major, college: college, password: generated_password)
      new_intern.add_role 'intern'
      new_intern
    end
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