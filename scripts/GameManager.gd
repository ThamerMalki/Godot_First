extends Node
@onready var score_label_2 = $"../CanvasLayer/ScoreLabel2"

var score =0
func add_score():
	score+=1
	score_label_2.text = "Score:"+str(score)
