!function(e){var n={};function t(r){if(n[r])return n[r].exports;var i=n[r]={i:r,l:!1,exports:{}};return e[r].call(i.exports,i,i.exports,t),i.l=!0,i.exports}t.m=e,t.c=n,t.d=function(e,n,r){t.o(e,n)||Object.defineProperty(e,n,{enumerable:!0,get:r})},t.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},t.t=function(e,n){if(1&n&&(e=t(e)),8&n)return e;if(4&n&&"object"==typeof e&&e&&e.__esModule)return e;var r=Object.create(null);if(t.r(r),Object.defineProperty(r,"default",{enumerable:!0,value:e}),2&n&&"string"!=typeof e)for(var i in e)t.d(r,i,function(n){return e[n]}.bind(null,i));return r},t.n=function(e){var n=e&&e.__esModule?function(){return e.default}:function(){return e};return t.d(n,"a",n),n},t.o=function(e,n){return Object.prototype.hasOwnProperty.call(e,n)},t.p="https://exchange.mediavine.com/",t(t.s=1)}([function(e,n,t){var r,i;
/*!
 * JavaScript Cookie v2.2.1
 * https://github.com/js-cookie/js-cookie
 *
 * Copyright 2006, 2015 Klaus Hartl & Fagner Brack
 * Released under the MIT license
 */!function(o){if(void 0===(i="function"==typeof(r=o)?r.call(n,t,n,e):r)||(e.exports=i),!0,e.exports=o(),!!0){var c=window.Cookies,u=window.Cookies=o();u.noConflict=function(){return window.Cookies=c,u}}}((function(){function e(){for(var e=0,n={};e<arguments.length;e++){var t=arguments[e];for(var r in t)n[r]=t[r]}return n}function n(e){return e.replace(/(%[0-9A-Z]{2})+/g,decodeURIComponent)}return function t(r){function i(){}function o(n,t,o){if("undefined"!=typeof document){"number"==typeof(o=e({path:"/"},i.defaults,o)).expires&&(o.expires=new Date(1*new Date+864e5*o.expires)),o.expires=o.expires?o.expires.toUTCString():"";try{var c=JSON.stringify(t);/^[\{\[]/.test(c)&&(t=c)}catch(e){}t=r.write?r.write(t,n):encodeURIComponent(String(t)).replace(/%(23|24|26|2B|3A|3C|3E|3D|2F|3F|40|5B|5D|5E|60|7B|7D|7C)/g,decodeURIComponent),n=encodeURIComponent(String(n)).replace(/%(23|24|26|2B|5E|60|7C)/g,decodeURIComponent).replace(/[\(\)]/g,escape);var u="";for(var a in o)o[a]&&(u+="; "+a,!0!==o[a]&&(u+="="+o[a].split(";")[0]));return document.cookie=n+"="+t+u}}function c(e,t){if("undefined"!=typeof document){for(var i={},o=document.cookie?document.cookie.split("; "):[],c=0;c<o.length;c++){var u=o[c].split("="),a=u.slice(1).join("=");t||'"'!==a.charAt(0)||(a=a.slice(1,-1));try{var s=n(u[0]);if(a=(r.read||r)(a,s)||n(a),t)try{a=JSON.parse(a)}catch(e){}if(i[s]=a,e===s)break}catch(e){}}return e?i[e]:i}}return i.set=o,i.get=function(e){return c(e,!1)},i.getJSON=function(e){return c(e,!0)},i.remove=function(n,t){o(n,"",e(t,{expires:-1}))},i.defaults={},i.withConverter=t,i}((function(){}))}))},function(e,n,t){e.exports=t(2)},function(e,n,t){"use strict";t.r(n),t.d(n,"Usersync",(function(){return w})),t.d(n,"createUsersyncElement",(function(){return k})),t.d(n,"getAndEncodePartners",(function(){return _})),t.d(n,"getUsersyncUrl",(function(){return S})),t.d(n,"insertElement",(function(){return E})),t.d(n,"insertUserSyncIframe",(function(){return C})),t.d(n,"insertUserSyncPixel",(function(){return U})),t.d(n,"insertScript",(function(){return P})),t.d(n,"createTrackPixelIframeHtml",(function(){return T})),t.d(n,"createTrackPixelHtml",(function(){return O})),t.d(n,"triggerPixel",(function(){return I}));var r=t(0),i=function(e,n,t,r){return new(t||(t=Promise))((function(i,o){function c(e){try{a(r.next(e))}catch(e){o(e)}}function u(e){try{a(r.throw(e))}catch(e){o(e)}}function a(e){var n;e.done?i(e.value):(n=e.value,n instanceof t?n:new t((function(e){e(n)}))).then(c,u)}a((r=r.apply(e,n||[])).next())}))},o=function(e,n){var t,r,i,o,c={label:0,sent:function(){if(1&i[0])throw i[1];return i[1]},trys:[],ops:[]};return o={next:u(0),throw:u(1),return:u(2)},"function"==typeof Symbol&&(o[Symbol.iterator]=function(){return this}),o;function u(o){return function(u){return function(o){if(t)throw new TypeError("Generator is already executing.");for(;c;)try{if(t=1,r&&(i=2&o[0]?r.return:o[0]?r.throw||((i=r.return)&&i.call(r),0):r.next)&&!(i=i.call(r,o[1])).done)return i;switch(r=0,i&&(o=[2&o[0],i.value]),o[0]){case 0:case 1:i=o;break;case 4:return c.label++,{value:o[1],done:!1};case 5:c.label++,r=o[1],o=[0];continue;case 7:o=c.ops.pop(),c.trys.pop();continue;default:if(!(i=c.trys,(i=i.length>0&&i[i.length-1])||6!==o[0]&&2!==o[0])){c=0;continue}if(3===o[0]&&(!i||o[1]>i[0]&&o[1]<i[3])){c.label=o[1];break}if(6===o[0]&&c.label<i[1]){c.label=i[1],i=o;break}if(i&&c.label<i[2]){c.label=i[2],c.ops.push(o);break}i[2]&&c.ops.pop(),c.trys.pop();continue}o=n.call(e,c)}catch(e){o=[6,e],r=0}finally{t=i=0}if(5&o[0])throw o[1];return{value:o[0]?o[1]:void 0,done:!0}}([o,u])}}},c=function(e,n){return i(void 0,void 0,void 0,(function(){var t,r;return o(this,(function(i){switch(i.label){case 0:return window.caches?[4,caches.open("mv")]:[2];case 1:return t=i.sent(),(r=new Headers).append("Content-Type","application/json"),r.append("Accept","application/json"),r.append("Cache-Control","max-age=31557600"),t.put(e,new Response(JSON.stringify(n),{headers:r})),[2]}}))}))},u=function(e){return i(void 0,void 0,void 0,(function(){var n,t,r;return o(this,(function(i){switch(i.label){case 0:return window.caches?[4,window.caches.open("mv")]:[2,null];case 1:return(n=i.sent())?[4,n.match(e)]:[2,null];case 2:if(!(t=i.sent()))return[2,null];if(!t.ok)return[2,null];i.label=3;case 3:return i.trys.push([3,5,,6]),[4,t.json()];case 4:return[2,i.sent()];case 5:return r=i.sent(),console.warn(r),[3,6];case 6:return[2]}}))}))},a=function(e,n){return i(void 0,void 0,void 0,(function(){return o(this,(function(t){switch(t.label){case 0:return t.trys.push([0,2,,3]),[4,c(e,n)];case 1:return t.sent(),[3,3];case 2:return t.sent(),[3,3];case 3:return r.set(e,n,{path:"/",expires:365,secure:!0,sameSite:"None"}),[2,!0]}}))}))},s=function(e){return i(void 0,void 0,void 0,(function(){var n,t;return o(this,(function(i){switch(i.label){case 0:n={},i.label=1;case 1:return i.trys.push([1,3,,4]),t=n,[4,u(e)];case 2:return t.cache=i.sent(),[3,4];case 3:return i.sent(),[3,4];case 4:return n.cookie=r.getJSON(e),[2,n]}}))}))},l=function(e,n,t,r){return new(t||(t=Promise))((function(i,o){function c(e){try{a(r.next(e))}catch(e){o(e)}}function u(e){try{a(r.throw(e))}catch(e){o(e)}}function a(e){var n;e.done?i(e.value):(n=e.value,n instanceof t?n:new t((function(e){e(n)}))).then(c,u)}a((r=r.apply(e,n||[])).next())}))},f=function(e,n){var t,r,i,o,c={label:0,sent:function(){if(1&i[0])throw i[1];return i[1]},trys:[],ops:[]};return o={next:u(0),throw:u(1),return:u(2)},"function"==typeof Symbol&&(o[Symbol.iterator]=function(){return this}),o;function u(o){return function(u){return function(o){if(t)throw new TypeError("Generator is already executing.");for(;c;)try{if(t=1,r&&(i=2&o[0]?r.return:o[0]?r.throw||((i=r.return)&&i.call(r),0):r.next)&&!(i=i.call(r,o[1])).done)return i;switch(r=0,i&&(o=[2&o[0],i.value]),o[0]){case 0:case 1:i=o;break;case 4:return c.label++,{value:o[1],done:!1};case 5:c.label++,r=o[1],o=[0];continue;case 7:o=c.ops.pop(),c.trys.pop();continue;default:if(!(i=c.trys,(i=i.length>0&&i[i.length-1])||6!==o[0]&&2!==o[0])){c=0;continue}if(3===o[0]&&(!i||o[1]>i[0]&&o[1]<i[3])){c.label=o[1];break}if(6===o[0]&&c.label<i[1]){c.label=i[1],i=o;break}if(i&&c.label<i[2]){c.label=i[2],c.ops.push(o);break}i[2]&&c.ops.pop(),c.trys.pop();continue}o=n.call(e,c)}catch(e){o=[6,e],r=0}finally{t=i=0}if(5&o[0])throw o[1];return{value:o[0]?o[1]:void 0,done:!0}}([o,u])}}};function d(e){return l(this,void 0,void 0,(function(){return f(this,(function(n){return[2,new Promise((function(n){e("getTCData",2,(function(e){e.gdprApplies?n(e.tcString):n("")}))}))]}))}))}function p(e){return l(this,void 0,void 0,(function(){return f(this,(function(n){return[2,new Promise((function(n){e("getUSPData",1,(function(e){(null==e?void 0:e.uspString)?n(e.uspString):n("")}))}))]}))}))}var v={us:"invalidate-verizon-pushes",eu:"eu-v1"};function h(e,n){return!(!(null==e?void 0:e.mv_uuid)||(null==e?void 0:e.version)!==n)}var w,m=function(e,n,t,r){return new(t||(t=Promise))((function(i,o){function c(e){try{a(r.next(e))}catch(e){o(e)}}function u(e){try{a(r.throw(e))}catch(e){o(e)}}function a(e){var n;e.done?i(e.value):(n=e.value,n instanceof t?n:new t((function(e){e(n)}))).then(c,u)}a((r=r.apply(e,n||[])).next())}))},y=function(e,n){var t,r,i,o,c={label:0,sent:function(){if(1&i[0])throw i[1];return i[1]},trys:[],ops:[]};return o={next:u(0),throw:u(1),return:u(2)},"function"==typeof Symbol&&(o[Symbol.iterator]=function(){return this}),o;function u(o){return function(u){return function(o){if(t)throw new TypeError("Generator is already executing.");for(;c;)try{if(t=1,r&&(i=2&o[0]?r.return:o[0]?r.throw||((i=r.return)&&i.call(r),0):r.next)&&!(i=i.call(r,o[1])).done)return i;switch(r=0,i&&(o=[2&o[0],i.value]),o[0]){case 0:case 1:i=o;break;case 4:return c.label++,{value:o[1],done:!1};case 5:c.label++,r=o[1],o=[0];continue;case 7:o=c.ops.pop(),c.trys.pop();continue;default:if(!(i=c.trys,(i=i.length>0&&i[i.length-1])||6!==o[0]&&2!==o[0])){c=0;continue}if(3===o[0]&&(!i||o[1]>i[0]&&o[1]<i[3])){c.label=o[1];break}if(6===o[0]&&c.label<i[1]){c.label=i[1],i=o;break}if(i&&c.label<i[2]){c.label=i[2],c.ops.push(o);break}i[2]&&c.ops.pop(),c.trys.pop();continue}o=n.call(e,c)}catch(e){o=[6,e],r=0}finally{t=i=0}if(5&o[0])throw o[1];return{value:o[0]?o[1]:void 0,done:!0}}([o,u])}}};!function(e){var n,t=this;e.init=function(e){e.slug;var n=e.gdpr,r=e.gdpr_compliance,i=e.alternateMvUuids,o=void 0===i?[]:i,c=e.s2sBidders;return m(t,void 0,void 0,(function(){return y(this,(function(e){switch(e.label){case 0:return function(e,n){return"1"===e&&!n}(n,r)||!function(e){return"0"===e||"1"===e&&(window.__cmp||window.__tcfapi)}(n)?[2]:(window.addEventListener("message",g,!1),x(),[4,S(c,o)]);case 1:return C(e.sent()),[2]}}))}))},e.uuidVersion=(n="eu-central-1".split("-")[0],v[n]||v.us)}(w||(w={}));var b,g=function(e){var n=[];e.data&&"syncUrls"===e.data.message&&(a("mv_tokens",e.data.tokens),a("mv_tokens_".concat(w.uuidVersion),e.data.tokens),(e.data.syncUrls||[]).forEach((function(e){return n.push(k(e))})))},x=function(){new Event("UsersyncWriteToAll");window.addEventListener("UsersyncWriteToAll",(function(e){a("mv_tokens",e.detail),a("mv_tokens_".concat(w.uuidVersion),e.detail)}),!1)};function k(e){var n=e.type,t=e.url;return m(this,void 0,void 0,(function(){return y(this,(function(e){return[2,new Promise((function(e){switch(n){case b.iframe:C(t,e);break;case b.pixel:U(t,e);break;case b.script:P(t,e)}}))]}))}))}function _(e){var n={};return e.forEach((function(e){var t,r,i;(null===(i=null===(r=null===(t=window.$mediavine)||void 0===t?void 0:t.web)||void 0===r?void 0:r.model)||void 0===i?void 0:i[e])&&(n[e]=window.$mediavine.web.model[e])})),encodeURIComponent(JSON.stringify(n))}function S(e,n){return m(this,void 0,void 0,(function(){var t,u,l,f,v,m,b,g,x;return y(this,(function(y){switch(y.label){case 0:return t="".concat("//exchange.mediavine.com","/usersync/sync?origin=").concat(document.location.origin,"&src=").concat("//exchange.mediavine.com","&s2sVersion=").concat("production"),[4,(k="mv_tokens_".concat(w.uuidVersion),i(void 0,void 0,void 0,(function(){var e;return o(this,(function(n){switch(n.label){case 0:e={},n.label=1;case 1:return n.trys.push([1,3,,4]),[4,s(k)];case 2:return e=n.sent(),[3,4];case 3:return n.sent(),[3,4];case 4:if(e.cookie&&!e.cache){try{c("/mv_tokens",e.cookie)}catch(e){}return[2,e.cookie]}return e.cache&&!e.cookie?(r.set("mv_tokens",e.cache),[2,e.cache]):e.cache&&e.cookie?[2,e.cookie]:[2,null]}}))})))];case 1:return u=y.sent(),[4,a("mv_tokens",u)];case 2:if(y.sent(),h(u,w.uuidVersion))l=null==u?void 0:u.mv_uuid;else for(f=0,v=n;f<v.length;f++)m=v[f],b=m.get(),!l&&h(b,w.uuidVersion)&&(l=b.mv_uuid);return l&&(t="".concat(t,"&mv_uuid=").concat(l,"&version=").concat(w.uuidVersion),n.forEach((function(e){return e.set({mv_uuid:l,version:w.uuidVersion})}))),window.__tcfapi?[4,d(window.__tcfapi)]:[3,4];case 3:return g=y.sent(),t+="&gdpr=".concat(g?"1":"0","&gdpr_consent=").concat(g),[3,5];case 4:t+="&gdpr=0",y.label=5;case 5:return window.__uspapi?[4,p(window.__uspapi)]:[3,7];case 6:x=y.sent(),t+="&us_privacy=".concat(x),y.label=7;case 7:return[2,t+="&p=".concat(_(e))]}var k}))}))}function E(e,n,t,r){var i;n=n||document,i=t?n.getElementsByTagName(t):n.getElementsByTagName("head");try{if((i=i.length?i:n.getElementsByTagName("body")).length){i=i[0];var o=r?null:i.firstChild;return i.insertBefore(e,o)}}catch(e){}}function C(e,n){var t=T(e,!1,"allow-scripts allow-same-origin"),r=document.createElement("div");r.innerHTML=t;var i=r.firstChild;n&&(i.addEventListener("load",n),i.addEventListener("error",n)),E(i,document,"html",!0)}function U(e,n){var t=O(e,!1),r=document.createElement("div");r.innerHTML=t;var i=r.firstChild;n&&(i.addEventListener("load",n),i.addEventListener("error",n)),E(i,document,"html",!0)}function P(e,n){var t=document.createElement("script");t.setAttribute("src",e),n&&(t.addEventListener("load",n),t.addEventListener("error",n)),E(t,document,"html",!0)}function T(e,n,t){return void 0===n&&(n=!0),void 0===t&&(t=""),e?(n&&(e=encodeURI(e)),t&&(t='sandbox="'.concat(t,'"')),"<iframe ".concat(t,'\n      frameborder="0"\n      allowtransparency="true"\n      marginheight="0" marginwidth="0"\n      width="0" hspace="0" vspace="0" height="0"\n      style="height:0px;width:0px;display:none;"\n      scrolling="no"\n      src="').concat(e,'">\n    </iframe>')):""}function O(e,n){if(void 0===n&&(n=!0),!e)return"";var t='<div style="position:absolute;left:0px;top:0px;visibility:hidden;">';return t+='<img src="'+(n?encodeURI(e):e)+'" alt="" width="1" height="1"></div>'}function I(e){(new Image).src="".concat(e,"&type=pixel")}!function(e){e.pixel="pixel",e.iframe="iframe",e.script="script"}(b||(b={})),window.$mediavine=window.$mediavine||{},window.$mediavine.web=window.$mediavine.web||{},window.$mediavine.web.usersyncInit=w.init}]);