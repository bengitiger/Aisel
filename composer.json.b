{
    "name": "aisel/aisel",
    "license": "MIT",
    "type": "project",
    "homepage":    "http://aisel.co",
    "description": "Aisel - Open source CMS based on Angular and Symfony2",
    "authors": [
        {
            "name":     "Ivan Proskuryakov",
            "homepage": "http://www.linkedin.com/pub/ivan-proskuryakov/31/200/316"
        },
        {
            "name":     "Aisel Project",
            "homepage": "http://aisel.co"
        }
    ],
    "autoload": {
        "psr-0": { "": "src" }
    },
    "require": {
        "php": ">=5.3.3",
        "symfony/symfony": "~2.4",
        "doctrine/orm": "~2.2,>=2.2.3",
        "doctrine/doctrine-bundle": "~1.2",
        "twig/extensions": "~1.0",
        "symfony/assetic-bundle": "~2.3",
        "symfony/swiftmailer-bundle": "~2.3",
        "stof/doctrine-extensions-bundle": "1.1.*@dev",

        "symfony/monolog-bundle": "~2.4",
        "sensio/distribution-bundle": "~2.3",
        "sensio/framework-extra-bundle": "~3.0",
        "sensio/generator-bundle": "~2.3",
        "incenteev/composer-parameter-handler": "~2.0",
        "friendsofsymfony/user-bundle": "~1.3",
        "friendsofsymfony/rest-bundle": "1.4.*@dev",
        "egeloen/ckeditor-bundle": "~2.0",

        "sonata-project/jquery-bundle": "1.10.*@dev",
        "sonata-project/easy-extends-bundle": "~2.1@dev",
        "sonata-project/admin-bundle": "~2.2@dev",
        "sonata-project/doctrine-orm-admin-bundle": "~2.2@dev",
        "sonata-project/block-bundle": "~2.2@dev",
        "sonata-project/user-bundle": "~2.2@dev",
        "sonata-project/core-bundle": "~2.2@dev",
        "jms/serializer-bundle": "0.13.*@dev",
        "mopa/bootstrap-bundle": "2.3.x-dev",
        "twbs/bootstrap": "v2.3.2",
        "presta/sonata-navigation-bundle": "1.0.*@dev",
        "doctrine/doctrine-fixtures-bundle": "2.2.*@dev",

        "behat/behat": "2.5.*@stable",
        "behat/symfony2-extension": "1.1.*@dev",
        "behat/mink":   "1.5.*@stable",
        "behat/mink-extension":          "*",
        "behat/mink-browserkit-driver":  "*",
        "behat/mink-selenium2-driver":   "  *",
        "behat/mink-goutte-driver": "*",
        "behat/mink-sahi-driver": "*",
        "phpunit/phpunit": "3.7.*"
    },
    "scripts": {
        "post-install-cmd": [
            "Incenteev\\ParameterHandler\\ScriptHandler::buildParameters",
            "Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::buildBootstrap",
            "Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::clearCache",
            "Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::installAssets",
            "Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::installRequirementsFile"
        ],
        "post-update-cmd": [
            "Incenteev\\ParameterHandler\\ScriptHandler::buildParameters",
            "Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::buildBootstrap",
            "Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::clearCache",
            "Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::installAssets",
            "Sensio\\Bundle\\DistributionBundle\\Composer\\ScriptHandler::installRequirementsFile"
        ]
    },
    "config": {
        "bin-dir": "bin/"
    },
    "extra": {
        "symfony-app-dir": "app",
        "symfony-web-dir": "web",
        "incenteev-parameters": {
            "file": "app/config/parameters.yml"
        }
    }
}
