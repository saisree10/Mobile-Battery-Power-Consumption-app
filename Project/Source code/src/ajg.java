// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.diagnostic.DiagnosticMainActivity;

public class ajg
    implements android.view.View.OnClickListener
{

    final DiagnosticMainActivity a;

    public ajg(DiagnosticMainActivity diagnosticmainactivity)
    {
        a = diagnosticmainactivity;
        super();
    }

    public void onClick(View view)
    {
        DiagnosticMainActivity.w(a);
    }
}
