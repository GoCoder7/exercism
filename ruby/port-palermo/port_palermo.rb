module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[..3].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    cargo_type = ship_identifier.to_s[..2]

    %w[OIL GAS].include?(cargo_type) ? :A : :B
  end
end
