// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.dianxinos.powermanager.feedback.HotQAActivity;

public class akm extends LinearLayout
{

    final HotQAActivity a;
    private TextView b;
    private TextView c;

    public akm(HotQAActivity hotqaactivity, Context context)
    {
        a = hotqaactivity;
        super(context);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        inflate(context, 0x7f030045, this);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        b = (TextView)findViewById(0x7f070123);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        c = (TextView)findViewById(0x7f070124);
    }

    public void a(String s, String s1)
    {
        b.setText(s);
        c.setText(s1);
    }
}
