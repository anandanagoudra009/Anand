public  class HTTPCalloutClass {

    public static String getPostCalloutResponseContents() {
  
      Http h = new Http();
  
      HttpRequest req = new HttpRequest();
      req.setEndpoint('https://postman-echo.com/get?foo1=bar1&foo2=bar2');
      req.setMethod('GET');
      req.setHeader('Content-Type', 'application/json');
  
      HttpResponse res = h.send(req);
      System.System.debug('RESULT-->' +res.getBody());
      return res.getBody();
    }
  }