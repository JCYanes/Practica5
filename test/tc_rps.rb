require 'rps'
require 'test/Unit'

class TestRockPaperScissosr < Test::Unit::TestCase #mira todos los test_

	def setup
		#antes de cada prueba
	end

	def teardown
		#despues de cada prueba
	end

	def test_wrong_play
		assert_raise (SyntaxError){RockPaperScisor.play('fallo')}#cualquier cosa que no sea valida.
	end

	def test_variety
		answers= []
		20.times do
			answers.push RockPaperScissors.throw
		end	
	end

end

