describe('corporacionController',function(){

    var controller,service;
     beforeEach(function(){
        module('app')

   });
    beforeEach(inject(function($controller,_configService_,$q){
       service=_configService_;
       spyOn(service,"list").and.callFake(function(){

           var deferred=$q.defer();
           deferred.resolve('Response');
           return deferred.promise;
       });
       controller=$controller('corporacionController',{
           authenticationService:service
       });
   }));
       describe('list test',function(){
it('list',inject(function(){

    controller.list({});
    expect(controller.showError).toEqual(false);
}));

   });
});