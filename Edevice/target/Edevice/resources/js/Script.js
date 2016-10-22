var app = angular
        .module("myModule", [])
        .controller("myController", function ($scope, $http) {

            $http.get("/mdFrontEnd/product/all")
                 .then(function (response) {
                     $scope.pro = response.data;
                 });
        

/*angular.module('myApp', []).controller('namesCtrl', function($scope) {
    $scope.names = [
        {sno:'1',name:'Jani',brand:'lg',categrory:'mobile'},
        {sno:'2',name:'Carl',brand:'lg',categrory:'mobile'},
        {sno:'3',name:'Margareth',brand:'lg',categrory:'mobile'},
        {sno:'4',name:'Hege',brand:'lg',categrory:'mobile'},
        {sno:'5',name:'Joe',brand:'index',categrory:'mobile'},
        {sno:'6',name:'Gustav',brand:'samsung',categrory:'mobile'},
        {sno:'7',name:'Birgit',brand:'samsung',categrory:'mobile'},
        {sno:'8',name:'Mary',brand:'samsung',categrory:'mobile'},
        {sno:'9',name:'Kai',brand:'samsung',categrory:'mobile'},
        {sno:'10',name:'Jani',brand:'lg',categrory:'mobile'},
        {sno:'11',name:'Carl',brand:'lg',categrory:'mobile'},
        {sno:'12',name:'Margareth',brand:'lg',categrory:'mobile'},
        {sno:'13',name:'Hege',brand:'lg',categrory:'mobile'},
        {sno:'14',name:'Joe',brand:'index',categrory:'mobile'},
        {sno:'15',name:'Gustav',brand:'samsung',categrory:'mobile'},
        {sno:'16',name:'Birgit',brand:'samsung',categrory:'mobile'},
        {sno:'17',name:'Mary',brand:'samsung',categrory:'mobile'},
        {sno:'18',name:'Kai',brand:'samsung',categrory:'mobile'}
        ];*/
    $scope.orderByMe = function(x) {
        $scope.myOrderBy = x;
    }
});