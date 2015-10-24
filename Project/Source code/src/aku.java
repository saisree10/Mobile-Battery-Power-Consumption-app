// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;

public class aku
{

    private Dialog a;
    private boolean b;
    private int c;

    public aku()
    {
        c = -1;
    }

    private Dialog a(Context context, int i, Bundle bundle)
    {
        switch (i)
        {
        default:
            return null;

        case 1: // '\001'
        case 2: // '\002'
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            break;
        }
        Uri uri = Uri.parse(aec.a(context.getString(0x7f0a01be)));
        Dialog dialog = new Dialog(context);
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
        android.app.AlertDialog.Builder builder1 = builder.setTitle(bundle.getInt("titleId")).setIcon(0x108008a).setMessage(bundle.getInt("messageId")).setCancelable(false);
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        android.app.AlertDialog.Builder builder2 = builder1.setPositiveButton(0x7f0a0114, new akw(this, dialog));
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        builder2.setNegativeButton(0x7f0a01bd, new akv(this, uri, context));
        return builder.create();
    }

    static boolean a(aku aku1, boolean flag)
    {
        aku1.b = flag;
        return flag;
    }

    public void a()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = b;
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (a != null)
        {
            a.dismiss();
        }
        b = false;
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void a(Activity activity, int i)
    {
        Bundle bundle;
        if (b || activity.isFinishing())
        {
            return;
        }
        bundle = new Bundle();
        if (i != 2) goto _L2; else goto _L1
_L1:
        ly.i;
        bundle.putInt("titleId", 0x7f0a01b7);
        ly.i;
        bundle.putInt("messageId", 0x7f0a01b8);
_L4:
        a = a(((Context) (activity)), i, bundle);
        if (a != null)
        {
            a.show();
        }
        b = true;
        return;
_L2:
        if (i == 1)
        {
            ly.i;
            bundle.putInt("titleId", 0x7f0a01b5);
            ly.i;
            bundle.putInt("messageId", 0x7f0a01b6);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
