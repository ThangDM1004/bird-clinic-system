/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 *
 * @author Minh
 */
public class OtpManager {

    private int otpvalue;

    public void generateOtp() {
        Random rand = new Random();
        otpvalue = rand.nextInt(900000) + 100000;

        // Schedule a timer to remove otpvalue after 60 seconds
        ScheduledExecutorService executorService = Executors.newSingleThreadScheduledExecutor();
        executorService.schedule(() -> {
            otpvalue = 0;
        }, 60, TimeUnit.SECONDS);
    }

    public int getOtpValue() {
        return otpvalue;
    }

    // Rest of the code...
}
