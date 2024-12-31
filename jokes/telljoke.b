/* 
 * Function: tellJoke
 * Purpose: To deliver a programmer joke
 */
tellJoke() {
    // Setup
    question = "Why do programmers prefer dark mode?"
    
    // Pause for comedic effect
    wait(2) 
    
    // Punchline
    answer = "Because light attracts bugs!"
    
    // Output the joke
    print(question)
    print(answer)
}

/* 
 * Main Execution
 */
main() {
    tellJoke()
}
