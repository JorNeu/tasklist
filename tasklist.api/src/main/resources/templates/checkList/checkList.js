/*declaracion de clase tarea*/
class Task {
    constructor(task,id){
        this.task = task;
        this.id = id;
        this.pos = id;
    };
    set setPos(newPos){this.pos=newPos;}
    get getPos(){return this.pos;}
    get getId(){return this.id;}
    get getTask(){return this.task;};
};
  //agregar tarea a la base de datos
  let registrartask = async () => {
    let campos = {};
    campos.text = formInput.value;
    try {
        console.log(campos)
        const peticion = await fetch("http://localhost:8080/api/task", {
            method: 'POST',
            headers: {
                'accept': 'application/json',
                'content-type': 'application/json'
            },
            body: JSON.stringify(campos)
        });

        if (!peticion.ok) {
            throw new Error('Error al enviar los datos');
        }

        // Si la solicitud fue exitosa, puedes realizar acciones adicionales aquí
        console.log("Datos enviados correctamente");
    } catch (error) {
        console.error('Hubo un problema con la solicitud fetch:', error.message);
    }
}
//agregar tarea y verificar que no sea espacio
const formInput = document.querySelector(".inputTask");
const formButton = document.querySelector(".add");
let id=0;
let checkbox=9999;
formButton.addEventListener("click",(e)=>{
    e.preventDefault();
    const text = (formInput.value);
    console.log(text);
    if ((text == "Escribe una nueva tarea")||(text=="")){
        alert("rellena bien el formulario");
    }else {
        registrartask();
        insertTask(text, id, checkbox);
        id++;
        checkbox--;  
    };
});

//crear y inicializar tarea
let tasks=[];
function insertTask(task,id,checkbox) {
    const tarea = new Task(task,id);
    tasks[id]=tarea;
    const ul = document.querySelector(".taskList");
    //creo el li con su hidden clases etc.
    const li = document.createElement("LI");
    li.addEventListener("click",()=>{posHidden(id)});
    li.classList.add("task");
    li.id=id;
    li.tabIndex=id;
    //creo qel div con las clases
    const div = document.createElement('div');
    div.classList.add('checklist');
    //creo el checkbox
    const input = document.createElement('input');
    input.setAttribute('value', (checkbox));
    input.setAttribute('name', 'r');
    input.setAttribute('type', 'checkbox');
    input.setAttribute('id', (checkbox));
    //creo el label con el mismo value que el checkbox
    const label = document.createElement('label');
    label.setAttribute('for', (checkbox));
    let texto = document.createTextNode(task);
    
    label.appendChild(texto);
    div.appendChild(input);
    div.appendChild(label);

    li.appendChild(div);
    ul.appendChild(li);
}
//mostrar id de cada tarea al darle click
const posHidden= (num)=>{
    document.querySelector(".posData").value = num;
 }
//crear boton de borrar
const deleteButton = document.querySelector(".del")
//evento del boton borrar y verificar que haya una seleccionado
deleteButton.addEventListener("click", (e) => {
  e.preventDefault();
  const pos = document.querySelector(".posData").value;
  if (pos === "") {
    alert("Primero seleccione la tarea a eliminar");
  } else {
    const parentNode = document.querySelector(".taskList");
    const childNode = document.getElementById(pos);
    parentNode.removeChild(childNode);
  }
});

