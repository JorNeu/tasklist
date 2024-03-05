package com.tasklist.api.services;

import com.tasklist.api.entities.Task;

import java.util.List;

public interface ITaskService {
    List<Task> findAll();
    Task findById(Long id);
    void save(Task task);
    boolean deleteTask(Long id);
}
