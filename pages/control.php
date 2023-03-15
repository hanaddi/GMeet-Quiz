<script>
// const pageBaseURL='http://localhost:8880/gmeetchat/pages/question.php?id_question=1&id_quiz=1&id_session=1';
const pageBaseURL='http://localhost:8880/gmeetchat/pages/';
const ls_slide = "gmeet_chat_slide";
function setSlide(file='question.php'){
	let url = pageBaseURL + file;
	window.localStorage.setItem(ls_slide, url);
}

setSlide('question.php?id_question=1&id_quiz=1&id_session=1');


/*

."C:\Program Files\Google\Chrome\Application\chrome.exe" --app="http://localhost:8880/gmeetchat/pages/question.php?id_question=1&id_quiz=1"

*/
</script>