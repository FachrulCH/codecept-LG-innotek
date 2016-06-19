# codecept-LG-innotek
Belajar implementasi Codeception di projek LG innotek


##Install depedency
```composer install```

##Jalanin WebServer Selenium:
```
java -jar selenium-server-standalone-2.53.0.jar
```
klo mau jalan di chrome, pastiin juga di folder yg sama ada file `chromedriver` trus setingan di \test\accepance.suite.yml di tambahin `browser: chrome`

##Jalan di PhantomJS
idupin phantomjs di port default codeception di 4444 `phantomjs --webdriver=4444`

##Jalanin Test Codeception:
```
codecept run acceptance --steps
```