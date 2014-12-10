'use strict';

/**
 * @ngdoc overview
 * @name Aisel
 *
 * @description
 * ...
 */
define(['app'], function (app) {
    app.controller('CartCtrl', ['$location', '$scope', 'cartService', 'notify',
        function ($location, $scope, cartService, notify) {
            // Get cart items

            $scope.getCartItems = function () {
                cartService.getCartItems($scope).success(function (data, status) {
                        $scope.cartItems = data;
                    }
                ).error(function (data, status) {
                    });
            }
            $scope.getCartItems();

            $scope.total = function () {
                var total = 0;
                angular.forEach($scope.cartItems, function (item) {
                    total += item.qty * item.product.price;
                })
                return total;
            }

            // Submit order button
            $scope.orderSubmit = function () {
                if ($scope.cartItems) {
                    $scope.isDisabled = true;
                    cartService.orderSubmit().success(
                        function (data, status) {
                            console.log(data);
                            notify(data.message);
                            $scope.isDisabled = false;
                            $scope.getCartItems();
                        }
                    ).error(function (data, status) {
                            notify(data.message);
                            $scope.isDisabled = false;
                        });
                }
            };
        }
    ])
    ;
})
;