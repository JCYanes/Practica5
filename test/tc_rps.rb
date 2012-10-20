require 'rps'
require 'test/Unit'

class TestRockPaperScissosr < Test::Unit::TestCase #mira todos los test_

	def setup
		#antes de cada prueba
	end

	def teardown
		#despues de cada prueba
	end
	def test_play
		30.times do
			assert correct_answer(RockPaperScissors.play('scissors'))
		end

		30.times do
			assert correct_answer(RockPaperScissors.play('paper'))
		end

		30.times do
			assert correct_answer(RockPaperScissors.play('rock'))
		end

	end
	def test_wrong_play
		assert_raise (SyntaxError){RockPaperScisor.play('fallo')}			#cualquier cosa que no sea valida.
	end

	def correct_answer(x)
		return true if x == /There is a tie/
		return true if x == /Computer win: (\w+) defeats (\w+)/ and RockPaperScissors.defeat[$1.to_sym] == $2.to_sym
		return true if x == /Well done you win: (\w+) defeats (\w+)/ and RockPaperScissors.defeat[$1.to_sym] == $2.to_sym
	end
	

	def test_variety
		answers= []
		20.times do
			answers.push RockPaperScissors.throw
		end
		assert (answers.unq.length>=3,"answers.uniq.length={answers.uniq.length}answers.length=!{answer.length}")	
	end

end

