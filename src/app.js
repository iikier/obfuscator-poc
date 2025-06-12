// A simple function to demonstrate obfuscation
function greet() {
    const message = "Hello, this is a secret message!";
    console.log(message);
    alert(message);
}

// A class to demonstrate more complex obfuscation
class Calculator {
    constructor() {
        this.result = 0;
    }

    add(a, b) {
        this.result = a + b;
        return this.result;
    }

    subtract(a, b) {
        this.result = a - b;
        return this.result;
    }

    showResult() {
        console.log(`The result is: ${this.result}`);
    }
}

greet();

const calc = new Calculator();
calc.add(10, 5);
calc.showResult();
calc.subtract(10, 3);
calc.showResult(); 