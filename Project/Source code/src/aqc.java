// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.os.Handler;
import com.dianxinos.powermanager.skinshop.OperationConfigActivity;

public class aqc extends arf
{

    final OperationConfigActivity a;

    public aqc(OperationConfigActivity operationconfigactivity, Context context)
    {
        a = operationconfigactivity;
        super(context);
    }

    protected void a(arg arg1)
    {
        if (arg1.a == 0)
        {
            boolean flag = arh.a(arg1.d);
            OperationConfigActivity.a(a).a("ot_", flag);
            OperationConfigActivity.a(a).a(arg1.e);
            OperationConfigActivity.a(a).b(arg1.c);
            OperationConfigActivity.b(a);
            OperationConfigActivity.c(a).sendEmptyMessage(259);
        } else
        {
            OperationConfigActivity.c(a).sendEmptyMessage(257);
        }
        a.d();
    }

    protected void onPostExecute(Object obj)
    {
        a((arg)obj);
    }
}
