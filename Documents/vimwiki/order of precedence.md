# Order of precedence (1 being the most important)
	1. inline
	2. id
	3. class
	4. tag 
		 
		 
		 
sidenote: IF tag has same class specificity, it will read from top to bottom
and choose the bottom one

Example: header1 wins!

	```html
	<h1 class="header1 header2">

	.header2 {
		color:red;
	}

	.header1 {
		color:green;
	}
	```

Example: h1.header2 wins! (because both have 1's in the 3rd index, it goes to next number..)

	```html
	<h1 class="header1 header2">

	/* 0, 0, 1, 1 */	
	h1.header2 {
		color:red;
	}

	/* 0, 0, 1, 0 */	
	.header1 {
		color:green;
	}
	```
	

Example: body .header1 wins! (because both have 1's in the 3rd and 4th index, 
it goes by top-down written order)

	```html
	<body>
		<h1 class="header1 header2">
	</body>
	
	/* 0, 0, 1, 1 */
	h1.header2 {
		color:red;
	}

	/* 0, 0, 1, 1 */	
	body .header1 {
		color:green;
	}
	```

	
	
Example: h1.header2 wins! (because !important overrides all eg. /* **1**, 0, 0, 0, 0 */)
Sidenote: Highly reccommend not to use !important
	```html
	<body>
		<h1 class="header1 header2">
	</body>
	
	/* **1**, 0, 0, 1, 1 */
	h1.header2 {
		color:red !important;
	}

	/* 0, 0, 1, 1 */	
	body .header1 {
		color:green;
	}
	```
	
	
Sidenote: additional selectors (body > .header, )body + .header etc)
will be ignored. Specificity only takes care of class selectors, element selectors,
id, !important, inline styles.

Sidenote: use inspector to find which css is being overwritten in order to help debug.
	
