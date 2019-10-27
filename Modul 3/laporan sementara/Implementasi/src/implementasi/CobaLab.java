/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package implementasi;

/**
 *
 * @author syarifuddin-06989
 */
public class CobaLab extends Thread{
    
    @Override
    public void run(){
        System.out.println("Thread berjalan...");
    }
    
    public static void main(String[] args) {
        CobaLab tl = new CobaLab();
        tl.start();
    }
}
