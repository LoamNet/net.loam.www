---
layout: post
title: An Intro to Interfaces
author: Matthew
tags: interfaces, Java, programming, loose coupling, interface, intro, modular, example, introduction, tutorial, guide
---
An Intro to Interfaces

In programming, interfaces are essentially a way to promise that a piece of code can do some specific things. Coming up with a use case while learning about them can be a bit tough tho, so let's see what we can do about that with some examples in Java!

In code, interfaces tend to look a lot like classes or structures at a glance; however, they tend to use the `interface` keyword, and the functions usually don't have any sort of body. Instead, the names of functions in an interface are effectively functions that are guaranteed to exist when you interact with it.

When writing code that can actually provide the requirements that an interface lays out, we call that an object that _implements_ the interface. In a lot of languages, this is done at the same place you give the class a name, as follows: `public class MyClass implements SomeInterface`. In your coding adventures, you might have noticed that sometimes classes inherit from other classes, but they can only inherit from one. Interfaces don't have the same restriction, and you're allowed to implement as many as you want! (In java, we separate multiple interfaces with commas, like `public class MyClass implements Interface1, Interface2`). 

### A Practical Example
Using the ideas above, lets look at a small example interface! Below, we're creating an interface called Displayable, and give it two functions: `getTitle()` and `getContent()`, both of which will give us a string. Remember, functions inside of interfaces generally do not provide implementations of the functions they're guaranteeing. I've also gone ahead and put an `I` in front of the interface name to help me know it's an interface when looking at my code later.

```java
public interface Displayable {
    public String getTitle();
    public String getContent();
}
```

Alright! Now that we've got that, we can now go ahead and start to do things based on what we know an Displayable to have. In this case, I'll be making a function called `display(Displayable display)` that writes out a bit of info for me as two lines: a title and some content.

```java
public static void display(Displayable display) {
    System.out.println("  [Title] " + display.getTitle());
    System.out.println("[Content] " + display.getContent());
    System.out.println();
}
```

Excellent, we can now display an Displayable. What to display? 

What's cool about interfaces is that I can now staple Displayable to basically anything — from data structures to management classes for debug info, anything! It can all be passed to the display function since it's a displayable. This is example above is both a neat way to quickly create debug dialog or data visualization, and can also be used for other forms of dialogs and similar. 

Let's put this all together and add a few different classes that use it. In our example, we'll pretend to be making a generic but not too exciting bland animal hair cutting service app — I've added two types of animals that both don't like to get their hair cut, and a way to track them along with the interface and display functions from earlier!

```java
import java.util.*;
import java.util.UUID;

public class Main {
    // A nifty interface that we can use to display any object that implements it!
    public interface Displayable {
        public String getTitle();
        public String getContent();
    }
 
    // A way to use the interface — formatted display output, in this case
    public static void display(Displayable display) {
        System.out.println("  [Title] " + display.getTitle());
        System.out.println("[Content] " + display.getContent());
        System.out.println();
    }
 
    // some base class for our program (you can still derive this class!)
    public static abstract class Animal implements Displayable {
        public final String name;
        public final String id;
 
        public Animal(String name) {
            this.name = name;
            id = UUID.randomUUID().toString();
        }
        
        public String getContent() {
            return "Name: " + name + ", Entry ID: " + id;
        };
        
        public abstract String getTitle();
    }
 
    // A dog is an animal, and because it's an animal it implements Displayable!
    public static class Cat extends Animal {
        public Cat(String name) {
            super(name);
        }

        public String getTitle() {
            return "Cat Info";
        }
    }
 
    // A dog is an animal, and because it's an animal it implements Displayable!
    public static class Dog extends Animal {
        public Dog(String name) {
            super(name);
        }

        public String getTitle() {
            return "Dog Info";
        }
    }
 
    // This class has different output goals and requirements than the 
    // Cat and Dog classes, but still needs to display output in the same format.
    public static class AnimalHaircutService implements Displayable {
        protected ArrayList<Animal> queue = new ArrayList();

        public void add(Animal animal) {
            queue.add(animal);
        }

        public Animal GetNext() {
            if(queue.size() > 0) {
                Animal animal = queue.get(0);
                queue.remove(0);
                return animal;
            }

            return null;
        }

        public String getTitle() {
            return "Current queue";
        }
        
        public String getContent() {
            String out = "";
            for(int i = 0; i < queue.size(); ++i) {
                if(i != 0) {
                    out += ", ";
                }
                out += queue.get(i).name;
            }

            return out;
        }
    }

    // Some main or something
    public static AnimalHaircutService service;
    public static void main(String args[])
    {
        service = new AnimalHaircutService();
        service.add(new Cat("Mittens"));
        service.add(new Dog("Barkley"));

        // Use the display function since we're all interfaces
        display(service);
        display(service.GetNext());
        display(service.GetNext());
    }
}
```

That's a bit of a heavyweight example, but it does provide a couple use cases and shows how interfaces work with interface, so at least it's got that going for it! If we run it, we can see that we get the following output — note that your Entry IDs will be different if you run it since they're randomly generated each time.
```
  [Title] Current queue
[Content] Mittens, Barkley

  [Title] Cat Info
[Content] Name: Mittens, Entry ID: 4a499a80-8f28-47ce-b51b-04ad2fa1f185

  [Title] Dog Info
[Content] Name: Barkley, Entry ID: a970c83e-7b36-4ca2-86e2-60e66984d790
```

Awesome! Despite using the same interface, we were able to get much different things printed out. The neat thing about this is that we can update a specific class to change how it outputs something if we need to, and we know we won't have to change how our display function works. 

### Parting thoughts

What we've done here is performed something called "loose coupling", which helps us reuse the code. This is in contrast to what we call "tight coupling", which can achieve the same results but is a bit harder to re-use. A tightly coupled version of what we did above would be implementing a [title] and [content] print format in a print functions on every object we had, which would have been fine unless we wanted to change formatting without changing every single object's print function.

Another way to apply interfaces is as a shim between different existing pieces of functionality. They can adapt two existing objects to work with each other without explicitly having to reference one another, which can be great for swapping out different chunks of code during development. By adding interfaces to things that are probably going to change as a shim (we call this "abstracting" the things that can change), you now don't have to worry as much about changes on either side of the interface.

With the tools above, you should be able to start using interfaces in your existing projects today! Also, while it's not a convention in Java specifically, I like to add a leading `I` (Displayable instead of displayable) to help reduce confusion when I'm looking back at my code later, so I know what is an isn't an interface at a glance.


Looking for more examples or information on interfaces? Check out the following:
— Geeks for geeks has a [Java centric interface article](https://www.geeksforgeeks.org/interfaces-in-java/) with more software engineering language in it, and demonstrates more common Java use cases.
— Wikipedia provides a [broad overview of interfaces](https://en.wikipedia.org/wiki/Interface_(computing) as a concept as they apply to both hardware and software. This broader explanation helps provide a lot of practical examples.
— A concept that shows up a lot in the wild that uses interfaces is an API or Application Programming Interface. You can get a decent overview of what APIs are and how they can be used through the more technically dense [API overview and example page over at Red Hat](https://www.redhat.com/en/topics/api/what-are-application-programming-interfaces)