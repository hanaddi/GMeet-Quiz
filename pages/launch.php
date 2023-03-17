<script>
let ls_slide = "gmeet_chat_slide";
// window.resizeTo(840,560);
window.resizeTo(840,640);
window.onload = () => {
	url = window.localStorage.getItem(ls_slide);
	if(url && url != window.location.href){
		window.location = url;
	}
};

/*

."C:\Program Files\Google\Chrome\Application\chrome.exe" --app="http://localhost:8880/gmeetchat/pages/question.php?id_question=1&id_quiz=1"
."C:\Program Files\Google\Chrome\Application\chrome.exe" --app="http://localhost:8880/gmeetchat/pages/launch.php"

*/
</script>