// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.optimizer.module.messagebox;

import aao;
import aar;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.Toast;
import avc;
import azi;
import bal;
import com.dianxinos.powermanager.ui.MainTitle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ly;
import org.json.JSONObject;
import xv;
import xw;
import ya;
import yo;
import yp;
import yq;
import yr;
import ys;
import yv;
import yw;
import yx;
import yy;
import zc;
import zd;
import zr;

// Referenced classes of package com.dianxinos.optimizer.module.messagebox:
//            DisableScrollListView

public class MessageBoxActivity extends aao
    implements xw
{

    private static final int a[];
    private yx b;
    private List c;
    private List d;
    private DisableScrollListView e;
    private avc f;
    private ys g;
    private Handler h;
    private int i;

    public MessageBoxActivity()
    {
        c = new ArrayList();
        d = new ArrayList();
    }

    private Bitmap a(Bitmap bitmap)
    {
        if (i > 0)
        {
            bitmap = zr.a(bitmap, (1.0F * (float)i) / (float)bitmap.getWidth());
        }
        return bitmap;
    }

    public static Bitmap a(MessageBoxActivity messageboxactivity, Bitmap bitmap)
    {
        return messageboxactivity.a(bitmap);
    }

    private void a(int j)
    {
        Exception exception;
        c();
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("action", "mbd");
            jsonobject.put("id", ((zd)c.get(j)).k);
            bal.a(true, this, "msdc", jsonobject);
        }
        catch (Exception exception1)
        {
            b.b((zd)c.get(j));
            c.remove(j);
            g.notifyDataSetChanged();
            return;
        }
        finally
        {
            b.b((zd)c.get(j));
        }
        b.b((zd)c.get(j));
        c.remove(j);
        g.notifyDataSetChanged();
        return;
        c.remove(j);
        g.notifyDataSetChanged();
        throw exception;
    }

    private void a(View view, int j)
    {
        zd zd1;
        Intent intent;
        c();
        zd1 = (zd)c.get(j);
        int k;
        int l;
        boolean flag;
        int i1;
        int j1;
        Exception exception;
        if (zd1.g == 2)
        {
            k = 1;
        } else
        {
            k = 0;
        }
        l = k << 1;
        if (System.currentTimeMillis() - zd1.c.longValue() > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        j1 = i1 + l;
        bal.a(this, "mbmc", zd1.k, j1);
        if (zd1.g != 2)
        {
            if (view.getTag() instanceof yv)
            {
                yv yv1 = (yv)view.getTag();
                yv1.b.setVisibility(8);
                yv1.e.setVisibility(0);
            }
            zd1.g = 2;
            b.a(zd1);
        }
        intent = zc.b(this, zd1);
        if (intent != null) goto _L2; else goto _L1
_L1:
        throw new NullPointerException("intent is null when generate Intent");
        exception;
        if (zd1.i != 2) goto _L4; else goto _L3
_L3:
        ly.i;
        Toast.makeText(this, 0x7f0a02ff, 0).show();
_L6:
        exception.printStackTrace();
        return;
_L2:
        if (zd1.a == 4)
        {
            startActivityForResult(intent, 10);
            return;
        }
        startActivity(intent);
        return;
_L4:
        if (zd1.i == 1)
        {
            ly.i;
            Toast.makeText(this, 0x7f0a0300, 0).show();
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static void a(MessageBoxActivity messageboxactivity)
    {
        messageboxactivity.c();
    }

    public static void a(MessageBoxActivity messageboxactivity, int j)
    {
        messageboxactivity.b(j);
    }

    public static void a(MessageBoxActivity messageboxactivity, View view, int j)
    {
        messageboxactivity.a(view, j);
    }

    public static int[] a()
    {
        return a;
    }

    public static yx b(MessageBoxActivity messageboxactivity)
    {
        return messageboxactivity.b;
    }

    private void b()
    {
        com.dianxinos.dxbs.R.id _tmp = ly.f;
        MainTitle maintitle = (MainTitle)findViewById(0x7f070007);
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        maintitle.setLeftButtonOnclickListener(new yo(this));
        maintitle.a();
        g = new ys(this);
        h = new xv(this);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        e = (DisableScrollListView)findViewById(0x7f07013c);
        e.setAdapter(g);
        e.setOnScrollListener(new yp(this));
    }

    private void b(int j)
    {
        try
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("action", "mbs");
            jsonobject.put("id", ((zd)c.get(j)).k);
            bal.a(true, this, "msdc", jsonobject);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public static void b(MessageBoxActivity messageboxactivity, int j)
    {
        messageboxactivity.a(j);
    }

    public static Handler c(MessageBoxActivity messageboxactivity)
    {
        return messageboxactivity.h;
    }

    private void c()
    {
        for (Iterator iterator = d.iterator(); iterator.hasNext(); ((ya)iterator.next()).a()) { }
    }

    private void d()
    {
        h.obtainMessage(1).sendToTarget();
        azi.a().b(new yq(this));
    }

    public static void d(MessageBoxActivity messageboxactivity)
    {
        messageboxactivity.e();
    }

    public static List e(MessageBoxActivity messageboxactivity)
    {
        return messageboxactivity.c;
    }

    private void e()
    {
        yy.a(this).a(1);
    }

    public static DisableScrollListView f(MessageBoxActivity messageboxactivity)
    {
        return messageboxactivity.e;
    }

    private void f()
    {
        if (f == null)
        {
            com.dianxinos.dxbs.R.style _tmp = ly.j;
            f = new avc(this, 0x7f0b001a);
        }
        if (!isFinishing())
        {
            f.show();
        }
    }

    public static List g(MessageBoxActivity messageboxactivity)
    {
        return messageboxactivity.d;
    }

    private void g()
    {
        if (f != null)
        {
            f.dismiss();
        }
    }

    public void a(Message message)
    {
        switch (message.what)
        {
        case 2: // '\002'
        default:
            return;

        case 1: // '\001'
            f();
            return;

        case 3: // '\003'
            g();
            break;
        }
        List list = (List)message.obj;
        if (list != null && list.size() > 0)
        {
            c.clear();
            c.addAll(list);
            g.notifyDataSetChanged();
            return;
        } else
        {
            DisableScrollListView disablescrolllistview = e;
            com.dianxinos.dxbs.R.id _tmp = ly.f;
            disablescrolllistview.setEmptyView(findViewById(0x7f07013d));
            return;
        }
    }

    protected void onActivityResult(int j, int k, Intent intent)
    {
        if (j == 10)
        {
            azi.a().a(new yr(this));
            return;
        } else
        {
            super.onActivityResult(j, k, intent);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f030048);
        b = new yx((new yw(getApplicationContext())).getWritableDatabase());
        try
        {
            i = ((WindowManager)getSystemService("window")).getDefaultDisplay().getWidth();
        }
        catch (Exception exception) { }
        b();
    }

    protected void onDestroy()
    {
        g();
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
        d();
        aar.a(this).a(false);
    }

    static 
    {
        int ai[] = new int[3];
        com.dianxinos.dxbs.R.drawable _tmp = ly.e;
        ai[0] = 0x7f020200;
        com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
        ai[1] = 0x7f0201fd;
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        ai[2] = 0x7f0201fc;
        a = ai;
    }
}
