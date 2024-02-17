package com.tasklist.api.controller;

import com.tasklist.api.entities.Task;
import com.tasklist.api.services.ITaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/task")
public class TaskController {
    @Autowired
    private ITaskService taskService;
    @PostMapping
    public void saveTask(@RequestBody Task task){
        taskService.save(task);
    }
    @GetMapping("/all")
    public ResponseEntity<?> findAllTask(){
        return ResponseEntity.ok(taskService.findAll());
    }
    @GetMapping("/search/{id}")
    public ResponseEntity<?> findById(@PathVariable Long id){
        return ResponseEntity.ok(taskService.findById(id));
    }

}
