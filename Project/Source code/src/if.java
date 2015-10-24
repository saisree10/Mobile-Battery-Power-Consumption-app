// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.DialogInterface;
import android.net.Uri;
import com.dianxinos.acomponent.ui.DownLoadDialogActivity;

public class if
    implements android.content.DialogInterface.OnClickListener
{

    final String a;
    final String b;
    final DownLoadDialogActivity c;

    public if(DownLoadDialogActivity downloaddialogactivity, String s, String s1)
    {
        c = downloaddialogactivity;
        a = s;
        b = s1;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        hj.a(c).a(DownLoadDialogActivity.a().toString(), a, b);
        dialoginterface.dismiss();
        c.finish();
    }
}
