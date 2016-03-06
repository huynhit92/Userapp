service = angular.module("Services", ['ngResource']);

service.factory('User', ['$resource', function ($resource) {
  return $resource('users/:id', {}, {
    update: {
      method: 'PUT',
      params: {
        id: '@user.id'
      }
    }
  })
}]);