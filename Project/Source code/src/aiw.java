// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.widget.LinearLayout;

public class aiw extends ajk
{

    public aiw(Context context, Handler handler, LinearLayout linearlayout)
    {
        super(context, handler, linearlayout);
        j = 2;
    }

    public void a()
    {
        o = azw.a;
        if (!o)
        {
            l = 1;
            n = false;
            j = 0;
            k = 0;
            return;
        }
        if (ContentResolver.getMasterSyncAutomatically())
        {
            l = 3;
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            m = context1.getString(0x7f0a0327);
        } else
        {
            l = 1;
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            m = context.getString(0x7f0a0328);
            k = j;
        }
        n = true;
    }

    public void b()
    {
        if (l == 3)
        {
            l = 4;
            ContentResolver.setMasterSyncAutomatically(false);
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            m = context1.getString(0x7f0a0328);
            k = j;
        } else
        if (l == 4)
        {
            l = 3;
            ContentResolver.setMasterSyncAutomatically(true);
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            m = context.getString(0x7f0a0327);
            k = 0;
            return;
        }
    }

    public String c()
    {
        Context context = c;
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        return context.getString(0x7f0a0326);
    }

    public String d()
    {
        if (l == 4)
        {
            Context context1 = c;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            return context1.getString(0x7f0a0349);
        } else
        {
            Context context = c;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            return context.getString(0x7f0a0345);
        }
    }

    public void onClick(View view)
    {
        e();
    }
}
