const ls_slide = "gmeet_chat_slide";
const ls_questions = "gmeet_chat_questions";
// window.localStorage.setItem(ls_slide, window.location.href);
var f_storage = [];
window.addEventListener('storage', (ev) => {
	for(let f of f_storage){
		f(ev);
	}

	if(ev.key == ls_slide){
		url = window.localStorage.getItem(ls_slide);
		if(url != window.location.href){
			window.location = url;
		}
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
					let searchParams = new URLSearchParams(location.search)
					searchParams.set('id_question', question_slides[id_question].next)

					let nextQuestion = question_slides[question_slides[id_question].next]
					if (nextQuestion){
						searchParams.set('id_session', nextQuestion.id_session)
						searchParams.set('id_quiz', nextQuestion.id_quiz)
					}
					// let search = window.location.search.replace(/id_question=[0-9]+/, "id_question="+question_slides[id_question].next)
					let search = '?'+searchParams.toString()
					fetch('../opensession.php'+search)
					.then(re=>window.location='question.php'+search)
				};
			}catch(e){}
		}
	}
}

function btnStart(){
	Object.values(question_slides).filter(e=>!e.prev).map(q=>{
		try{
			let b_start = document.querySelector("#b_start");
			b_start.style.removeProperty("display");
			b_start.onclick = function(){
				let searchParams = new URLSearchParams(location.search)
				searchParams.set('id_question', q.id)
				searchParams.set('id_session', q.id_session)
				searchParams.set('id_quiz', q.id_quiz)
				let search = '?'+searchParams.toString()
				fetch('../opensession.php'+search)
				.then(re=>window.location='question.php'+search)
			}
		}catch(e){}
	})
}
