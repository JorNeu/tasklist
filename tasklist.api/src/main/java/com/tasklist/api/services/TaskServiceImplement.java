package com.tasklist.api.services;

import com.tasklist.api.entities.Task;
import com.tasklist.api.persistence.TaskRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TaskServiceImplement implements ITaskService{
    private final TaskRepository taskRepository;

    @Autowired
    private TaskServiceImplement (TaskRepository taskRepository) {
        this.taskRepository = taskRepository;
    }
    @Override
    public List<Task>findAll(){return (List<Task>) taskRepository.findAll();}
    @Override
    public Task findById(Long id){return taskRepository.findById(id).orElseThrow();}
    @Override
    public void save(Task task){taskRepository.save(task);
    }

    @Override
    public boolean deleteTask(Long id) {
        Optional<Task> taskOptional = taskRepository.findById(id);
        if (taskOptional.isPresent()) {
            taskRepository.deleteById(id);
            return true;
        }
        return false;
    }
}
