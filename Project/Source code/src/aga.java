// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.view.View;
import com.dianxinos.powermanager.chargingrecord.ChargerRecordActivity;

public class aga
    implements android.view.View.OnClickListener
{

    final ChargerRecordActivity a;

    public aga(ChargerRecordActivity chargerrecordactivity)
    {
        a = chargerrecordactivity;
        super();
    }

    public void onClick(View view)
    {
        a.finish();
    }
}
