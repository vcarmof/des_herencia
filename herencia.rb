class Appointment 
    attr_accessor :location, :purpose, :hour, :min

    def initialize (location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end
end


class MonthlyAppointment < Appointment
    attr_accessor :day

    def initialize (location, purpose, hour, min, day)
        super(location, purpose, hour, min)
        @day = day
    end

    def occurs_on? (day)
        if self.day == day
            true
        else
            false
        end
    end

    def to_s()
        puts "Reunión mensual en #{self.location} sobre #{self.purpose} el día #{self.day} a la(s) #{self.hour}:#{self.min}"
    end
end

class DailyAppointment < Appointment
    def occurs_on? (hour, min)
        if self.hour == hour && self.min == min
            true
        else
            false
        end
    end

    def to_s()
        puts "Reunión diaria en #{self.location} sobre #{self.purpose} a la(s) #{self.hour}:#{self.min}"
    end
end

class OneTimeAppointment < Appointment
    attr_accessor :day, :month, :year

    def initialize(location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)
        @day = day
        @month = month
        @year = year
    end

    def  occurs_on? (day, month, year)
        if self.day == day && sefl.month == month && self.year == year
            true
        else
            false
        end
    end

    def to_s()
        puts "Reunión única en #{self.location} sobre #{self.purpose} el #{self.day}/#{self.month}/#{self.year} a la(s) #{self.hour}:#{self.min}"
    end
end

mes = MonthlyAppointment.new('Santiago', 'Ruby', 12, 45, 23)
dia = DailyAppointment.new('Talagante', 'Club', 19, 30)
now = OneTimeAppointment.new('El monte', 'Java', 21, 30, 25, 03, 2021)
mes.to_s()
dia.to_s()
now.to_s()



