require 'pry'

class School
    attr_reader :name
    attr_accessor :roster, :add_student

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        # if roster[grade] == false....then set to []
        @roster[grade] ||= []
        @roster[grade] << name        
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = {}
        @roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end
end