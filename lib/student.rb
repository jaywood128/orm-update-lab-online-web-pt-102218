require_relative "../config/environment.rb"

class Student

  attr_accessor :name, :grade, :id

  def initialize(name, grade, id = nil)
    @id = id
    @name = name
    @grade = grade
  end

  def self.create_table

    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students(
        id INTEGER PRIMARY KEY
        name INTEGER,
        grade INTEGER
      )
          SQL
      DB[:conn].execute(sql)
  end

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]


end
