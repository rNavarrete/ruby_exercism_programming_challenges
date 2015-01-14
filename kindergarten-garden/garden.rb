require 'minitest/pride'

class Garden
  attr_reader :garden_first_row, :garden_second_row
  attr_accessor :students_plants

  def initialize(string)
    @students_plants = []
    string_to_garden_row_converter(string)
  end

  def string_to_garden_row_converter(string)
    partitioned_string = string.partition(/\n/)
    @garden_first_row = partitioned_string[0].chars
    @garden_second_row = partitioned_string[2].chars
  end

  def alice
    student_row_idexes("alice")
  end

  def bob
    student_row_idexes("bob")
  end

  def charlie
    student_row_idexes("charlie")
  end

  def student_row_idexes(student_name)
    students_plants.clear

    case student_name
    when "alice"
      plant_selector(0, 1)
    when "bob"
      plant_selector(2, 3)
    when "charlie"
      plant_selector(4, 5)
    end
  end

  def plant_selector(first_index, second_index)
    students_plants << vegetable_types(garden_first_row[first_index])
    students_plants << vegetable_types(garden_first_row[second_index])
    students_plants << vegetable_types(garden_second_row[first_index])
    students_plants << vegetable_types(garden_second_row[second_index])
  end

  def vegetable_types(type)
    case type
    when "R"
      :radishes
    when "C"
      :clover
    when "G"
      :grass
    when "V"
      :violets
    end
  end
end
