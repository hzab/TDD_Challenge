require "csv"
require "pry"
require_relative "person.rb"


individual_tax_information = []
CSV.foreach("tax_information.csv", headers: true) do |row|
  individual_tax_information << Person.new(row["first_name"],row["last_name"],row["annual_income"].to_f,row["tax_paid"].to_f,row["tax_rate"].to_f)
end

def format_currency(currency)
  sprintf('$%.2f', currency)
end


individual_tax_information.each do |row|
  i_taxes = row.initial_taxes
  refund_status = row.refund?
    if refund_status > 0
      puts "#{row.first_name} #{row.last_name} will receive a refund of #{format_currency(refund_status)}"
    elsif refund_status < 0
      puts "#{row.first_name} #{row.last_name} has a tax liability of #{format_currency(refund_status.abs)}"
    else
       puts "#{row.first_name} #{row.last_name} does not have any tax liability or refund."
    end
end

