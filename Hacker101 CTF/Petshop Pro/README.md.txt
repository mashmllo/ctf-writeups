# Petshop Pro

## FLAG0 Solution 

When clicked to view the website, we are presented with this.

![](./imgs/index.jpg)

By adding the puppy into the shopping cart and intercept the request with burpsuite, we can see an encoded text for the cart variable. 

![](./imgs/cart.jpg)

```
cart=%5B%5B1%2C+%7B%22logo%22%3A+%22puppy.jpg%22%2C+%22price%22%3A+7.95%2C+%22name%22%3A+%22Puppy%22%2C+%22desc%22%3A+%228%5C%22x10%5C%22+color+glossy+photograph+of+a+puppy.%22%7D%5D%5D
```

Once the text is decoded, the cart contains the price of the puppy. 

```
cart=[[1, {"logo": "puppy.jpg", "price": 7.95, "name": "Puppy", "desc": "8\"x10\" color glossy photograph of a puppy."}]]
```

This would mean that we are able to change the price of the puppy to 0 and encode it to url encode before submitting the request. 

```
cart=%5B%5B1%2C+%7B%22logo%22%3A+%22puppy.jpg%22%2C+%22price%22%3A+0%2C+%22name%22%3A+%22Puppy%22%2C+%22desc%22%3A+%228%5C%22x10%5C%22+color+glossy+photograph+of+a+puppy.%22%7D%5D%5D
```

Once the request is submitted, the flag is obtained.

![](./imgs/flag.jpg)


## FLAG1 Solution 

Using [7kbscan-WebPathBrute](https://github.com/7kbstorm/7kbscan-WebPathBrute), a directory is found. 

![](./imgs/path.jpg)

By going into the admin login webpage, ```http://127.0.0.1/xxxxxxxxxx/login```, we are presente with a login page. 

![](./imgs/admin-login.jpg)

```admin:admin``` is used but an error message, **Invalid username** is shown. 

Burpsuite is then used to intercept the request and brute forcing is then used. 

![](./imgs/burp_username.jpg)

With the help of this [username wordlist](https://github.com/jeanphorn/wordlist/blob/master/usernames.txt), the username of the admin is obtained. 

![](./imgs/username.jpg)

The same is done to obtained the password of the admin user. 

![](./imgs/password.jpg)

Using the credentaisl ```verla:jester``` to login, the flag is obtained. 
![](./imgs/flag_1.jpg)

## FLAG2 Solution 

Insert with XSS code for all possible inputs.

``` html XSS command: 
<img src=x onerror=alert(1)>
```

![](./imgs/edit.jpg)

Add them into cart and go check the shopping cart.

![](./imgs/flag_2.jpg)