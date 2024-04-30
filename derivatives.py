def get_subterms(term):
    subterms = []
    searching = True
    seperatorPositions = []
    lastPos = 0
    while searching:
        seperatorPos = term.find('+')
        print("first_ "+str(seperatorPos))
        if seperatorPos == -1:
            seperatorPos = term.find('-')
            print(seperatorPos)
            if seperatorPos == -1:
                searching = False
        else:
            term = term[seperatorPos+1:]
            print(term)
            seperatorPositions.append(seperatorPos+lastPos)
            lastPos += seperatorPos
            print(seperatorPos)
    
    prevPos = 0
    for pos in seperatorPositions:
        subterms.append(term[prevPos:pos])
        prevPos = pos
    return subterms 


def derivate(term):
    pass


def get_derivative(term, dNum):
    result = ""
    for i in range(dNum):
        subterms = get_subterms(term)
        for sub in subterms:
            print(sub)


#term = input("Welchen Term wollen Sie ableiten: ")
#dNum = int(input("Welchen Grad soll die Ableitung haben: "))
get_derivative("x³+33x-2", 1)
