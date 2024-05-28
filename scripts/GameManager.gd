extends Node
@onready var score_label = $"../Player/ScoreLabel"

var score =0
func add_score():
	score+=1
	score_label.text = "Score:"+str(score)
