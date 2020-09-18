require 'pry'

class Doctor 
  attr_accessor :name, :patient
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all 
    @@all
  end
  
  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self 
    end
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def patients
    self.appointments.patient 
    #binding.pry 
  end
end