(($) ->
	`"use strict"`

	# # example usage
	# <span class="xxcountdown" data-timestamp="1442923456"></span>
	# <span class="xxcountdown" data-seconds="60"></span>

	$.fn.xxcountdown = (o) ->
		obj = @
		@opts = $.extend({
			dayText				: ' 天 '
			daysText			: ' 天 '
			hourText			: ':'
			hoursText			: ':'
			minuteText		: ':'
			minutesText		: ':'
			secondText		: ''
			secondsText		: ''
			finishText		: '---'
			displayDays		: true
			displayHours	: true
			displayMinutes: true
			displaySeconds: true
			callback			: ->
				return
		}, o)

		@init = ->
			if @data('seconds')
				count = @data('seconds')
				count += @current()
			if @data('timestamp') then count = @data('timestamp')
			if count <= @current() then @finish() else @countdown count

		@countdown = (target) ->
			_this = @
			interval = setInterval ->
				if _this.current() >= target
					clearInterval interval
					_this.finish()
				else
					_this.updateText target - _this.current()
			, 100

		@finish = ->
			@updateText @opts.finish
			@opts.callback()

		@updateText = (n) ->
			if typeof(n) is 'number'
				n = @formatTime n
			@text n
			document.title = n

		@formatTime = (n) ->
			d = Math.floor(n / 86400)
			h = Math.floor((n - (d * 86400)) / 3600)
			m = Math.floor((n - (d * 86400) - (h * 3600)) / 60)
			s = Math.round(n - (d * 86400) - (h * 3600) - (m * 60))
			h = if h < 10 then '0' + h else h
			m = if m < 10 then '0' + m else m
			s = if s < 10 then '0' + s else s
			result = ''
			if @opts.displayDays and d > 0
				result += d + (if d <= 1 then @opts.dayText else @opts.daysText)
			if @opts.displayHours
				result += h + (if h <= 1 then @opts.hourText else @opts.hoursText)
			if @opts.displayMinutes
				result += m + (if m <= 1 then @opts.minuteText else @opts.minutesText)
			if @opts.displaySeconds
				result += s + (if s <= 1 then @opts.secondText else @opts.secondsText)
			result

		@current = ->
			Math.floor(Date.now() / 1000)

		@init()

) jQuery
