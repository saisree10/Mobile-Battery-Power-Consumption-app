// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.VelocityTracker;

class df
    implements dh
{

    df()
    {
    }

    public float a(VelocityTracker velocitytracker, int i)
    {
        return velocitytracker.getXVelocity();
    }

    public float b(VelocityTracker velocitytracker, int i)
    {
        return velocitytracker.getYVelocity();
    }
}
