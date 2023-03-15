let ls_slide = "gmeet_chat_slide";
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