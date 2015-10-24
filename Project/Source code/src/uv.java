// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import java.text.SimpleDateFormat;
import java.util.Date;

public class uv
{

    private static String a = "Alarm";
    private long b;
    private Context c;

    public uv(Context context)
    {
        c = context;
        b = 0L;
    }

    private boolean a(long l)
    {
        long l1 = System.currentTimeMillis();
        return b < l1;
    }

    public void a(long l, String s)
    {
        if (a(l))
        {
            Intent intent = new Intent(s);
            PendingIntent pendingintent = PendingIntent.getBroadcast(c, 0, intent, 0x8000000);
            ((AlarmManager)c.getSystemService("alarm")).set(1, l, pendingintent);
            SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
            vt.b(a, (new StringBuilder()).append("Set Alarm ").append(simpledateformat.format(new Date(l))).toString());
            b = l;
        }
    }

}
