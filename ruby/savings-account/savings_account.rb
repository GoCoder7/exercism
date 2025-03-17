module SavingsAccount
  def self.interest_rate(balance)
    if !balance.negative? && balance < 1000
      0.5
    elsif balance.positive? && balance >= 1000 && balance < 5000
      1.621
    elsif balance.positive? && balance >= 5000
      2.475
    elsif balance.negative?
      3.213
    end
  end

  def self.annual_balance_update(balance)
    balance * (1 + (interest_rate(balance) / 100))
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    if current_balance == desired_balance
    elsif !current_balance.negative? && current_balance < desired_balance
      until current_balance >= desired_balance
        current_balance = annual_balance_update(current_balance)
        years += 1
      end
    elsif current_balance.negative && current_balance > desired_balance
      until current_balance <= desired_balance
        current_balance = annual_balance_update(current_balance)
        puts current_balance
        years += 1
      end
    else
      raise StandardError, 'impossible'
    end
    years
  end
end
