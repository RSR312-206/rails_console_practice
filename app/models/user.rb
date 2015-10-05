class User < ActiveRecord::Base
  validates :first_name, :last_name,
  presence: true,
  length: {minimum: 4}
  excluded_names = ["Elie Schoppik", "Colt Steele", "Tim Garcia", "Chirs Burkhart"],
  validate :user_exclusions

  private

  def user_exclusions
    excluded_names.each do |name|
      if name.split(' ')[0] == :first_name && name.split(' ')[1] == :last_name
        errors.add(first_name: "this is a restricted name")
        errors.add(last_name: "this is a restricted name")
      end
    end
  end

end
