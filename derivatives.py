def get_subterms(term):
    subterms = []
    searching = True
    seperatorPositions = []
    while searching:
        seperatorPos = term.find('+')
        if seperatorPos == -1:
            seperatorPos = term.find('-')
            if seperatorPos == -1:
                searching = False
        else:
            seperatorPositions.append(seperatorPos)
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
        get_subterms(term)


term = input("Welchen Term wollen Sie ableiten: ")
dNum = input("Welchen Grad soll die Ableitung haben: ")
