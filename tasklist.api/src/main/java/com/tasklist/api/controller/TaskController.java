
package com.tasklist.api.controller;

import com.tasklist.api.entities.Task;
import com.tasklist.api.services.ITaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = {"http://127.0.0.1:8081","http://192.168.0.13:8081","http://127.0.0.1:8082"})
@RestController
@RequestMapping("/api/task")
public class TaskController {
    @Autowired
    private ITaskService taskService;
    @PostMapping
    public void saveTask(@RequestBody Task task){
        taskService.save(task);}
    @GetMapping
    public ResponseEntity<?> findAllTask(){
        return ResponseEntity.ok(taskService.findAll());
    }
    @GetMapping("/{id}")
    public ResponseEntity<?> findById(@PathVariable Long id){
        return ResponseEntity.ok(taskService.findById(id));
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteUser(@PathVariable Long id) {
        if (taskService.deleteTask(id)) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }

}
