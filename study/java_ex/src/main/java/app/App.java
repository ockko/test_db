package app;

import app.domain.Todo;
import com.mongodb.client.MongoCollection;
import org.bson.conversions.Bson;
import org.bson.types.ObjectId;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static com.mongodb.client.model.Filters.eq;

public class App {
    public static void main(String[] args) {
        MongoCollection<Todo> collection = Database.getCollection("todo", Todo.class);

        Todo newTodo = new Todo(null, "POJO", "POJO 테스트 확인", false);
        collection.insertOne(newTodo);

        List<Todo> newTodos = Arrays.asList(
                new Todo(null, "POJO2", "POJO2 테스트 확인", false),
                new Todo(null, "POJO3", "POJO3 테스트 확인", true),
                new Todo(null, "POJO4", "POJO4 테스트 확인", false)
        );

        collection.insertMany(newTodos);

        List<Todo> todos = new ArrayList<>();
        collection.find().into(todos);

        for (Todo todo : todos) {
            System.out.println(todo);
        }

        String id = "6847dbb984241b2fd8946f05";
        Bson query = eq("_id", new ObjectId("6847dbb984241b2fd8946f05"));

        Todo todo = collection.find(query).first();
        System.out.println("==> FindByIdResult : " + todo);

        Database.close();
    }
}
