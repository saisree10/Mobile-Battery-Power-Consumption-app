// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.dianxinos.powermanager.skinshop.MySkinActivity;
import com.dianxinos.powermanager.skinshop.OperationConfigActivity;

public class apl extends Handler
{

    final MySkinActivity a;

    public apl(MySkinActivity myskinactivity)
    {
        a = myskinactivity;
        super();
    }

    public void handleMessage(Message message)
    {
label0:
        {
            if (message.what == 1092)
            {
                if (!MySkinActivity.a(a))
                {
                    break label0;
                }
                Intent intent = new Intent(a, com/dianxinos/powermanager/skinshop/OperationConfigActivity);
                intent.putExtra("from_arc", true);
                a.startActivity(intent);
            }
            return;
        }
        MySkinActivity.b(a);
    }
}
