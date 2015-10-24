// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import com.dianxinos.powermanager.smart.CpuSelectDialog;

public class ark
    implements bai
{

    final CpuSelectDialog a;

    public ark(CpuSelectDialog cpuselectdialog)
    {
        a = cpuselectdialog;
        super();
    }

    public void a(int i)
    {
        switch (i)
        {
        default:
            return;

        case 2: // '\002'
            CpuSelectDialog.b(a).sendEmptyMessage(CpuSelectDialog.a());
            return;

        case 1: // '\001'
            CpuSelectDialog.b(a).sendEmptyMessage(CpuSelectDialog.b());
            return;

        case 0: // '\0'
            CpuSelectDialog.b(a).sendEmptyMessage(CpuSelectDialog.c());
            return;
        }
    }
}
