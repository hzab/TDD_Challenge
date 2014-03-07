class Person
  def initialize(first_name, last_name, income, paid, rate)
    @first_name = first_name
    @last_name = last_name
    @income = income
    @paid = paid
    @rate = rate
  end

  attr_reader :first_name
  attr_reader :last_name
  attr_reader :income
  attr_reader :paid
  attr_reader :rate

  def initial_taxes
    income * (rate * 0.01)
  end

  def refund?
    paid - initial_taxes
  end

  def refund_summary
    "#{first_name} #{last_name} will receive a refund of"
  end

  def liability_summary
    "TAX CHEAT"
  end
end
