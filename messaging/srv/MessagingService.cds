@protocol:'odata'
@path:'communication'
@impl:'/srv/lib/MessagingService.js'
service MessagingService {
    @topic: 'my.custom'
    event messaging {
        key ID:Integer;
        name:String;
        Details:String;
    }

    entity Electronics {
        key ID:UUID;
        name : String;
        price:Double;
        details:String; 
    }
}
