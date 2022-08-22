class Corrector
  def correct_name(name)
    capital_name = name.capitalize
    capital_name.slice(0, 10)
  end
end
