describe('dataService',function(){

    beforeEach(module('app'));
    it('Get Data Ok',inject(function(dataService,$httpBackend){
        $httpBackend.expectGET('/test').respond(200,'Ok');
        dataService.getData('/test').then(function(response){
           expect(response.data).toEqual('Ok');
        });
        $httpBackend.flush();
    })
    );
     it('Post Data Ok',inject(function(dataService,$httpBackend){
        $httpBackend.expectPOST('/test').respond(200,'Ok');
        dataService.postData('/test',{}).then(function(response){
           expect(response.data).toEqual('Ok');
        });
         $httpBackend.flush();
    })
        
    );
     it('Put Data Ok',inject(function(dataService,$httpBackend){
        $httpBackend.expectPUT('/test').respond(200,'Ok');
        dataService.putData('/test',{}).then(function(response){
           expect(response.data).toEqual('Ok');
        });
         $httpBackend.flush();
    })
        
    );

     it('Delete Data Ok',inject(function(dataService,$httpBackend){
        $httpBackend.expectDELETE('/test').respond(200,'Ok');
        dataService.deleteData('/test').then(function(response){
           expect(response.data).toEqual('Ok');
        });
         $httpBackend.flush();
    })
        
    );

});