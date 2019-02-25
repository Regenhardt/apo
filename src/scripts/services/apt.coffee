class Apt extends Service
	constructor: ($http) ->

		serverEndpoint = "https://cors-anywhere.herokuapp.com/https://angular-apt.herokuapp.com/api/"

		@getCoverabilityGraph = (pn) ->
			$http.post(serverEndpoint + "coverabilityGraph", {pn: pn})

		@getSynthesizedNet = (lts, options) ->
			$http.post(serverEndpoint + "synthesize", {lts: lts, options: options})

		@examinePn = (pn) ->
			$http.post(serverEndpoint + "examinePn", {pn: pn})

		@examineLts = (lts) ->
			$http.post(serverEndpoint + "examineLts", {lts: lts})

		@normalizeApt = (apt) ->
			$http.post(serverEndpoint + "normalizeApt", {apt: apt})