<?php

$I = new AcceptanceTester($scenario);
$I->am('admin');
$I->wantTo('Login to website LG');
$I->amOnPage('/');
$I->see('Sign in to start your session');

// inisiasi objek faker yg indonesia
$user = Faker\Factory::create('id_ID');
//$username = $user->name;
$username = 'admin';

$I->fillField('usermail', $username);
$I->fillField('userpass', 'admin');
$I->wait(1);
$I->click('Log In');
$I->see('Selamat datang admin!');
$I->seeInCurrentUrl('/dashboard');
$I->dontSeeElement('/html/body/div[2]/header/nav/div/ul/li/ul/li[1]/p/small');
$I->click('/html/body/div[2]/header/nav/div/ul/li/a');
$I->seeElement('/html/body/div[2]/header/nav/div/ul/li/ul/li[1]/p/small');
$I->click('/html/body/div[2]/aside/div/section/ul/li[4]/a'); // side menu customer
$I->see('Data Customers');
$I->dontSee('Master Customer');
$I->dontSeeElement('#mdl-tambah');

$I->click('#btn-add'); // add
$I->waitForElementVisible('#mdl-tambah');
$I->see('Master Customer');

// isi data customer
// test looping di skenario create user baru
$user_email = "";
for ($a = 1; $a < 3; $a++) {
    $username = $user->name;
    $user_email = $user->email;
    $I->fillField('#cust-name', $username);
    $I->fillField('#cust-pass', $user->password);
    $I->fillField('#cust-addr', $user->address);
    $I->fillField('#cust-email', $user_email);
    $I->fillField('#cust-telp', $user->phoneNumber);
    $I->fillField('#cust-cp', $user->domainName);
    $I->wait(1);
}

$I->click('Save');

$I->wait(1);
$I->seeInDatabase('lg_customer', ['name' => $username]);
$I->dontSeeInDatabase('lg_customer', ['name' => $username.'1']);
$user_db_email = $I->grabFromDatabase('lg_customer','email', ['name' => $username]);

var_dump($user_db_email);
$I->assertEquals($user_email, $user_db_email);
$user_db = $I->grabFromDatabase('lg_customer','*', ['name' => $username]);
var_dump($user_db);
$I->wait(2);