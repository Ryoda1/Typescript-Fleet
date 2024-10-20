const fruits: string[] = ["apple", "banana", "orange"];

function greet(name: string, tree: number, niga?: string): string {
    return `Hello, ${name + ' ' + tree + ' ' + niga}!`;
}

console.log(greet("world", 4))
console.log(fruits)