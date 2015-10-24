// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.menu.StatusBarSettings;

public class amf
    implements android.view.View.OnClickListener
{

    final StatusBarSettings a;

    public amf(StatusBarSettings statusbarsettings)
    {
        a = statusbarsettings;
        super();
    }

    public void onClick(View view)
    {
        a.onBackPressed();
    }
}
