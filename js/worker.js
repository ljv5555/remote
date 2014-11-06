onconnect = function(e) {
  var port = e.ports[0];
  port.onmessage = function(e) {
    var d = e.data;
    var m = '';
    if('getPort'==d){m=''+JSON.stringify(port);}
    else{m=eval(d);}
    port.postMessage(m); // not e.ports[0].postMessage!
    // e.target.postMessage('pong'); would work also
  }
}
