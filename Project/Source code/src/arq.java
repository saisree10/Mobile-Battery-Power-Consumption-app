// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import java.util.ArrayList;

class arq
    implements Runnable
{

    final Context a;
    final String b;
    final arp c;

    arq(arp arp1, Context context, String s)
    {
        c = arp1;
        a = context;
        b = s;
        super();
    }

    public void run()
    {
        azh azh1;
        azh1 = azh.a(a);
        azh1.e();
        if (azh1.a() > 0) goto _L2; else goto _L1
_L1:
        azt.c("CpuSettingsScreenReceiver", "cpu not found");
_L7:
        return;
_L2:
        int i;
        int j;
        ArrayList arraylist;
        int l;
        int i1;
        if (azf.l() && azh1.h())
        {
            arp.a(0x668a0);
        }
        if (!b.equals("android.intent.action.SCREEN_OFF"))
        {
            continue; /* Loop/switch isn't completed */
        }
        i = azh1.b(0);
        j = azh1.b(0);
        if (j >= arp.a())
        {
            break MISSING_BLOCK_LABEL_170;
        }
        arraylist = azh1.e(0);
        l = arraylist.size();
        i1 = 1;
_L5:
        if (i1 >= l)
        {
            break MISSING_BLOCK_LABEL_170;
        }
        if (((Integer)arraylist.get(i1)).intValue() < arp.a()) goto _L4; else goto _L3
_L3:
        int k = ((Integer)arraylist.get(i1)).intValue();
_L8:
        azh1.b(i, k);
        return;
_L4:
        i1++;
          goto _L5
        if (!b.equals("android.intent.action.SCREEN_ON")) goto _L7; else goto _L6
_L6:
        azh1.f();
        return;
        k = j;
          goto _L8
    }
}
