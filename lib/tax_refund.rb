require "csv"
require "pry"
require_relative "person.rb"


individual_tax_information = []
CSV.foreach("tax_information.csv", headers: true) do |row|
  individual_tax_information << Person.new(row["first_name"],row["last_name"],row["annual_income"].to_f,row["tax_paid"].to_f,row["tax_rate"].to_f)
end

individual_tax_information.each do |row|
  i_taxes = row.initial_taxes
  refund_status = row.refund?
    if refund_status > 0
      binding.pry
      individual_tax_information.refund_summary
    elsif refund_status < 0
      individual_tax_information.liability_summary
    else
      puts "THIS DOESN'T HAPPEN"
    end
end

