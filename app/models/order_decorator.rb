require "reference_number"

Order.class_eval do

  # this returns a finnish reference number, as used in the finnish bank system 
  # for referencing payments to bills.
  def viite
    base = self.number[1 .. -1]
    ReferenceNumber.new(base).to_s
  end
end
