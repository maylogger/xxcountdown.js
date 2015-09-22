# xxcountdown.js

### About
改善一般以 setTimeout 或 setInterval 製作倒數程式，當倒數頁面處於背景狀態時造成的延遲狀況



### How to use
需搭配 jquery 使用，並在頁面中嵌入 xxcountdown.js

在 html 設定要倒數的元件，以 data-timestamp 設置倒數 target 的 timestamp；或以 data-seconds 設定要倒數的秒數，例如：
```
<span class="xxcountdown" data-timestamp="1442923456"></span>
<span class="xxcountdown" data-seconds="60"></span>
```

然後以 jquery 啟用 plugin，例如：
```
$('.xxcountdown').xxcountdown()
```



### Options
####dayText
	說明 : 設定天數文字
	類型 : String
	預設值 : ' 天 '
####daysText
	說明 : 設定天數(複數)文字
	類型 : String
	預設值 : ' 天 '
####hourText
	說明 : 設定小時文字
	類型 : String
	預設值 : ':'
####hoursText
	說明 : 設定小時(複數)文字
	類型 : String
	預設值 : ':'
####minuteText
	說明 : 設定分鐘文字
	類型 : String
	預設值 : ':'
####minutesText
	說明 : 設定分鐘(複數)文字
	類型 : String
	預設值 : ':'
####secondText
	說明 : 設定秒數文字
	類型 : String
	預設值 : ''
####secondsText
	說明 : 設定秒數(複數)文字
	類型 : String
	預設值 : ''
####finishText
	說明 : 設定倒數完成後顯示的文字
	類型 : String
	預設值 : '---'
####displayDays
	說明 : 是否顯示天數
	類型 : Boolean
	預設值 : true
####displayHours
	說明 : 是否顯示小時
	類型 : Boolean
	預設值 : true
####displayMinutes
	說明 : 是否顯示分鐘
	類型 : Boolean
	預設值 : true
####displaySeconds
	說明 : 是否顯示秒數
	類型 : Boolean
	預設值 : true
####callback
	說明：倒數結束後的 callback function



### Options example
```
$('.xxcountdown').xxcountdown({
	"displayDays":false,
	"hourText":" 時 ",
	"hoursText":" 時 ",
	"minuteText":" 分 ",
	"minutesText":" 分 ",
	"secondText":" 秒",
	"secondsText":" 秒",
	"callback": function(){
		alert("Time's up!")
	}
})
```
