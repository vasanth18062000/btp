package com.example.javatutorial.entity;

import java.io.Serializable;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class Metadata implements Serializable {

    public String id;
    public String uri;
    public String type;
}
