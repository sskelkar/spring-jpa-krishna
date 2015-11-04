package com.maxxton.domain;

import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@StaticMetamodel(Car.class)
public abstract class Car_ {

	public static volatile SingularAttribute<Car, Long> price;
	public static volatile SingularAttribute<Car, String> company;
	public static volatile SingularAttribute<Car, String> model;
	public static volatile SingularAttribute<Car, Long> id;

}

