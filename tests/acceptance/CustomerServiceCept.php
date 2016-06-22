<?php 
$I = new AcceptanceTester($scenario);
$I->wantTo('Login dulu to website LG');
$I->amOnPage('/');
$I->see('Sign in to start your session');

$username = 'admin';

$I->fillField('usermail', $username);
$I->fillField('userpass', 'admin');
//$I->wait(1);
$I->click('Log In');
$I->see('Selamat datang admin!');

$I->wantTo('view Customer Service');
$I->amOnPage('/customer/service');
$I->see('History NG Customer');
//$I->click('body > div.wrapper > aside > div > section > ul > li:nth-child(3) > a > span'); // Side menu Customer Service
$option1 = $I->grabTextFrom('//*[@id="form-filter"]/div[2]/div/select/option[2]');
$I->selectOption('status', $option1);

$option2 = $I->grabTextFrom('//*[@id="form-filter"]/div[3]/div/select/option[4]');
$I->selectOption('model', $option2);
$I->click('Cari');
$I->wait(1);
$I->acceptPopup(); // ngak ada di phantomjs
//$I->executeJS("return window.alert"); // ganti ini, masi ga bisa
$I->wait(1);
$I->click('#reportrange');
$I->click('/html/body/div[3]/div[3]/ul/li[4]');
$option3 = $I->grabTextFrom('//*[@id="form-filter"]/div[3]/div/select/option[1]');
$I->selectOption('model', $option3);
$I->click('Cari');
$I->waitForElementVisible('#tbl-customers');
//$I->wait(5);
$I->see('Musashi');
$I->wait(5);
