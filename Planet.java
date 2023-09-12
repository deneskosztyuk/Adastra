package com.example.adastra_tomcat;

public class Planet {
    private int id;
    private String name;
    private String type;
    private double price;
    private long distanceFromEarth;
    private int numberOfMoons;
    private double mass;
    private double sizeDiameter;
    private int surfaceTemperature;
    private double orbitalPeriod;

    public Planet(int id, String name, String type, double price, long distanceFromEarth, int numberOfMoons,
                  double mass, double sizeDiameter, int surfaceTemperature, double orbitalPeriod) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.price = price;
        this.distanceFromEarth = distanceFromEarth;
        this.numberOfMoons = numberOfMoons;
        this.mass = mass;
        this.sizeDiameter = sizeDiameter;
        this.surfaceTemperature = surfaceTemperature;
        this.orbitalPeriod = orbitalPeriod;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public long getDistanceFromEarth() {
        return distanceFromEarth;
    }

    public void setDistanceFromEarth(long distanceFromEarth) {
        this.distanceFromEarth = distanceFromEarth;
    }

    public int getNumberOfMoons() {
        return numberOfMoons;
    }

    public void setNumberOfMoons(int numberOfMoons) {
        this.numberOfMoons = numberOfMoons;
    }

    public double getMass() {
        return mass;
    }

    public void setMass(double mass) {
        this.mass = mass;
    }

    public double getSizeDiameter() {
        return sizeDiameter;
    }

    public void setSizeDiameter(double sizeDiameter) {
        this.sizeDiameter = sizeDiameter;
    }

    public int getSurfaceTemperature() {
        return surfaceTemperature;
    }

    public void setSurfaceTemperature(int surfaceTemperature) {
        this.surfaceTemperature = surfaceTemperature;
    }

    public double getOrbitalPeriod() {
        return orbitalPeriod;
    }

    public void setOrbitalPeriod(double orbitalPeriod) {
        this.orbitalPeriod = orbitalPeriod;
    }
    @Override
    public String toString() {
        return "Planet{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", price=" + price +
                ", distanceFromEarth=" + distanceFromEarth +
                ", numberOfMoons=" + numberOfMoons +
                ", mass=" + mass +
                ", sizeDiameter=" + sizeDiameter +
                ", surfaceTemperature=" + surfaceTemperature +
                ", orbitalPeriod=" + orbitalPeriod +
                '}';
    }
}
