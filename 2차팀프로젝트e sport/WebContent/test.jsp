<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="google-site-verification" content="-B5JjZpFsnhF1Pe52Kr2ydQQVNV9DTe6qr-Isauuthc" />
    <meta name="theme-color" content="#0a0a0c">

    
    <!--[if !(IE 9)]><! -->
    <!-- New relic sometimes prevents ie9 from loading -->
    <script type="text/javascript">
      window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o||e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(t,e,n){function r(t){try{c.console&&console.log(t)}catch(e){}}var o,i=t("ee"),a=t(19),c={};try{o=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(c.console=!0,o.indexOf("dev")!==-1&&(c.dev=!0),o.indexOf("nr_dev")!==-1&&(c.nrDev=!0))}catch(s){}c.nrDev&&i.on("internal-error",function(t){r(t.stack)}),c.dev&&i.on("fn-err",function(t,e,n){r(n.stack)}),c.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(c,function(t,e){return t}).join(", ")))},{}],2:[function(t,e,n){function r(t,e,n,r,o){try{h?h-=1:i("err",[o||new UncaughtException(t,e,n)])}catch(c){try{i("ierr",[c,(new Date).getTime(),!0])}catch(s){}}return"function"==typeof f&&f.apply(this,a(arguments))}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function o(t){i("err",[t,(new Date).getTime()])}var i=t("handle"),a=t(20),c=t("ee"),s=t("loader"),f=window.onerror,u=!1,h=0;s.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(d){"stack"in d&&(t(12),t(11),"addEventListener"in window&&t(6),s.xhrWrappable&&t(13),u=!0)}c.on("fn-start",function(t,e,n){u&&(h+=1)}),c.on("fn-err",function(t,e,n){u&&(this.thrown=!0,o(n))}),c.on("fn-end",function(){u&&!this.thrown&&h>0&&(h-=1)}),c.on("internal-error",function(t){i("ierr",[t,(new Date).getTime(),!0])})},{}],3:[function(t,e,n){t("loader").features.ins=!0},{}],4:[function(t,e,n){function r(){j++,S=y.hash,this[u]=Date.now()}function o(){j--,y.hash!==S&&i(0,!0);var t=Date.now();this[l]=~~this[l]+t-this[u],this[h]=t}function i(t,e){x.emit("newURL",[""+y,e])}function a(t,e){t.on(e,function(){this[e]=Date.now()})}var c="-start",s="-end",f="-body",u="fn"+c,h="fn"+s,d="cb"+c,p="cb"+s,l="jsTime",m="fetch",v="addEventListener",w=window,y=w.location;if(w[v]){var g=t(9),b=t(10),x=t(8),E=t(6),T=t(12),O=t(7),R=t(13),P=t("ee"),D=P.get("tracer");t(14),t("loader").features.spa=!0;var S,N=w[v],j=0;P.on(u,r),P.on(d,r),P.on(h,o),P.on(p,o),P.buffer([u,h,"xhr-done","xhr-resolved"]),E.buffer([u]),T.buffer(["setTimeout"+s,"clearTimeout"+c,u]),R.buffer([u,"new-xhr","send-xhr"+c]),O.buffer([m+c,m+"-done",m+f+c,m+f+s]),x.buffer(["newURL"]),g.buffer([u]),b.buffer(["propagate",d,p,"executor-err","resolve"+c]),D.buffer([u,"no-"+u]),a(R,"send-xhr"+c),a(P,"xhr-resolved"),a(P,"xhr-done"),a(O,m+c),a(O,m+"-done"),x.on("pushState-end",i),x.on("replaceState-end",i),N("hashchange",i,!0),N("load",i,!0),N("popstate",function(){i(0,j>1)},!0)}},{}],5:[function(t,e,n){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var o=t("ee"),i=t("handle"),a=t(12),c=t(11),s="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",h="bstResource",d="resource",p="-start",l="-end",m="fn"+p,v="fn"+l,w="bstTimer",y="pushState";t("loader").features.stn=!0,t(8);var g=NREUM.o.EV;o.on(m,function(t,e){var n=t[0];n instanceof g&&(this.bstStart=Date.now())}),o.on(v,function(t,e){var n=t[0];n instanceof g&&i("bst",[n,e,this.bstStart,Date.now()])}),a.on(m,function(t,e,n){this.bstStart=Date.now(),this.bstType=n}),a.on(v,function(t,e){i(w,[e,this.bstStart,Date.now(),this.bstType])}),c.on(m,function(){this.bstStart=Date.now()}),c.on(v,function(t,e){i(w,[e,this.bstStart,Date.now(),"requestAnimationFrame"])}),o.on(y+p,function(t){this.time=Date.now(),this.startPath=location.pathname+location.hash}),o.on(y+l,function(t){i("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+s]?window.performance[f](u,function(t){i(h,[window.performance.getEntriesByType(d)]),window.performance["c"+s]()},!1):window.performance[f]("webkit"+u,function(t){i(h,[window.performance.getEntriesByType(d)]),window.performance["webkitC"+s]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],6:[function(t,e,n){function r(t){for(var e=t;e&&!e.hasOwnProperty(u);)e=Object.getPrototypeOf(e);e&&o(e)}function o(t){c.inPlace(t,[u,h],"-",i)}function i(t,e){return t[1]}var a=t("ee").get("events"),c=t(21)(a,!0),s=t("gos"),f=XMLHttpRequest,u="addEventListener",h="removeEventListener";e.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(o(window),o(f.prototype)),a.on(u+"-start",function(t,e){var n=t[1],r=s(n,"nr@wrapped",function(){function t(){if("function"==typeof n.handleEvent)return n.handleEvent.apply(n,arguments)}var e={object:t,"function":n}[typeof n];return e?c(e,"fn-",null,e.name||"anonymous"):n});this.wrapped=t[1]=r}),a.on(h+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],7:[function(t,e,n){function r(t,e,n){var r=t[e];"function"==typeof r&&(t[e]=function(){var t=r.apply(this,arguments);return o.emit(n+"start",arguments,t),t.then(function(e){return o.emit(n+"end",[null,e],t),e},function(e){throw o.emit(n+"end",[e],t),e})})}var o=t("ee").get("fetch"),i=t(19);e.exports=o;var a=window,c="fetch-",s=c+"body-",f=["arrayBuffer","blob","json","text","formData"],u=a.Request,h=a.Response,d=a.fetch,p="prototype";u&&h&&d&&(i(f,function(t,e){r(u[p],e,s),r(h[p],e,s)}),r(a,"fetch",c),o.on(c+"end",function(t,e){var n=this;e?e.clone().arrayBuffer().then(function(t){n.rxSize=t.byteLength,o.emit(c+"done",[null,e],n)}):o.emit(c+"done",[t],n)}))},{}],8:[function(t,e,n){var r=t("ee").get("history"),o=t(21)(r);e.exports=r,o.inPlace(window.history,["pushState","replaceState"],"-")},{}],9:[function(t,e,n){var r=t("ee").get("mutation"),o=t(21)(r),i=NREUM.o.MO;e.exports=r,i&&(window.MutationObserver=function(t){return this instanceof i?new i(o(t,"fn-")):i.apply(this,arguments)},MutationObserver.prototype=i.prototype)},{}],10:[function(t,e,n){function r(t){var e=a.context(),n=c(t,"executor-",e),r=new f(n);return a.context(r).getCtx=function(){return e},a.emit("new-promise",[r,e],e),r}function o(t,e){return e}var i=t(21),a=t("ee").get("promise"),c=i(a),s=t(19),f=NREUM.o.PR;e.exports=a,f&&(window.Promise=r,["all","race"].forEach(function(t){var e=f[t];f[t]=function(n){function r(t){return function(){a.emit("propagate",[null,!o],i),o=o||!t}}var o=!1;s(n,function(e,n){Promise.resolve(n).then(r("all"===t),r(!1))});var i=e.apply(f,arguments),c=f.resolve(i);return c}}),["resolve","reject"].forEach(function(t){var e=f[t];f[t]=function(t){var n=e.apply(f,arguments);return t!==n&&a.emit("propagate",[t,!0],n),n}}),f.prototype["catch"]=function(t){return this.then(null,t)},f.prototype=Object.create(f.prototype,{constructor:{value:r}}),s(Object.getOwnPropertyNames(f),function(t,e){try{r[e]=f[e]}catch(n){}}),a.on("executor-start",function(t){t[0]=c(t[0],"resolve-",this),t[1]=c(t[1],"resolve-",this)}),a.on("executor-err",function(t,e,n){t[1](n)}),c.inPlace(f.prototype,["then"],"then-",o),a.on("then-start",function(t,e){this.promise=e,t[0]=c(t[0],"cb-",this),t[1]=c(t[1],"cb-",this)}),a.on("then-end",function(t,e,n){this.nextPromise=n;var r=this.promise;a.emit("propagate",[r,!0],n)}),a.on("cb-end",function(t,e,n){a.emit("propagate",[n,!0],this.nextPromise)}),a.on("propagate",function(t,e,n){this.getCtx&&!e||(this.getCtx=function(){if(t instanceof Promise)var e=a.context(t);return e&&e.getCtx?e.getCtx():this})}),r.toString=function(){return""+f})},{}],11:[function(t,e,n){var r=t("ee").get("raf"),o=t(21)(r),i="equestAnimationFrame";e.exports=r,o.inPlace(window,["r"+i,"mozR"+i,"webkitR"+i,"msR"+i],"raf-"),r.on("raf-start",function(t){t[0]=o(t[0],"fn-")})},{}],12:[function(t,e,n){function r(t,e,n){t[0]=a(t[0],"fn-",null,n)}function o(t,e,n){this.method=n,this.timerDuration="number"==typeof t[1]?t[1]:0,t[0]=a(t[0],"fn-",this,n)}var i=t("ee").get("timer"),a=t(21)(i),c="setTimeout",s="setInterval",f="clearTimeout",u="-start",h="-";e.exports=i,a.inPlace(window,[c,"setImmediate"],c+h),a.inPlace(window,[s],s+h),a.inPlace(window,[f,"clearImmediate"],f+h),i.on(s+u,r),i.on(c+u,o)},{}],13:[function(t,e,n){function r(t,e){h.inPlace(e,["onreadystatechange"],"fn-",c)}function o(){var t=this,e=u.context(t);t.readyState>3&&!e.resolved&&(e.resolved=!0,u.emit("xhr-resolved",[],t)),h.inPlace(t,v,"fn-",c)}function i(t){w.push(t),l&&(g=-g,b.data=g)}function a(){for(var t=0;t<w.length;t++)r([],w[t]);w.length&&(w=[])}function c(t,e){return e}function s(t,e){for(var n in t)e[n]=t[n];return e}t(6);var f=t("ee"),u=f.get("xhr"),h=t(21)(u),d=NREUM.o,p=d.XHR,l=d.MO,m="readystatechange",v=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],w=[];e.exports=u;var y=window.XMLHttpRequest=function(t){var e=new p(t);try{u.emit("new-xhr",[e],e),e.addEventListener(m,o,!1)}catch(n){try{u.emit("internal-error",[n])}catch(r){}}return e};if(s(p,y),y.prototype=p.prototype,h.inPlace(y.prototype,["open","send"],"-xhr-",c),u.on("send-xhr-start",function(t,e){r(t,e),i(e)}),u.on("open-xhr-start",r),l){var g=1,b=document.createTextNode(g);new l(a).observe(b,{characterData:!0})}else f.on("fn-end",function(t){t[0]&&t[0].type===m||a()})},{}],14:[function(t,e,n){function r(t){var e=this.params,n=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<h;r++)t.removeEventListener(u[r],this.listener,!1);if(!e.aborted){if(n.duration=(new Date).getTime()-this.startTime,4===t.readyState){e.status=t.status;var i=o(t,this.lastSize);if(i&&(n.rxSize=i),this.sameOrigin){var a=t.getResponseHeader("X-NewRelic-App-Data");a&&(e.cat=a.split(", ").pop())}}else e.status=0;n.cbTime=this.cbTime,f.emit("xhr-done",[t],t),c("xhr",[e,n,this.startTime])}}}function o(t,e){var n=t.responseType;if("json"===n&&null!==e)return e;var r="arraybuffer"===n||"blob"===n||"json"===n?t.response:t.responseText;return l(r)}function i(t,e){var n=s(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.sameOrigin=n.sameOrigin}var a=t("loader");if(a.xhrWrappable){var c=t("handle"),s=t(15),f=t("ee"),u=["load","error","abort","timeout"],h=u.length,d=t("id"),p=t(18),l=t(17),m=window.XMLHttpRequest;a.features.xhr=!0,t(13),f.on("new-xhr",function(t){var e=this;e.totalCbs=0,e.called=0,e.cbTime=0,e.end=r,e.ended=!1,e.xhrGuids={},e.lastSize=null,p&&(p>34||p<10)||window.opera||t.addEventListener("progress",function(t){e.lastSize=t.loaded},!1)}),f.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),f.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),f.on("send-xhr-start",function(t,e){var n=this.metrics,r=t[0],o=this;if(n&&r){var i=l(r);i&&(n.txSize=i)}this.startTime=(new Date).getTime(),this.listener=function(t){try{"abort"===t.type&&(o.params.aborted=!0),("load"!==t.type||o.called===o.totalCbs&&(o.onloadCalled||"function"!=typeof e.onload))&&o.end(e)}catch(n){try{f.emit("internal-error",[n])}catch(r){}}};for(var a=0;a<h;a++)e.addEventListener(u[a],this.listener,!1)}),f.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),f.on("xhr-load-added",function(t,e){var n=""+d(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),f.on("xhr-load-removed",function(t,e){var n=""+d(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),f.on("addEventListener-end",function(t,e){e instanceof m&&"load"===t[0]&&f.emit("xhr-load-added",[t[1],t[2]],e)}),f.on("removeEventListener-end",function(t,e){e instanceof m&&"load"===t[0]&&f.emit("xhr-load-removed",[t[1],t[2]],e)}),f.on("fn-start",function(t,e,n){e instanceof m&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=(new Date).getTime()))}),f.on("fn-end",function(t,e){this.xhrCbStart&&f.emit("xhr-cb-time",[(new Date).getTime()-this.xhrCbStart,this.onload,e],e)})}},{}],15:[function(t,e,n){e.exports=function(t){var e=document.createElement("a"),n=window.location,r={};e.href=t,r.port=e.port;var o=e.href.split("://");!r.port&&o[1]&&(r.port=o[1].split("/")[0].split("@").pop().split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=e.hostname||n.hostname,r.pathname=e.pathname,r.protocol=o[0],"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname);var i=!e.protocol||":"===e.protocol||e.protocol===n.protocol,a=e.hostname===document.domain&&e.port===n.port;return r.sameOrigin=i&&(!e.hostname||a),r}},{}],16:[function(t,e,n){function r(){}function o(t,e,n){return function(){return i(t,[(new Date).getTime()].concat(c(arguments)),e?null:this,n),e?void 0:this}}var i=t("handle"),a=t(19),c=t(20),s=t("ee").get("tracer"),f=NREUM;"undefined"==typeof window.newrelic&&(newrelic=f);var u=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],h="api-",d=h+"ixn-";a(u,function(t,e){f[e]=o(h+e,!0,"api")}),f.addPageAction=o(h+"addPageAction",!0),f.setCurrentRouteName=o(h+"routeName",!0),e.exports=newrelic,f.interaction=function(){return(new r).get()};var p=r.prototype={createTracer:function(t,e){var n={},r=this,o="function"==typeof e;return i(d+"tracer",[Date.now(),t,n],r),function(){if(s.emit((o?"":"no-")+"fn-start",[Date.now(),r,o],n),o)try{return e.apply(this,arguments)}finally{s.emit("fn-end",[Date.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,e){p[e]=o(d+e)}),newrelic.noticeError=function(t){"string"==typeof t&&(t=new Error(t)),i("err",[t,(new Date).getTime()])}},{}],17:[function(t,e,n){e.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(e){return}}}},{}],18:[function(t,e,n){var r=0,o=navigator.userAgent.match(/Firefox[/s](d+.d+)/);o&&(r=+o[1]),e.exports=r},{}],19:[function(t,e,n){function r(t,e){var n=[],r="",i=0;for(r in t)o.call(t,r)&&(n[i]=e(r,t[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],20:[function(t,e,n){function r(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(o<0?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=r},{}],21:[function(t,e,n){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var o=t("ee"),i=t(20),a="nr@original",c=Object.prototype.hasOwnProperty,s=!1;e.exports=function(t,e){function n(t,e,n,o){function nrWrapper(){var r,a,c,s;try{a=this,r=i(arguments),c="function"==typeof n?n(r,a):n||{}}catch(f){d([f,"",[r,a,o],c])}u(e+"start",[r,a,o],c);try{return s=t.apply(a,r)}catch(h){throw u(e+"err",[r,a,h],c),h}finally{u(e+"end",[r,a,s],c)}}return r(t)?t:(e||(e=""),nrWrapper[a]=t,h(t,nrWrapper),nrWrapper)}function f(t,e,o,i){o||(o="");var a,c,s,f="-"===o.charAt(0);for(s=0;s<e.length;s++)c=e[s],a=t[c],r(a)||(t[c]=n(a,f?c+o:o,i,c))}function u(n,r,o){if(!s||e){var i=s;s=!0;try{t.emit(n,r,o)}catch(a){d([a,n,r,o])}s=i}}function h(t,e){if(Object.defineProperty&&Object.keys)try{var n=Object.keys(t);return n.forEach(function(n){Object.defineProperty(e,n,{get:function(){return t[n]},set:function(e){return t[n]=e,e}})}),e}catch(r){d([r])}for(var o in t)c.call(t,o)&&(e[o]=t[o]);return e}function d(e){try{t.emit("internal-error",e)}catch(n){}}return t||(t=o),n.inPlace=f,n.flag=a,n}},{}],ee:[function(t,e,n){function r(){}function o(t){function e(t){return t&&t instanceof r?t:t?s(t,c,i):i()}function n(n,r,o){if(!d.aborted){t&&t(n,r,o);for(var i=e(o),a=l(n),c=a.length,s=0;s<c;s++)a[s].apply(i,r);var f=u[y[n]];return f&&f.push([g,n,r,i]),i}}function p(t,e){w[t]=l(t).concat(e)}function l(t){return w[t]||[]}function m(t){return h[t]=h[t]||o(n)}function v(t,e){f(t,function(t,n){e=e||"feature",y[n]=e,e in u||(u[e]=[])})}var w={},y={},g={on:p,emit:n,get:m,listeners:l,context:e,buffer:v,abort:a,aborted:!1};return g}function i(){return new r}function a(){(u.api||u.feature)&&(d.aborted=!0,u=d.backlog={})}var c="nr@context",s=t("gos"),f=t(19),u={},h={},d=e.exports=o();d.backlog=u},{}],gos:[function(t,e,n){function r(t,e,n){if(o.call(t,e))return t[e];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,e,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[e]=r,r}var o=Object.prototype.hasOwnProperty;e.exports=r},{}],handle:[function(t,e,n){function r(t,e,n,r){o.buffer([t],r),o.emit(t,e,n)}var o=t("ee").get("handle");e.exports=r,r.ee=o},{}],id:[function(t,e,n){function r(t){var e=typeof t;return!t||"object"!==e&&"function"!==e?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");e.exports=r},{}],loader:[function(t,e,n){function r(){if(!b++){var t=g.info=NREUM.info,e=h.getElementsByTagName("script")[0];if(setTimeout(f.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&e))return f.abort();s(w,function(e,n){t[e]||(t[e]=n)}),c("mark",["onload",a()],null,"api");var n=h.createElement("script");n.src="https://"+t.agent,e.parentNode.insertBefore(n,e)}}function o(){"complete"===h.readyState&&i()}function i(){c("mark",["domContent",a()],null,"api")}function a(){return(new Date).getTime()}var c=t("handle"),s=t(19),f=t("ee"),u=window,h=u.document,d="addEventListener",p="attachEvent",l=u.XMLHttpRequest,m=l&&l.prototype;NREUM.o={ST:setTimeout,CT:clearTimeout,XHR:l,REQ:u.Request,EV:u.Event,PR:u.Promise,MO:u.MutationObserver},t(16);var v=""+location,w={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-spa-1016.min.js"},y=l&&m&&m[d]&&!/CriOS/.test(navigator.userAgent),g=e.exports={offset:a(),origin:v,features:{},xhrWrappable:y};h[d]?(h[d]("DOMContentLoaded",i,!1),u[d]("load",r,!1)):(h[p]("onreadystatechange",o),u[p]("onload",r)),c("mark",["firstbyte",a()],null,"api");var b=0},{}]},{},["loader",2,14,5,3,4]);
;NREUM.info={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",licenseKey:"bb7a456742",applicationID:"34741842",sa:1}
    </script>
    <!--<![endif]-->
    

    <title>Champions - Universe of League of Legends</title>
    <meta name="description" content="" />

    <meta property="og:type" content="article" />
    <meta property="og:title" content="Champions - Universe of League of Legends" />
    <meta property="og:description" content="" />
    <!-- Atleast 1200x630 -->
    <meta property="og:image" content="https://universe.leagueoflegends.com/images/championsBackground.jpg" />
    <meta property="og:image:url" content="https://universe.leagueoflegends.com/images/championsBackground.jpg" />
    <meta property="og:image:height" content="1057" />
    <meta property="og:image:width" content="1879" />
    <meta property="og:image:type" content="image/jpeg" />

    <!-- Seo tags for google to better understand how to redirect languages. -->
    <link rel="alternate" hreflang="x-default" href="https://universe.leagueoflegends.com/" />
    
    <link rel="alternate" hreflang="cs-CZ" href="https://universe.leagueoflegends.com/cs_CZ/champions/" />
    
    <link rel="alternate" hreflang="de-DE" href="https://universe.leagueoflegends.com/de_DE/champions/" />
    
    <link rel="alternate" hreflang="el-GR" href="https://universe.leagueoflegends.com/el_GR/champions/" />
    
    <link rel="alternate" hreflang="en-PL" href="https://universe.leagueoflegends.com/en_PL/champions/" />
    
    <link rel="alternate" hreflang="en-GB" href="https://universe.leagueoflegends.com/en_GB/champions/" />
    
    <link rel="alternate" hreflang="en-US" href="https://universe.leagueoflegends.com/en_US/champions/" />
    
    <link rel="alternate" hreflang="en-AU" href="https://universe.leagueoflegends.com/en_AU/champions/" />
    
    <link rel="alternate" hreflang="en-PH" href="https://universe.leagueoflegends.com/en_PH/champions/" />
    
    <link rel="alternate" hreflang="en-SG" href="https://universe.leagueoflegends.com/en_SG/champions/" />
    
    <link rel="alternate" hreflang="es-AR" href="https://universe.leagueoflegends.com/es_AR/champions/" />
    
    <link rel="alternate" hreflang="es-ES" href="https://universe.leagueoflegends.com/es_ES/champions/" />
    
    <link rel="alternate" hreflang="es-MX" href="https://universe.leagueoflegends.com/es_MX/champions/" />
    
    <link rel="alternate" hreflang="fr-FR" href="https://universe.leagueoflegends.com/fr_FR/champions/" />
    
    <link rel="alternate" hreflang="hu-HU" href="https://universe.leagueoflegends.com/hu_HU/champions/" />
    
    <link rel="alternate" hreflang="id-ID" href="https://universe.leagueoflegends.com/id_ID/champions/" />
    
    <link rel="alternate" hreflang="it-IT" href="https://universe.leagueoflegends.com/it_IT/champions/" />
    
    <link rel="alternate" hreflang="ja-JP" href="https://universe.leagueoflegends.com/ja_JP/champions/" />
    
    <link rel="alternate" hreflang="ko-KR" href="https://universe.leagueoflegends.com/ko_KR/champions/" />
    
    <link rel="alternate" hreflang="ms-MY" href="https://universe.leagueoflegends.com/ms_MY/champions/" />
    
    <link rel="alternate" hreflang="pl-PL" href="https://universe.leagueoflegends.com/pl_PL/champions/" />
    
    <link rel="alternate" hreflang="pt-BR" href="https://universe.leagueoflegends.com/pt_BR/champions/" />
    
    <link rel="alternate" hreflang="ro-RO" href="https://universe.leagueoflegends.com/ro_RO/champions/" />
    
    <link rel="alternate" hreflang="ru-RU" href="https://universe.leagueoflegends.com/ru_RU/champions/" />
    
    <link rel="alternate" hreflang="th-TH" href="https://universe.leagueoflegends.com/th_TH/champions/" />
    
    <link rel="alternate" hreflang="tr-TR" href="https://universe.leagueoflegends.com/tr_TR/champions/" />
    
    <link rel="alternate" hreflang="vn-VN" href="https://universe.leagueoflegends.com/vn_VN/champions/" />
    
    <link rel="alternate" hreflang="zh-TW" href="https://universe.leagueoflegends.com/zh_TW/champions/" />
    
    <link rel="alternate" hreflang="zh-CN" href="https://universe.leagueoflegends.com/zh_CN/champions/" />
    


    <link rel="icon" type="image/png" sizes="192x192" href="/icons/android-chrome-192x192.png">
    <link rel="apple-touch-icon" sizes="57x57" href="/icons/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/icons/apple-touch-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/icons/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/icons/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/icons/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/icons/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/icons/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/icons/apple-touch-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/icons/apple-touch-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/icons/favicon-16x16.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/icons/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="230x230" href="/icons/favicon-230x230.png">
    <link rel="shortcut icon" href="/icons/favicon.ico">

    
  
    <link rel="stylesheet" href="/css/global.e991e39590331578d0f3.css" />
  
    <link rel="stylesheet" href="/css/main.e991e39590331578d0f3.css" />
  
    

    
    <!-- Riot Tags for Head -->

    <!-- Twitter Tags -->
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@leagueoflegends" />
    <meta name="twitter:creator" content="@leagueoflegends" />

    <!-- Hotjar Tracking Code for http://universe.leagueoflegends.com -->
    <script>
      (function(h,o,t,j,a,r){
          h.hj=h.hj||function(){(h.hj.q=h.hj.q||[]).push(arguments)};
          h._hjSettings={hjid:450269,hjsv:5};
          a=o.getElementsByTagName('head')[0];
          r=o.createElement('script');r.async=1;
          r.src=t+h._hjSettings.hjid+j+h._hjSettings.hjsv;
          a.appendChild(r);
      })(window,document,'//static.hotjar.com/c/hotjar-','.js?sv=');
    </script>

    <!-- Google Tag Manager -->
    <script>
      (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
      new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
      j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
      'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
      })(window,document,'script','dataLayer','GTM-N98J');
    </script>
    <!-- End Google Tag Manager -->

    <!-- Google Structured Data -->
    <script type="application/ld+json">
    {"@context":"http://schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","position":1,"item":{"@id":"https://universe.leagueoflegends.com/en_US/champions/","@type":"Thing","name":"Champions"}}]}
    </script>

    


    
  </head>
  <body>
    
    <!-- Riot Tags for Body -->
    <!-- Qualaroo for leagueoflegends.com -->
    <!-- Paste this code right after the <body> tag on every page of your site. -->
    <script type="text/javascript">
      var _kiq = _kiq || [];
      (function(){
        setTimeout(function(){
          var d = document,
              f = d.getElementsByTagName('script')[0],
              s = d.createElement('script');

          s.type = 'text/javascript';
          s.async = true;
          s.src = '//s3.amazonaws.com/ki.js/51398/aVk.js';
          f.parentNode.insertBefore(s, f);
        }, 1);
      })();
    </script>

    <!-- Google Tag Manager (noscript) -->
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-N98J" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    <!-- End Google Tag Manager (noscript) -->
    

    <div id="App"></div>
    <div id="Preloader"></div>
    <script>
    (function() {
        var method;
        var noop = function () {};
        var methods = [
            'assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'error',
            'exception', 'group', 'groupCollapsed', 'groupEnd', 'info', 'log',
            'markTimeline', 'profile', 'profileEnd', 'table', 'time', 'timeEnd',
            'timeStamp', 'trace', 'warn'
        ];
        var length = methods.length;
        var console = (window.console = window.console || {});

        while (length--) {
            method = methods[length];

            // Only stub undefined methods.
            if (!console[method]) {
                console[method] = noop;
            }
        }
    }());
    </script>
    
  
    <script type="text/javascript" src="/js/main.e991e39590331578d0f3.js"></script>
  
  
    

    
  </body>
</html>
