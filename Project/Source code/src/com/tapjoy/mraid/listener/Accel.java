// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy.mraid.listener;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.tapjoy.mraid.controller.MraidSensor;
import java.util.List;

public class Accel
    implements SensorEventListener
{

    private static final int FORCE_THRESHOLD = 1000;
    private static final int SHAKE_COUNT = 2;
    private static final int SHAKE_DURATION = 2000;
    private static final int SHAKE_TIMEOUT = 500;
    private static final int TIME_THRESHOLD = 100;
    private boolean bAccReady;
    private boolean bMagReady;
    private float mAccVals[] = {
        0.0F, 0.0F, 0.0F
    };
    private float mActualOrientation[] = {
        -1F, -1F, -1F
    };
    String mKey;
    private float mLastAccVals[] = {
        0.0F, 0.0F, 0.0F
    };
    private long mLastForce;
    private long mLastShake;
    private long mLastTime;
    private float mMagVals[];
    MraidSensor mSensorController;
    private int mSensorDelay;
    private int mShakeCount;
    int registeredHeadingListeners;
    int registeredShakeListeners;
    int registeredTiltListeners;
    private SensorManager sensorManager;

    public Accel(Context context, MraidSensor mraidsensor)
    {
        registeredTiltListeners = 0;
        registeredShakeListeners = 0;
        registeredHeadingListeners = 0;
        mSensorDelay = 3;
        mSensorController = mraidsensor;
        sensorManager = (SensorManager)context.getSystemService("sensor");
    }

    private void start()
    {
        List list = sensorManager.getSensorList(1);
        if (list.size() > 0)
        {
            sensorManager.registerListener(this, (Sensor)list.get(0), mSensorDelay);
        }
    }

    private void startMag()
    {
        List list = sensorManager.getSensorList(2);
        if (list.size() > 0)
        {
            sensorManager.registerListener(this, (Sensor)list.get(0), mSensorDelay);
            start();
        }
    }

    public float getHeading()
    {
        return mActualOrientation[0];
    }

    public void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        sensorevent.sensor.getType();
        JVM INSTR tableswitch 1 2: default 28
    //                   1 339
    //                   2 317;
           goto _L1 _L2 _L3
_L1:
        if (mMagVals != null && mAccVals != null && bAccReady && bMagReady)
        {
            bAccReady = false;
            bMagReady = false;
            float af[] = new float[9];
            SensorManager.getRotationMatrix(af, new float[9], mAccVals, mMagVals);
            mActualOrientation = new float[3];
            SensorManager.getOrientation(af, mActualOrientation);
            mSensorController.onHeadingChange(mActualOrientation[0]);
        }
        if (sensorevent.sensor.getType() == 1)
        {
            long l = System.currentTimeMillis();
            if (l - mLastForce > 500L)
            {
                mShakeCount = 0;
            }
            if (l - mLastTime > 100L)
            {
                long l1 = l - mLastTime;
                if (10000F * (Math.abs((mAccVals[0] + mAccVals[1] + mAccVals[2]) - mLastAccVals[0] - mLastAccVals[1] - mLastAccVals[2]) / (float)l1) > 1000F)
                {
                    int i = 1 + mShakeCount;
                    mShakeCount = i;
                    if (i >= 2 && l - mLastShake > 2000L)
                    {
                        mLastShake = l;
                        mShakeCount = 0;
                        mSensorController.onShake();
                    }
                    mLastForce = l;
                }
                mLastTime = l;
                mSensorController.onTilt(mAccVals[0], mAccVals[1], mAccVals[2]);
            }
        }
        return;
_L3:
        mMagVals = (float[])sensorevent.values.clone();
        bMagReady = true;
        continue; /* Loop/switch isn't completed */
_L2:
        mLastAccVals = mAccVals;
        mAccVals = (float[])sensorevent.values.clone();
        bAccReady = true;
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void setSensorDelay(int i)
    {
        mSensorDelay = i;
        if (registeredTiltListeners > 0 || registeredShakeListeners > 0)
        {
            stop();
            start();
        }
    }

    public void startTrackingHeading()
    {
        if (registeredHeadingListeners == 0)
        {
            startMag();
        }
        registeredHeadingListeners = 1 + registeredHeadingListeners;
    }

    public void startTrackingShake()
    {
        if (registeredShakeListeners == 0)
        {
            setSensorDelay(1);
            start();
        }
        registeredShakeListeners = 1 + registeredShakeListeners;
    }

    public void startTrackingTilt()
    {
        if (registeredTiltListeners == 0)
        {
            start();
        }
        registeredTiltListeners = 1 + registeredTiltListeners;
    }

    public void stop()
    {
        if (registeredHeadingListeners == 0 && registeredShakeListeners == 0 && registeredTiltListeners == 0)
        {
            sensorManager.unregisterListener(this);
        }
    }

    public void stopAllListeners()
    {
        registeredTiltListeners = 0;
        registeredShakeListeners = 0;
        registeredHeadingListeners = 0;
        try
        {
            stop();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void stopTrackingHeading()
    {
        if (registeredHeadingListeners > 0)
        {
            int i = -1 + registeredHeadingListeners;
            registeredHeadingListeners = i;
            if (i == 0)
            {
                stop();
            }
        }
    }

    public void stopTrackingShake()
    {
        if (registeredShakeListeners > 0)
        {
            int i = -1 + registeredShakeListeners;
            registeredShakeListeners = i;
            if (i == 0)
            {
                setSensorDelay(3);
                stop();
            }
        }
    }

    public void stopTrackingTilt()
    {
        if (registeredTiltListeners > 0)
        {
            int i = -1 + registeredTiltListeners;
            registeredTiltListeners = i;
            if (i == 0)
            {
                stop();
            }
        }
    }
}
