const ls_slide = "gmeet_chat_slide";
const ls_questions = "gmeet_chat_questions";
// window.localStorage.setItem(ls_slide, window.location.href);
window.addEventListener('storage', () => {
	url = window.localStorage.getItem(ls_slide);
	if(url != window.location.href){
		window.location = url;
	}
});


AbortSignal.timeout ??= function timeout(ms) {
	const ctrl = new AbortController()
	setTimeout(() => ctrl.close(), ms)
	return ctrl.signal
}


let question_slides = [];
try{
	let q = window.localStorage.getItem(ls_questions)
	q = JSON.parse(q)
	question_slides = q

}catch(e){}


function btnNext(id_question){
	if(question_slides[id_question]){
		if(question_slides[id_question].next){
			try{
				let b_next = document.querySelector("#b_next");
				b_next.style.removeProperty("display");
				b_next.onclick = function(){
					let search = window.location.search.replace(/id_question=[0-9]+/, "id_question="+question_slides[id_question].next)
					fetch('../opensession.php'+search)
					.then(re=>window.location='question.php'+search)
				};
			}catch(e){}
		}
	}
}