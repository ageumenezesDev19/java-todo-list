package br.com.ageudev.todolist.task;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.UUID;

public interface ITaskRepository extends JpaRepository<TaskModel, UUID> {
  
}
