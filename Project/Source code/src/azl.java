// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;

public class azl
{

    private static azl a = new azl();

    private azl()
    {
    }

    public static azl a()
    {
        return a;
    }

    public static boolean a(Context context)
    {
        boolean flag;
        try
        {
            flag = acq.e("com.dianxinos.dxbs").c;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            azt.d("DxSDKCaller", (new StringBuilder()).append(" exception: ").append(namenotfoundexception.toString()).toString());
            return false;
        }
        return flag;
    }

    public boolean a(String s)
    {
        return false;
    }

    public boolean a(boolean flag)
    {
        return false;
    }

    public boolean b(String s)
    {
        while (s == null || !bag.a().b()) 
        {
            return false;
        }
        return bag.a().a((new StringBuilder()).append("am force-stop ").append(s).toString());
    }

}
