1. Using the new/save syntax, create a student with a first and last name and an age
  user = User.new(first_name: "Rachel", last_name: "Routson", age: 31)

2. Save the student to the database
  user.save

3. Using the find/set/save syntax update the student's first name to Myles
  user.first_name = "Miles"
  user.save

4. Delete the student (where first_name is Myles)

  user.destroy

5. In your model, validate that every Student's last name is unique
  <pre><code>class User < ActiveRecord::Base
    validates_presence_of :last_name
  end</code></pre>

6. In your model, validate that every Student has a first and last name that is longer than 4 characters
  <pre><code>class User < ActiveRecord::Base
              validates :first_name, :last_name
                presence: true,
                length {minimum: 4}
              end</code></pre>


7. Validate that every first and last name cannot be empty
  in the code from question 6- presence: true

8. Create a migration that adds a column with a type of string called favorite_color to the students table (don't forget to run rake db:migrate after and for this question write the command in terminal to generate this migration)
  <pre><code>class AddColorToUsers < ActiveRecord::Migration
              def change
              add_column :users, :favorite_color, :string
              end
            end</code></pre>


9. Using the create syntax create a student named John Doe who is 23 years old and has a favorite_color of purple
  student = User.create(first_name: "John", last_name: "Doe", age: 23, favorite_color: "purple")

10. Show if this new student entry is valid
  User.where(first_name: "John")

11. Show the number of errors for this student instance
  <pre><code>
  <User id: nil, last_name: "Doe", last_name: nil, age: nil, created_at: nil, updated_at: nil, favorite_color: nil>, @messages={:last_name=>["is too short (minimum is 4 characters)"]}> </code></pre>

12. Using update, Change John Doe's name to Martin Fowler
  student.first_name = "Martin"
  student.save
  student.last_name = "Fowler"
  student.save

12. Save Martin Fowler
  student.save

13. Find all of the Students
  User.all

14. Find the student with an ID of 128 and if it does not exist, make sure it returns nil and not an error
    Student.find_by_id(128)

15. Find the first student in the table
  Student.first
16. Find the last student in the table
  Student.last
17. Find the student with the last name of Fowler
  Student.where(last_name: "Fowler")
18. Find all of students who have the first name of Martin and a favorite color of red
  Student.where(favorite_color: "red", first_name: "Martin")
19. Find all of the students and limit the search to 5 students, starting with the 2nd student and finally, order the students in alphabetical order
  Student.offset(2).limit(5).order(last_name: asc)
20. Delete Martin Fowler (but first look up who he is!)
  Student.where(first_name: Martin")
  martin = _
  martin.destroy
20. Delete all of the students
  Student.destroy

