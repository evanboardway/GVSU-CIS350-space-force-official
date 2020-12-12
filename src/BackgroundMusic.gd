extends AudioStreamPlayer

var muted = false

func _ready():
	play()

func _process(_delta):
	if !playing and !muted:
		play()

