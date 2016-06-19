<?php

$I = new AcceptanceTester($scenario);
$I->am('admin');
$I->wantTo('Login to website LG');
$I->amOnPage('/');
$I->see('Sign in to start your session');

$faker = Faker\Factory::create('id_ID');
//$username = $faker->name;
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
$I->click('/html/body/div[2]/aside/div/section/ul/li[4]/a'); // customer
$I->see('Data Customers');
$I->dontSee('Master Customer');
$I->dontSeeElement('#mdl-tambah');

$I->click('#btn-add'); // add
$I->waitForElementVisible('#mdl-tambah');
$I->see('Master Customer');

for($a = 1; $a < 5; $a++){
// isi data customer
$I->fillField('#cust-name', $faker->name);
$I->fillField('#cust-pass', $faker->password);
$I->fillField('#cust-addr', $faker->address);
$I->fillField('#cust-email', $faker->email);
$I->fillField('#cust-telp', $faker->phoneNumber);
$I->fillField('#cust-cp', $faker->domainName);
$I->wait(1);
}

$I->click('Save');

$I->wait(3);