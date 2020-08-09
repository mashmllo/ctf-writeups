# A little something to get you started - FLAG0

## Solution 

When clicked to view the website, we are presented with this. 

![](./imgs/index.png)

Since there is nothing inside, the webpage, the source code of the webpage is viewed and indeed something is found in the html source code. 

```html
<style>
	body {
		background-image: url("background.png");
	}
</style>
```

Since a background.png file is found, we will proceeed to the image to take a look for any information using the following url, ```http://127.0.0.1:5001/xxxxxxxxxx/background.png```. 

In the background.png directory, the flag is found.

![](./imgs/flag.png)