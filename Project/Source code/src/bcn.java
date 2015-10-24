// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.location.Location;
import android.location.LocationManager;

public class bcn
{

    static final String a = bcn.getName();
    private Location b;
    private LocationManager c;
    private bcm d;
    private boolean e;

    public bcn()
    {
        e = false;
    }

    public boolean a()
    {
        return c != null && d != null;
    }

    public void b()
    {
        if (a())
        {
            c.removeUpdates(d);
        }
    }

    public Location c()
    {
        Location location = b;
        if (location == null && d != null)
        {
            location = d.a();
        }
        return location;
    }

}
