// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;

public class bcm
    implements LocationListener
{

    static final String b = bcm.getName();
    Location a;

    public bcm()
    {
        a = null;
    }

    public Location a()
    {
        if (a != null)
        {
            return new Location(a);
        } else
        {
            return null;
        }
    }

    protected boolean a(Location location, Location location1)
    {
        if (location1 != null)
        {
            long l = location.getTime() - location1.getTime();
            boolean flag;
            boolean flag1;
            boolean flag2;
            if (l > 0x1d4c0L)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (l < 0xfffffffffffe2b40L)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (l > 0L)
            {
                flag2 = true;
            } else
            {
                flag2 = false;
            }
            if (!flag)
            {
                if (flag1)
                {
                    return false;
                }
                int i = (int)(location.getAccuracy() - location1.getAccuracy());
                boolean flag3;
                boolean flag4;
                boolean flag5;
                String s;
                String s1;
                boolean flag6;
                if (i > 0)
                {
                    flag3 = true;
                } else
                {
                    flag3 = false;
                }
                if (i < 0)
                {
                    flag4 = true;
                } else
                {
                    flag4 = false;
                }
                if (i > 200)
                {
                    flag5 = true;
                } else
                {
                    flag5 = false;
                }
                s = location.getProvider();
                s1 = location1.getProvider();
                if (s == null)
                {
                    if (s1 == null)
                    {
                        flag6 = true;
                    } else
                    {
                        flag6 = false;
                    }
                } else
                {
                    flag6 = s.equals(s1);
                }
                if (!flag4 && (!flag2 || flag3) && (!flag2 || flag5 || !flag6))
                {
                    return false;
                }
            }
        }
        return true;
    }

    public void onLocationChanged(Location location)
    {
        String _tmp = b;
        (new StringBuilder("onLocationChanged() : ")).append(location.getProvider()).append(":").append(location.getLatitude()).append(":").append(location.getLongitude()).append(":").append(location.getAccuracy());
        if (a(location, a))
        {
            a = location;
        }
    }

    public void onProviderDisabled(String s)
    {
        String _tmp = b;
        (new StringBuilder("onProviderDisabled: ")).append(s);
    }

    public void onProviderEnabled(String s)
    {
        String _tmp = b;
        (new StringBuilder("onProviderEnabled: ")).append(s);
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
        String _tmp = b;
        StringBuilder stringbuilder = (new StringBuilder("onStatusChanged: ")).append(s).append(" status: ");
        String s1;
        if (i == 2)
        {
            s1 = "available ";
        } else
        if (i == 1)
        {
            s1 = "temporarily unavailable";
        } else
        if (i == 0)
        {
            s1 = "Out of Service";
        } else
        {
            s1 = "unknown";
        }
        stringbuilder.append(s1);
    }

}
