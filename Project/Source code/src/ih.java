// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.DialogInterface;
import android.net.Uri;
import com.dianxinos.acomponent.ui.DownLoadDialogActivity;

public class ih
    implements android.content.DialogInterface.OnClickListener
{

    final String a;
    final String b;
    final String c;
    final DownLoadDialogActivity d;

    public ih(DownLoadDialogActivity downloaddialogactivity, String s, String s1, String s2)
    {
        d = downloaddialogactivity;
        a = s;
        b = s1;
        c = s2;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        hj.a(d).a(a, DownLoadDialogActivity.a().toString(), b, c, 1, null);
        dialoginterface.dismiss();
        d.finish();
    }
}
