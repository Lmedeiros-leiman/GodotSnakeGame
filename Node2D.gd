extends Node2D

#dicionario
var TILEMAP = {
	#tijolo vazio.
	null: Vector2(3,3),
	"": Vector2(3,3),
	"empty": Vector2(3,3),
	#maça
	"apple":Vector2(0,0),
	#corpo
	"snakebodyvertical":Vector2(1,2),
	"snakebodyhorizontal":Vector2(2,2),
	#cabeça
	"snakefaceup":Vector2(1,1),
	"snakefacedown":Vector2(2,1),
	"snakefaceleft":Vector2(0,2),
	"snakefacerigth":Vector2(3,1),
	# cantos
	"snaketopleftcorner":Vector2(3,0),
	"snaketoprightcorner":Vector2(1,0),
	"snakebottomleftcorner":Vector2(0,1),
	"snakebottomrightcorner":Vector2(2,0),
	#fins da cobra
	"snakeendup":Vector2(3,2),
	"snakeenddown":Vector2(0,3),
	"snakeendleft":Vector2(1,3),
	"snakeendright":Vector2(2,3),
}


# objetos da cena
@onready var camera = $Camera2D;
@onready var tileMap = $TileMap;


# variaveis importantes
var W_maxima = ProjectSettings.get("display/window/size/viewport_width") / 40 # 26
var H_maxima = ProjectSettings.get("display/window/size/viewport_height") / 40 # 20
var grid_size : Vector2i = Vector2i(W_maxima,H_maxima)
var grid: Array


func restart_game() -> void:
	grid = []

	for x in range(grid_size.x):
		grid.append([])
		for y in range(grid_size.y):
			grid[x].append(null)
	
	# 
	# players player on the center.
	grid[ (grid.size()/2)   ][ (grid[grid.size()/2].size()/2) ] = "snakefacerigth"
	grid[grid.size()/2 -1][grid[grid.size()/2].size()/2] = "snakebodyhorizontal"
	grid[grid.size()/2 -2][grid[grid.size()/2].size()/2] = "snakeendright"
			


func redraw_arena() -> void:

	#grid[x][y]


	for i in (grid.size()):
		for j in (grid[i].size()):

			tileMap.set_cell(
				0,
				Vector2(i,j),
				0,
				TILEMAP[grid[i][j]]



		)

func move_player(movement) -> bool:


	return true


func _ready(): 
	restart_game()
	redraw_arena()

	
	pass 

func _process(_delta):
	# pegar e validar movimento
	# aplicar movimento
	# atualizar pontuação e similares.

	# colocar um delay de 1s? menos?
	# atualizar tela
	pass



