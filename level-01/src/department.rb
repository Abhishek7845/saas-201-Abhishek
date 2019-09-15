class Department
    attr_accessor :section,
                  :name, 
                  :students, 
                  :rolls, 
                  :number, 
                  :secA, 
                  :secB, 
                  :secC, 
                  :sect1, 
                  :sect2, 
                  :sect3
    def initialize(dept)
        self.section={'A'=>10,'B'=>10,'C'=>10}
        self.name=dept
        self.secA=[]
        self.secB=[]
        self.secC=[]
        self.sect1=[]
        self.sect2=[]
        self.sect3=[]
        self.students=[]
        self.rolls=[]
        self.number=30
    end

    def get_name
        return self.name
    end

    def get_section_name(section)
        if nil !=self.section[section]
            return self.section[section]
        else
            return nil
        end
    end

    def get_stud_info(student_name)
        ch=""

        self.secA.each_with_index do |student,i|
            if student == student_name
                ch=ch+"#{student_name} - #{self.name} - Section #{self.sect1[i][3]} - #{self.sect1[i]}"
            end
        end

        self.secB.each_with_index do |student,i|
            if student == student_name
                ch=ch+"#{student_name} - #{self.name} - Section #{self.sect1[i][3]} - #{self.sect2[i]}"
            end
        end

        self.secC.each_with_index do |student,i|
            if student == student_name
                ch=ch+"#{student_name} - #{self.name} - Section #{self.sect3[i][3]} - #{self.sect3[i]}"
            end
        end
        return ch
    end

    def get_department_name(student_name)
        cnt=0
        self.students.each do |student|
            if student == student_name
                cnt=cnt+1
            end
        end
        if cnt>0
            return self.name
        else
            return nil
        end     
    end

    def get_dep_view
        ch="List of students:"
             self.students.each_index do |i|
                ch=ch+ "#{self.students[i]} - #{self.rolls[i]}" +"\n";
             end
        return ch
    end

    def section_view(section)
        ch="List of students:"
        if section=='A'
            self.secA.each_index do |i|
                ch=ch+"#{self.secA[i]} - #{self.sect1[i]}" +"\n";
            end
        elsif section=='B'
            self.secB.each_index do |i|
                ch=ch+"#{self.secB[i]} - #{self.sect2[i]}" + "\n";
            end
        else
            self.secC.each_index do |i|
                ch=ch+"#{self.secC[i]} - #{self.sect3[i]}" + "\n";
            end
        end
        return ch
    end

    def delete(student_name)
        self.students.each_with_index do |student,i|
            if student == student_name
                self.students.delete(student_name)
                self.number=self.number+1
                self.students.sort!
                self.rolls.delete_at(i)
            end
        end
        self.secA.each_with_index do |student,i|
            if student==student_name
                self.secA.delete(student_name)
                self.sect1.delete_at(i)
                self.secA.sort!
                self.section['A']=self.section['A']+1
            end
        end
        self.secB.each_with_index do |student,i|
            if student==student_name
                self.secB.delete(student_name)
                self.sect1.delete_at(i)
                self.secB.sort!
                self.section['B']=self.section['B']+1
            end
        end
        self.secC.each_with_index do |student,i|
            if student==student_name
                self.secC.delete(student_name)
                self.sect1.delete_at(i)
                self.secC.sort!
                self.section['C']=self.section['C']+1
            end
        end
    end

    def enroll(student_name)
        if self.section['A'] >=1
            number=10-self.section['A']+1
            if section['A']==1
                number=self.name[0..2]+'A'+number.to_s
            else
                number=self.name[0..2]+'A0'+number.to_s
            end
            self.students[30-self.number]=student_name
            self.rolls[30-self.number]=number
            self.secA[10-self.section['A']]=student_name
            self.sect1[10-self.section['A']]=number
            self.secA.sort!
            self.students.sort!
            self.section['A']=self.section['A']-1
            self.number=self.number-1
        elsif self.section['B'] >=1
            number=10-self.section['B']+1
            if section['B']==1
                number=self.name[0..2]+'B'+number.to_s
            else
                number=self.name[0..2]+'B0'+number.to_s
            end
            self.students[30-self.number]=student_name
            self.rolls[30-self.number]=number
            self.secB[10-self.section['B']]=student_name
            self.sect2[10-self.section['B']]=number
            self.secB.sort!
            self.students.sort!
            self.section['B']=self.section['B']-1
            self.number=self.number-1
        elsif self.section['C']>=1
            number=10-self.section['C']+1
            if section['C']==1
                number=self.name[0..2]+'C'+number.to_s
            else
                number=self.name[0..2]+'C0'+number.to_s
            end
            self.students[30-self.number]=student_name
            self.rolls[30-self.number]=number
            self.secC[10-self.section['C']]=student_name
            self.sect3[10-self.section['C']]=number
            self.secC.sort!
            self.students.sort!
            self.section['C']=self.section['C']-1
            self.number=self.number-1
        else
            number=0
        end
        return number
    end
    def enroll1(student_name,section)
        if  section=='A'
            number=10-self.section['A']+1
            if section['A']==1
                number=self.name[0..2]+'A'+number.to_s
            else
                number=self.name[0..2]+'A0'+number.to_s
            end
            self.students[30-self.number]=student_name
            self.rolls[30-self.number]=number
            self.secA[10-self.section['A']]=student_name
            self.sect1[10-self.section['A']]=number
            self.secA.sort!
            self.students.sort!
            self.section['A']=self.section['A']-1
            self.number=self.number-1
        elsif section=='B'
            number=10-self.section['B']+1
            if section['B']==1
                number=self.name[0..2]+'B'+number.to_s
            else
                number=self.name[0..2]+'B0'+number.to_s
            end
            self.students[30-self.number]=student_name
            self.rolls[30-self.number]=number
            self.secB[10-self.section['B']]=student_name
            self.sect2[10-self.section['B']]=number
            self.secB.sort!
            self.students.sort!
            self.section['B']=self.section['B']-1
            self.number=self.number-1
        elsif section=='C'
            number=10-self.section['C']+1
            if section['C']==1
                number=self.name[0..2]+'C'+number.to_s
            else
                number=self.name[0..2]+'C0'+number.to_s
            end
            self.students[30-self.number]=student_name
            self.rolls[30-self.number]=number
            self.secC[10-self.section['C']]=student_name
            self.sect3[10-self.section['C']]=number
            self.secC.sort!
            self.students.sort!
            self.section['C']=self.section['C']-1
            self.number=self.number-1
        else
            number=0
        end
        return number
    end
end