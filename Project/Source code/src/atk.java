// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Build;
import java.util.HashMap;

public class atk
{

    private static final String a;
    private HashMap b;

    public atk()
    {
        b = new HashMap();
        b.put("passion", "1");
        b.put("bravo", "1");
        b.put("crespo", "2");
        b.put("GT-I9000", "3");
        b.put("vivo", "4");
        b.put("olympus", "5");
        b.put("umts_sholes", "6");
        b.put("baffin", "7");
    }

    public String a()
    {
        azt.a("DeviceInfo", (new StringBuilder()).append("Phone's device name: ").append(a).toString());
        String s = (String)b.get(a);
        if (s == null || s.length() == 0)
        {
            s = "1";
        }
        return s;
    }

    static 
    {
        a = Build.DEVICE;
    }
}
