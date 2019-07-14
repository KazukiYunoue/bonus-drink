class BonusDrink
  def self.total_count_for(amount)
    raise ArgumentError.new("Negative amount size") unless amount >= 0

    total_earned_bottles = empty_bottles = amount
    while get_bonus_by?(empty_bottles) do
      total_earned_bottles += get_bottles_and_remaining_empty_bottles_by(empty_bottles)[0]
      empty_bottles = get_bottles_and_remaining_empty_bottles_by(empty_bottles).sum
    end
    total_earned_bottles
  end

  def self.get_bottles_and_remaining_empty_bottles_by(empty_bottles)
    empty_bottles.divmod(3)
  end

  def self.get_bonus_by?(empty_bottles)
    get_bottles_and_remaining_empty_bottles_by(empty_bottles)[0] > 0 ?
      true : false
  end
end
