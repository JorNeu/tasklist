package com.tasklist.api.services;

import com.tasklist.api.entities.Task;
import com.tasklist.api.persistence.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TaskServiceImplement implements ITaskService{

    @Autowired
    private TaskRepository taskRepository;
    @Override
    public List<Task>findAll(){return (List<Task>) taskRepository.findAll();}
    @Override
    public Task findById(Long id){return taskRepository.findById(id).orElseThrow();}
    @Override
    public void save(Task task){taskRepository.save(task);
    }
}
