# Type of selectors

## Element selector
  ```html
  p {
    text-align: center;
    color: red;
  }
  ```

  
  
## ID selector
  ```html
  #para1 {
    text-align: center;
    color: red;
  }
  ```

  
  
## Class selector
  ```html
  .center {
    text-align: center;
    color: red;
  }
  ```

  
  
## Universal selector: (Will affect every HTML element on the page)
  ```html
  * {
    text-align: center;
    color: blue;
  }
  ```



## Grouping selector:
  ```html
  p, body.center, .center h1, footer .center {
    text-align: center;
    color: blue;
  }
  ```
  Sidenote: (each element spaced by commas are independent of one another!)



## Attribute selector (Select the elements with specified attribute or attribute value)
  ```html
  [href] {
    background-color: lightgreen;
    color: black;
    font-family: monospace;
    font-size: 1rem;
    }
  ```



## Other
  (Only <p> elements with class="center" will be red and center-aligned) 
  ```html
  p.center {
    text-align: center;
    color: red;
  }
  ```
