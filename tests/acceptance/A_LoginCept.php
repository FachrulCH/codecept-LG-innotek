<?php

$I = new AcceptanceTester($scenario);
$I->am('admin');
$I->wantTo('Login dulu to website LG');
$I->amOnPage('/');
$I->see('Sign in to start your session');

$username = 'admin';

$I->fillField('usermail', $username);
$I->fillField('userpass', 'admin');
$I->wait(1);
$I->click('Log In');
$I->see('Selamat datang admin!');
$I->wait(3);