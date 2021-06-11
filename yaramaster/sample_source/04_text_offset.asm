    global    main
    extern    puts
    section   .text

main:
    mov       rdi, message
    call      puts
    ret
    
message:
    db        "Hello, World!", 0
    db        "GoodNight, World!", 0
    db        "Hello!", 0
    db        "GoodNight!", 0