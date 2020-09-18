class Doctor 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def appointments
    Appointments.all.collect do |appt|
      appt.doctor == self 
    end
  end
end