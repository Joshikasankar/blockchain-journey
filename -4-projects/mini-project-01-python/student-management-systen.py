students=[]
def add_student():
    name=input("enter name : ")
    age=int(input("enter age : "))
    mark=int(input("enter mark : "))
    course=input("enter course name : ")

    student={
    "name" : name,
    "age" : age,
    "mark" : mark,
    "course" : course
    }
    students.append(student)
    print(f"{name} sucessfully added ")
    print("---------------------------------------------------")

def view_student():
    if len(students)==0:
        print("no student exist")
        return
    print("--------------------student lists------------------")
    for i,student in enumerate(students):
            print(f"\n {i+1}.")
            print("name : ",student["name"])
            print("age : ",student["age"])
            print("mark : ",student["mark"])
            print("course : ",student["course"])

            if student["mark"] >= 40:
                print("result : PASS...")
            else:
                print("result :FAIL...")
    print("------------------------------------------------------")
def search_student():
    name=input("enter name to search : ")
    found=False
    for student in students:
        if student["name"].lower() == name.lower():
            print("name found...")
            print("name : ",student["name"])
            print("age : ",student["age"])
            print("mark : ",student["mark"])
            print("course : ",student["course"])
            found=True
            break
        else:
            print("name not found...")
def update_mark():
    name =input("enter name to find : ")
    mark =int(input("enter mark to update : "))
    for student in students:
        if student["name"].lower() == name.lower():
            student["mark"]=mark
            print(f"updated successfully for {name}")
        else:
            print("student name not found")
    print("------------------------------------------------")
def search_student():
    name=input("enter name to search : ")
    found = False
    for student in students:
        if student["name"].lower() == name.lower():
            print(f"{name} name found")
            print("name : ",student["name"])
            print("age : ",student["age"])
            print("marks : ",student["mark"])
            print("course : ",student["course"])

            found=True
            break

    if not found:
        print("name not found!..")


def update_mark():
    name=input("enter name to update mark : ")
    found=False
    for student in students:
       
        if student["name"].lower() == name.lower():
            mark = int(input("enter mark to update : "))
            student["mark"]=mark
        
            print("mark updated")
            print("name : ",student["name"] )
            print("age : ",student["age"] )
            print("mark : ",student["mark"] )
            print("course : ",student["course"] )
            found=True
            break

    if not found:
        print("name not found...")

def delete_student():
    name=input("enter name to delete : ")
    found=False
    for student in students:
        if student["name"].lower() == name.lower():
            students.remove(student)
            print(f"{name} sucessfully deleted...")
            view_student()
            found = True
            break
    if not found:
        print("name not found")

def menu():
    while True:
        print("============Student Management System==================")
        print("enter your choice 1-5 : ")
        print("1.add student")
        print("2.view student list")
        print("3.search sutudent")
        print("4.update mark")
        print("5.delete student")
        print("6.exit")

        option = int(input("enter your option : "))
        if option ==1:
            add_student()

        elif option == 2:
            view_student()

        elif option == 3:
            search_student()
        
        elif option == 4:
            update_mark()

        elif option == 5:
            delete_student()
        elif option == 6:
            break

        else:
           print("invalid options")
menu()





 