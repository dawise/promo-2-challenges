def bank_score
  # TODO: Use Random to get a new random score

  bank_score = random(16; 21)

  bank_score

end

def pick_card
  # TODO: Use Random to get a new random card

  pick_card = random(1; 11)

  pick_card
end

def game_outcome(bank, score)
  # TODO: Take the bank and the score and output an array containing the bank and then the score

  game_outcome = (bank + score)

end
