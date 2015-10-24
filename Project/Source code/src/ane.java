// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;

public class ane extends Handler
{

    public Context a;
    private int b;

    public ane(Context context, int i)
    {
        a = context;
        b = i;
    }

    public void handleMessage(Message message)
    {
        if (message.what != 1) goto _L2; else goto _L1
_L1:
        anf anf1;
        String s;
        anf1 = (anf)message.obj;
        Context context = a;
        ly.i;
        s = context.getString(0x7f0a00f4);
        if (anf1.a) goto _L4; else goto _L3
_L3:
        if (anf1.b != b) goto _L6; else goto _L5
_L5:
        String s1;
        Context context3 = a;
        ly.i;
        s1 = context3.getString(0x7f0a00f5);
_L8:
        Toast.makeText(a, s1, 1).show();
_L2:
        return;
_L6:
        if (anf1.b > b)
        {
            int j = anf1.b - b;
            String s3 = azq.c(a, j);
            Context context2 = a;
            ly.i;
            String s4 = context2.getString(0x7f0a00f6, new Object[] {
                s3
            });
            b = anf1.b;
            s1 = s4;
            continue; /* Loop/switch isn't completed */
        }
        int i = b - anf1.b;
        String s2 = azq.c(a, i);
        Context context1 = a;
        ly.i;
        s = context1.getString(0x7f0a00f7, new Object[] {
            s2
        });
        b = anf1.b;
_L4:
        s1 = s;
        if (true) goto _L8; else goto _L7
_L7:
    }
}
