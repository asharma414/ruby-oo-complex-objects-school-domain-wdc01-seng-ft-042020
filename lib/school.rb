class School

    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if roster[grade]
            @roster[grade].push(student)
        else 
            roster[grade] = [student]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, val|
            @roster[key] = val.sort
        end
        @roster
    end
end

        