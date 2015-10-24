// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.DialogInterface;
import com.dianxinos.acomponent.ui.DownLoadDialogActivity;

public class ii
    implements android.content.DialogInterface.OnClickListener
{

    final DownLoadDialogActivity a;

    public ii(DownLoadDialogActivity downloaddialogactivity)
    {
        a = downloaddialogactivity;
        super();
    }

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        a.finish();
    }
}
