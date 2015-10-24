// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.view.KeyEvent;
import android.widget.ImageView;
import android.widget.TextView;

public class po extends Dialog
{

    AnimationDrawable a;
    private TextView b;
    private String c;
    private ImageView d;
    private Context e;
    private Runnable f;

    public po(Context context, int i)
    {
        super(context, i);
        f = new pp(this);
        e = context;
        setContentView(oj.toolbox_loadingdialog);
        b = (TextView)findViewById(oi.toolbox_loading_des);
        d = (ImageView)findViewById(oi.toolbox_loading_dots);
        a = (AnimationDrawable)d.getDrawable();
    }

    private void a()
    {
        d.removeCallbacks(f);
        d.post(f);
    }

    private void b()
    {
        b.setText(c);
    }

    public void a(int i)
    {
        c = e.getString(i);
        if (isShowing())
        {
            b();
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 84)
        {
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    protected void onStart()
    {
        super.onStart();
        a();
        b();
    }
}
