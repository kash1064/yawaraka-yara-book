    global    main
    extern    puts
    section   .text

main:
    mov       rdi, message
    call      puts
    ret
    
message:
    db        "ABCZ    ", 0
    db        "ABCDZ   ", 0
    db        "ABCDEZ  ", 0
    db        "ABCDEFZ ", 0