# country Code

A new Flutter Country Code plugin.

### Providing country code list

### Method:
```html
  var listOfCountryCode = await getCountryCodeList();
     listOfCountryCode.forEach((countryCode) { 
       var countryCodes = countryCode.countryCode; //ex. US
       var countryName = countryCode.countryName; // ex. United States
       var diallingCode = countryCode.diallingCode; // ex. +1
     });
```


