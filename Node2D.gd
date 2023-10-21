extends Node2D

#dicionario
var TILEMAP = {
	#tijolo vazio.
	null: Vector2(3,3),
	"": Vector2(3,3),
	"empty": Vector2(3,3),
	#maça
	"apple":Vector2(0,0),
	#corpo e cabeça
	"snakebodyvertical":Vector2(1,2),
	"snakebodyhorizontal":Vector2(2,2),
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
var Table = Vector2i(W_maxima,H_maxima)



# Called when the node enters the scene tree for the first time.
func _ready():
	
	for i in Table:
		print(i)

	for i in range((TILEMAP.keys().size())):
		
		tileMap.set_cell(
			0,
			Vector2(i,0),
			0,
			Vector2(TILEMAP[ TILEMAP.keys()[i] ]),
			0
		)

	print(TILEMAP.keys().size() )

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	pass



