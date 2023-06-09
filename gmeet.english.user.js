// ==UserScript==
// @name         GMeet Chat Logger
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  try to take over the world!
// @author       You
// @match        *://meet.google.com/*
// @icon         https://www.google.com/s2/favicons?sz=64&domain=google.com
// @grant        none
// ==/UserScript==

// run-at document-idle

(function() {
    'use strict';

	var waiting = function(){
		let btn = document.querySelector("[aria-pressed][aria-label='Chat with everyone']");
		if(btn){
			console.log("Load logger");
			return ChatOpener();
		}

		window.setTimeout(waiting, 2000);
	}
	waiting();

	var ChatOpener = function(){
		var MutationObserver = window.MutationObserver || window.WebKitMutationObserver || window.MozMutationObserver;

		// click chat button [open]
		try{document.querySelector("[aria-pressed='false'][aria-label='Chat with everyone']").click();}catch(e){}
		// keep open
		try{observerChat.disconnect();}catch(e){}
		try{openChat.clearTimeout();}catch(e){}
		var chaticon = document.querySelector("[aria-pressed][aria-label='Chat with everyone']");
		var observerChat = new MutationObserver(function(mutations) {
			mutations.forEach(function(mutation) {
				if (mutation.type == 'attributes') {
					try{openChat.clearTimeout();}catch(e){}
					openChat = window.setTimeout(function(ev){
						let btn = document.querySelector("[aria-pressed='false'][aria-label='Chat with everyone']");
						if(btn){
							btn.click();
						}
					}, 500);
				}
			});
		});

        if(0)
		observerChat.observe(chaticon, {
			attributes: true,
			childList: true,
			characterData: true
		});
		window.setTimeout(LogLoader, 1000);
	}

	var LogLoader = function(){
		var MutationObserver = window.MutationObserver || window.WebKitMutationObserver || window.MozMutationObserver;
		var yourEls = [];
		var yourTitle = null;
		function checkYourChat(text, index, title=null, altTitle=null, me=false){
			if(yourTitle instanceof Node){
				if(!document.body.contains(yourTitle)){
					yourTitle = title;
				}
			}
			if(index==0 && title != yourTitle){
				yourEls = [];
				yourTitle = title;
			}
			if(yourEls[index] != undefined){
				// duplicated
				return;
			}
			yourEls[index] = text;
			// console.log(text);
			altTitle = altTitle || title;
			chatHandler(text, index, altTitle);
		}

		try{observer.disconnect();}catch(e){}
		var chatbox = document.querySelector("[aria-live]");

		var observer = new MutationObserver(function(mutations) {
			mutations.forEach(function(mutation) {
				if (mutation.type === 'childList') {

					// new nodes
					let newChats = [];
					mutation.addedNodes.forEach(function(node){
						if(node.dataset.senderName!==undefined){
							// new chat
							let childNode = node.querySelector("[data-message-text]");
							if(node.dataset.senderName!="You" || node.dataset.senderId!="_self_"){
								// chatHandler(childNode.innerText, 0, node);
								checkYourChat(childNode.innerText, 0, node);
							}else{
								checkYourChat(childNode.innerText, 0, node, null, true);
							}
						}else
						if(node.dataset.messageText!==undefined){
							// resuming chat
							let nodeTitle = node.parentNode.parentNode;
							let chatIndex = Array.prototype.indexOf.call(node.parentNode.children, node);
							if(nodeTitle.dataset.senderName!="You" || nodeTitle.dataset.senderId!="_self_"){
								// chatHandler(node.innerText, chatIndex, nodeTitle);
								checkYourChat(node.innerText, chatIndex, nodeTitle);
							}else{
								checkYourChat(node.innerText, chatIndex, nodeTitle, null, true);
							}
						}
					});
				}
			});
		});

		observer.observe(chatbox, {
			attributes: true,
			childList: true,
			characterData: true,
			subtree: true
		});
	}

	var chatHandler = function(text, index, nodeTitle=null){
		if(nodeTitle && nodeTitle.dataset){
			console.log( nodeTitle.dataset.timestamp, nodeTitle.dataset.senderName, text, index);
			try{
                let time = nodeTitle.dataset.timestamp/(1000*60*60*24)|0;
                let id = `${nodeTitle.dataset.timestamp}_${index}_${nodeTitle.dataset.senderName}`;
				//let i = new Image();
				//i.src = `http://localhost:8880/logger/log.php?fname=chat.${time}.log&text=${nodeTitle.dataset.timestamp}+${nodeTitle.dataset.senderName}+${text}`;

				//window.fetch(`http://localhost:8880/logger/log.php?id=${id}&fname=chat.${time}.log&text=${nodeTitle.dataset.timestamp}+${encodeURIComponent(nodeTitle.dataset.senderName)}+${encodeURIComponent(text)}`,{
                //    headers:{
                //        //"X-Ini-Asli": "iya"
                //    }
                //});

                //generate label
                let a=new Date();
                let label = `${window.location.pathname}_${(a.getMonth()+1)}_${a.getDate()}`;

				window.fetch(`http://localhost:8880/gmeetchat/submit.php`,{
                    method: 'POST',
                    headers:{
                        'Content-Type': 'application/x-www-form-urlencoded',
                        //"X-Ini-Asli": "iya"
                    },
                    body: `label=${label}&ref=${id}&time=${nodeTitle.dataset.timestamp}&name=${encodeURIComponent(nodeTitle.dataset.senderName)}&content=${encodeURIComponent(text)}`
                });
			}catch(ev){}
		}else{
			console.log( text, index);
		}
	}
})();