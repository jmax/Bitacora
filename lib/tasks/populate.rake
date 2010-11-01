namespace(:db) do
  namespace(:populate) do
    desc "Populates Users Table"
    task :users => :environment do
      User.delete_all

      ['batman', 'superman', 'wolverine', 'hulk'].each do |username|
        User.create!(
          :email    => "#{username}@bitacora.com",
          :password => '123456',
          :password_confirmation => '123456'
        )
      end
    end
  end
end

