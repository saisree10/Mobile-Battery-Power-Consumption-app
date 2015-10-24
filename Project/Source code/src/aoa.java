// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.SharedPreferences;
import com.dianxinos.powermanager.PowerMangerApplication;

public class aoa
{

    private SharedPreferences a;
    private final String b = "cmspulling_time_";
    private PowerMangerApplication c;

    public aoa()
    {
        c = PowerMangerApplication.a();
        a = c.getSharedPreferences("CmsPullerConfig", 0);
    }

    public long a(String s)
    {
        return a.getLong((new StringBuilder()).append("cmspulling_time_").append(s).toString(), 0L);
    }

    public void a(String s, long l)
    {
        android.content.SharedPreferences.Editor editor = a.edit();
        editor.putLong((new StringBuilder()).append("cmspulling_time_").append(s).toString(), l);
        gm.a(editor);
    }
}
