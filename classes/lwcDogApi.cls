public class lwcDogApi {
    
    @AuraEnabled
    public static String getDogs(){
        Http http = new Http();
        HttpRequest req = new httpRequest();
        req.setEndpoint('callout:dogPictureApi');
        req.setMethod('GET');
        HttpResponse res = http.send(req);
        return res.getBody();
        
    }

}