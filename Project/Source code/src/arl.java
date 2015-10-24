// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.dianxinos.powermanager.smart.CpuSelectDialog;

public class arl extends Handler
{

    final CpuSelectDialog a;

    private arl(CpuSelectDialog cpuselectdialog)
    {
        a = cpuselectdialog;
        super();
    }

    public arl(CpuSelectDialog cpuselectdialog, ari ari)
    {
        this(cpuselectdialog);
    }

    public void handleMessage(Message message)
    {
        if (message.what != CpuSelectDialog.c())
        {
            if (message.what == CpuSelectDialog.a())
            {
                CpuSelectDialog cpuselectdialog2 = a;
                CpuSelectDialog cpuselectdialog3 = a;
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                Toast.makeText(cpuselectdialog2, cpuselectdialog3.getString(0x7f0a0191), 0).show();
                return;
            }
            if (message.what == CpuSelectDialog.b())
            {
                CpuSelectDialog cpuselectdialog = a;
                CpuSelectDialog cpuselectdialog1 = a;
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                Toast.makeText(cpuselectdialog, cpuselectdialog1.getString(0x7f0a0194), 0).show();
                return;
            }
        }
    }
}
