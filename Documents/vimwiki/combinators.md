# Combinators

## Descendant combinator (2nd selector inside 1st selector *AFFECTS ALL NESTED 2nd selector!*)
    ```html
    <body class="box">
        <p>hello</p>
    </body>
    
    .box p {
        color: red;
    } 
    ```
    
## Child combinator (2nd selector inside 1st selector *AFFECTS ONLY CHILD 2nd selector!*)
    ```html
    <ul>
        <li>Unordered item</li>
        <li>Unordered item
        <ol>
            <li>Item 1</li>
            <li>Item 2</li>
        </ol>
        </li>
    </ul>   
    ```

    ```css
    ul > li {
    border-top: 5px solid red;
    }
    ```

## Adjacent sibling combinator (1st selector chooses only the first element given by the 2nd selector)
    ```html    
    <article>
        <h1>A heading</h1>
        <p>Vemelon azuki bean garlic.</p>
        <p>Greens peanut soko zucchini.</p>
        <p>Greens peanut soko zucchini.</p>
    </article>

    h1 + p {
        font-weight: bold;
        background-color: #333;
        color: #fff;
        padding: .5em;
    }
    ```
    
    
 
## General sibling combinator (Selects all of the 2nd selector AFTER finding the 1st selector)
    ```html
        <article>
            <p>Vemelon azuki bean garlic.</p>
            <h1>A heading</h1>
            <p>Greens peanut soko zucchini.</p>
            <p>Greens peanut soko zucchini.</p>
        </article>

        h1 ~ p {
            font-weight: bold;
            background-color: #333;
            color: #fff;
            padding: .5em;
        }
    ```
