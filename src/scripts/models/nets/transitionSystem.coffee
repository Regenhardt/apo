class @TransitionSystem extends @Net
	constructor: (netObject) ->
		@type = "lts"
		super(netObject)

	addState: (point) ->
		state = new State(point)
		@addNode(state)
