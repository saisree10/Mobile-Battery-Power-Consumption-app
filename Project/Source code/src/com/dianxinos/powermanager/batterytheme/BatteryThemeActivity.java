// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.batterytheme;

import aao;
import acz;
import adi;
import adm;
import adn;
import ado;
import adp;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;
import auu;
import awg;
import azg;
import azo;
import azz;
import bab;
import bad;
import bal;
import com.dianxinos.powermanager.ui.DxBatteryGraph;
import com.dianxinos.powermanager.ui.MainTitle;
import com.facebook.Session;
import iq;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import ly;
import zr;

// Referenced classes of package com.dianxinos.powermanager.batterytheme:
//            BatteryThemeItemView, CropImageActivity

public class BatteryThemeActivity extends aao
    implements android.view.View.OnClickListener
{

    private adp a;
    private ProgressDialog b;
    private Uri c;
    private boolean d;
    private DxBatteryGraph e;
    private DxBatteryGraph f;
    private Button g;
    private BatteryThemeItemView h;
    private BatteryThemeItemView i;
    private BatteryThemeItemView j;
    private BatteryThemeItemView k;
    private View l;
    private BatteryThemeItemView m;
    private BatteryThemeItemView n;
    private BatteryThemeItemView o;
    private Button p;
    private boolean q;
    private String r;
    private int s;
    private ArrayList t;
    private long u;
    private ImageView v;
    private adi w;
    private azz x;
    private awg y;
    private Handler z;

    public BatteryThemeActivity()
    {
        d = true;
        q = true;
        t = new ArrayList();
        z = new adm(this);
    }

    public static adp a(BatteryThemeActivity batterythemeactivity)
    {
        return batterythemeactivity.a;
    }

    private void a()
    {
        if (t.size() > 0)
        {
            p.setVisibility(0);
            m.setThumbnail(a.a("ct_", ((Integer)t.get(0)).intValue(), true));
            m.setVisibility(0);
            m.setClickable(true);
        } else
        {
            p.setVisibility(8);
            q = false;
            c();
            m.setVisibility(4);
            m.setClickable(false);
        }
        if (t.size() > 1)
        {
            n.setThumbnail(a.a("ct_", ((Integer)t.get(1)).intValue(), true));
            n.setVisibility(0);
            n.setClickable(true);
        } else
        {
            n.setVisibility(4);
            n.setClickable(false);
        }
        if (t.size() > 2)
        {
            o.setThumbnail(a.a("ct_", ((Integer)t.get(2)).intValue(), true));
            o.setVisibility(0);
            o.setClickable(true);
        } else
        {
            o.setVisibility(4);
            o.setClickable(false);
        }
        if (q)
        {
            m.b();
            n.b();
            o.b();
            return;
        } else
        {
            m.a();
            n.a();
            o.a();
            return;
        }
    }

    private void a(int i1)
    {
        byte byte0 = 4;
        DxBatteryGraph dxbatterygraph;
        int j1;
        DxBatteryGraph dxbatterygraph1;
        Button button;
        int k1;
        if (i1 == 0)
        {
            d = true;
        } else
        if (1 == i1)
        {
            d = false;
        }
        dxbatterygraph = e;
        if (d)
        {
            j1 = 0;
        } else
        {
            j1 = byte0;
        }
        dxbatterygraph.setVisibility(j1);
        dxbatterygraph1 = f;
        if (!d)
        {
            byte0 = 0;
        }
        dxbatterygraph1.setVisibility(byte0);
        button = g;
        if (d)
        {
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            k1 = 0x7f0a026f;
        } else
        {
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            k1 = 0x7f0a026e;
        }
        button.setText(k1);
    }

    public static void a(Context context)
    {
        Bitmap bitmap = b(context);
        adp adp1 = adp.a(context);
        try
        {
            String s1 = azo.a(context);
            (new File(s1, (new StringBuilder()).append("tmp").append(adp1.d()).append(".jpg").toString())).delete();
            adp1.e();
            File file = new File(s1, (new StringBuilder()).append("tmp").append(adp1.d()).append(".jpg").toString());
            FileOutputStream fileoutputstream = new FileOutputStream(file);
            bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, fileoutputstream);
            fileoutputstream.flush();
            fileoutputstream.close();
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setPackage(e(context));
            intent.setType("image/jpeg");
            intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(file));
            context.startActivity(intent);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public static void a(BatteryThemeActivity batterythemeactivity, boolean flag)
    {
        batterythemeactivity.a(flag);
    }

    private void a(boolean flag)
    {
        boolean flag1 = true;
        t = a.l();
        if (flag)
        {
            a();
        }
        h.setSelectedFlag(r.equals("dt"));
        BatteryThemeItemView batterythemeitemview = i;
        boolean flag2;
        BatteryThemeItemView batterythemeitemview1;
        boolean flag3;
        BatteryThemeItemView batterythemeitemview2;
        boolean flag4;
        BatteryThemeItemView batterythemeitemview3;
        boolean flag5;
        BatteryThemeItemView batterythemeitemview4;
        boolean flag6;
        BatteryThemeItemView batterythemeitemview5;
        if (r.equals("pt_") && s == 0)
        {
            flag2 = flag1;
        } else
        {
            flag2 = false;
        }
        batterythemeitemview.setSelectedFlag(flag2);
        batterythemeitemview1 = j;
        if (r.equals("pt_") && s == flag1)
        {
            flag3 = flag1;
        } else
        {
            flag3 = false;
        }
        batterythemeitemview1.setSelectedFlag(flag3);
        batterythemeitemview2 = k;
        if (r.equals("pt_") && s == 2)
        {
            flag4 = flag1;
        } else
        {
            flag4 = false;
        }
        batterythemeitemview2.setSelectedFlag(flag4);
        batterythemeitemview3 = m;
        if (r.equals("ct_") && t.indexOf(Integer.valueOf(s)) == 0)
        {
            flag5 = flag1;
        } else
        {
            flag5 = false;
        }
        batterythemeitemview3.setSelectedFlag(flag5);
        batterythemeitemview4 = n;
        if (r.equals("ct_") && t.indexOf(Integer.valueOf(s)) == flag1)
        {
            flag6 = flag1;
        } else
        {
            flag6 = false;
        }
        batterythemeitemview4.setSelectedFlag(flag6);
        batterythemeitemview5 = o;
        if (!r.equals("ct_") || t.indexOf(Integer.valueOf(s)) != 2)
        {
            flag1 = false;
        }
        batterythemeitemview5.setSelectedFlag(flag1);
    }

    public static Bitmap b(Context context)
    {
        bal.a(context, "bsnc", "bssftg", Integer.valueOf(1));
        adp adp1 = adp.a(context);
        Bitmap bitmap = adp1.a(adp1.f(), adp1.g(), true);
        if (bitmap == null)
        {
            return null;
        }
        if (adp1.k())
        {
            android.content.res.Resources resources1 = context.getResources();
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            Bitmap bitmap3 = BitmapFactory.decodeResource(resources1, 0x7f020406);
            Bitmap bitmap4 = Bitmap.createBitmap(bitmap3.getWidth(), bitmap3.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
            Bitmap bitmap5 = zr.a(bitmap, 4);
            android.content.res.Resources resources2 = context.getResources();
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            Bitmap bitmap6 = BitmapFactory.decodeResource(resources2, 0x7f020012);
            Canvas canvas1 = new Canvas(bitmap4);
            canvas1.drawBitmap(bitmap3, 0.0F, 0.0F, null);
            canvas1.drawBitmap(zr.a(bitmap5, 328F / (float)bitmap.getWidth()), 112F, 280F, null);
            canvas1.drawBitmap(zr.a(bitmap6, 360F / (float)bitmap6.getWidth()), 100F, 280F, null);
            return bitmap4;
        } else
        {
            android.content.res.Resources resources = context.getResources();
            com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
            Bitmap bitmap1 = BitmapFactory.decodeResource(resources, 0x7f020405);
            Bitmap bitmap2 = Bitmap.createBitmap(bitmap1.getWidth(), bitmap1.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(zr.a(bitmap, 216F / (float)bitmap.getWidth()), 86F, 188F, null);
            canvas.drawBitmap(bitmap1, 0.0F, 0.0F, null);
            return bitmap2;
        }
    }

    public static ArrayList b(BatteryThemeActivity batterythemeactivity)
    {
        return batterythemeactivity.t;
    }

    private void b()
    {
        bab bab1 = x.a(bad.b);
        if (bab1 != null)
        {
            if (y == null)
            {
                y = new awg(this);
            }
            y.dismiss();
            awg awg1 = y;
            int i1;
            if (bab1 == bab.b)
            {
                com.dianxinos.dxbs.R.string _tmp = ly.i;
                i1 = 0x7f0a0304;
            } else
            {
                com.dianxinos.dxbs.R.string _tmp1 = ly.i;
                i1 = 0x7f0a0305;
            }
            awg1.setTitle(i1);
            y.show();
        }
    }

    private void b(int i1)
    {
        long l1 = System.currentTimeMillis();
        if (l1 - u > 2000L)
        {
            u = l1;
            Toast.makeText(this, i1, 0).show();
        }
    }

    private void c()
    {
        if (q)
        {
            Button button2 = p;
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            button2.setBackgroundResource(0x7f02011a);
            Button button3 = p;
            com.dianxinos.dxbs.R.string _tmp1 = ly.i;
            button3.setText(0x7f0a0115);
            q = false;
            return;
        } else
        {
            Button button = p;
            com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
            button.setBackgroundResource(0x7f020121);
            Button button1 = p;
            com.dianxinos.dxbs.R.string _tmp3 = ly.i;
            button1.setText(0x7f0a026d);
            q = true;
            return;
        }
    }

    private void c(int i1)
    {
        auu auu1 = new auu(this);
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        auu1.setTitle(0x7f0a0285);
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        auu1.c(0x7f0a0286);
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        auu1.a(0x7f0a0114, new ado(this, i1));
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        auu1.b(0x7f0a0115, null);
        auu1.show();
    }

    public static void c(BatteryThemeActivity batterythemeactivity)
    {
        batterythemeactivity.e();
    }

    public static boolean c(Context context)
    {
        String s1 = e(context);
        boolean flag;
        if (azg.b[0].equals(s1))
        {
            flag = true;
        } else
        {
            flag = false;
            if (s1 != null)
            {
                return iq.a();
            }
        }
        return flag;
    }

    private void d()
    {
        bal.a(this, "preuse", "bsc", Integer.valueOf(1));
    }

    public static void d(BatteryThemeActivity batterythemeactivity)
    {
        batterythemeactivity.b();
    }

    public static boolean d(Context context)
    {
        return context.getPackageManager().getLaunchIntentForPackage("com.facebook.katana") != null;
    }

    public static ProgressDialog e(BatteryThemeActivity batterythemeactivity)
    {
        return batterythemeactivity.b;
    }

    private static String e(Context context)
    {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("image/jpeg");
        List list = context.getPackageManager().queryIntentActivities(intent, 0);
        int i1 = 0;
        int j1 = 0x7fffffff;
        int k1 = -1;
        while (i1 < list.size()) 
        {
            ResolveInfo resolveinfo = (ResolveInfo)list.get(i1);
            int l1 = 0;
            while (l1 < azg.b.length) 
            {
                int i2;
                int j2;
                if (azg.b[l1].equals(resolveinfo.activityInfo.packageName) && l1 < j1)
                {
                    j2 = l1;
                    i2 = i1;
                } else
                {
                    i2 = k1;
                    j2 = j1;
                }
                l1++;
                j1 = j2;
                k1 = i2;
            }
            i1++;
        }
        if (k1 == -1)
        {
            return null;
        } else
        {
            return ((ResolveInfo)list.get(k1)).activityInfo.packageName;
        }
    }

    private void e()
    {
        r = a.f();
        s = a.g();
        e.a();
        f.a();
    }

    private void f()
    {
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        b(0x7f0a0283);
    }

    private void g()
    {
        Intent intent = new Intent(this, com/dianxinos/powermanager/batterytheme/CropImageActivity);
        intent.setData(c);
        startActivityForResult(intent, 34);
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        if (i1 != 17) goto _L2; else goto _L1
_L1:
        if (j1 == -1 && intent != null)
        {
            c = intent.getData();
            g();
        }
_L4:
        return;
_L2:
        if (i1 != 34)
        {
            break; /* Loop/switch isn't completed */
        }
        if (j1 == -1)
        {
            z.sendEmptyMessage(0);
            return;
        }
        if (j1 == 2)
        {
            z.sendEmptyMessage(1);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        Session session = Session.getActiveSession();
        if (session != null)
        {
            session.onActivityResult(this, i1, j1, intent);
            return;
        }
        if (true) goto _L4; else goto _L5
_L5:
    }

    public void onBackPressed()
    {
        finish();
    }

    public void onClick(View view)
    {
        int i1 = 1;
        if (view != v) goto _L2; else goto _L1
_L1:
        if (!c(this)) goto _L4; else goto _L3
_L3:
        if (!d(this)) goto _L6; else goto _L5
_L5:
        Bitmap bitmap = b(this);
        boolean flag;
        if (!a.k())
        {
            flag = i1;
        } else
        {
            flag = false;
        }
        w = new adi(this, bitmap, flag);
        w.show();
_L8:
        return;
_L6:
        a(this);
        return;
_L4:
        try
        {
            startActivity(azz.b(this));
            return;
        }
        catch (Exception exception1)
        {
            ly.i;
        }
        Toast.makeText(this, getString(0x7f0a01bc), 0).show();
        return;
_L2:
        int j1;
        if (view != g)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!d)
        {
            i1 = 0;
        }
        a(i1);
        j1 = 0;
_L9:
        e();
        a(false);
        if (j1 != 0)
        {
            acz.a(this).d();
            return;
        }
        if (true) goto _L8; else goto _L7
_L7:
        if (view == h)
        {
            if (a.f() != "dt")
            {
                j1 = i1;
            } else
            {
                j1 = 0;
            }
            if (j1 != 0)
            {
                a.a("dt");
                b();
                d();
            }
        } else
        if (view == i)
        {
            if (a.f() != "pt_" || a.g() != 0)
            {
                j1 = i1;
            } else
            {
                j1 = 0;
            }
            if (j1 != 0)
            {
                a.a("pt_");
                a.a(0);
                b();
                d();
            }
        } else
        if (view == j)
        {
            if (a.f() != "pt_" || a.g() != i1)
            {
                j1 = i1;
            } else
            {
                j1 = 0;
            }
            if (j1 != 0)
            {
                a.a("pt_");
                a.a(i1);
                b();
                d();
            }
        } else
        if (view == k)
        {
            if (a.f() != "pt_" || a.g() != 2)
            {
                j1 = i1;
            } else
            {
                j1 = 0;
            }
            if (j1 != 0)
            {
                a.a("pt_");
                a.a(2);
                b();
                d();
            }
        } else
        if (view == l)
        {
            if (3 == t.size())
            {
                ly.i;
                b(0x7f0a0284);
                j1 = 0;
            } else
            {
                try
                {
                    Intent intent = new Intent();
                    intent.setType("image/*");
                    intent.setAction("android.intent.action.GET_CONTENT");
                    startActivityForResult(intent, 17);
                    return;
                }
                catch (Exception exception)
                {
                    Toast.makeText(this, "get image failed", 0).show();
                }
                return;
            }
        } else
        if (view == m)
        {
            if (q)
            {
                a.a("ct_");
                a.a(((Integer)t.get(0)).intValue());
                ly.i;
                Toast.makeText(this, 0x7f0a02bd, 0).show();
                b();
                j1 = 0;
            } else
            if (r == "ct_" && s == ((Integer)t.get(0)).intValue())
            {
                f();
                j1 = 0;
            } else
            {
                c(((Integer)t.get(0)).intValue());
                j1 = 0;
            }
        } else
        if (view == n)
        {
            if (q)
            {
                a.a("ct_");
                a.a(((Integer)t.get(i1)).intValue());
                ly.i;
                Toast.makeText(this, 0x7f0a02bd, 0).show();
                b();
                j1 = 0;
            } else
            if (r == "ct_" && s == ((Integer)t.get(i1)).intValue())
            {
                f();
                j1 = 0;
            } else
            {
                c(((Integer)t.get(i1)).intValue());
                j1 = 0;
            }
        } else
        if (view == o)
        {
            if (q)
            {
                a.a("ct_");
                a.a(((Integer)t.get(2)).intValue());
                ly.i;
                Toast.makeText(this, 0x7f0a02bd, 0).show();
                b();
                j1 = 0;
            } else
            if (r == "ct_" && s == ((Integer)t.get(2)).intValue())
            {
                f();
                j1 = 0;
            } else
            {
                c(((Integer)t.get(2)).intValue());
                j1 = 0;
            }
        } else
        {
            if (view == p)
            {
                c();
                a();
            }
            j1 = 0;
        }
          goto _L9
        if (true) goto _L8; else goto _L10
_L10:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f03000e);
        a = adp.a(this);
        a.b();
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        MainTitle maintitle = (MainTitle)findViewById(0x7f070007);
        com.dianxinos.dxbs.R.drawable _tmp2 = ly.e;
        maintitle.setLeftButtonIcon(0x7f020450);
        maintitle.setLeftButtonOnclickListener(new adn(this));
        maintitle.a();
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        e = (DxBatteryGraph)findViewById(0x7f070027);
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        f = (DxBatteryGraph)findViewById(0x7f070042);
        com.dianxinos.dxbs.R.id _tmp5 = ly.f;
        g = (Button)findViewById(0x7f070044);
        g.setOnClickListener(this);
        r = a.f();
        s = a.g();
        com.dianxinos.dxbs.R.id _tmp6 = ly.f;
        h = (BatteryThemeItemView)findViewById(0x7f070045);
        h.setOnClickListener(this);
        h.setThumbnail(a.a("dt", 0, true));
        BatteryThemeItemView batterythemeitemview = h;
        com.dianxinos.dxbs.R.string _tmp7 = ly.i;
        batterythemeitemview.setName(0x7f0a0280);
        com.dianxinos.dxbs.R.id _tmp8 = ly.f;
        i = (BatteryThemeItemView)findViewById(0x7f070046);
        i.setOnClickListener(this);
        i.setThumbnail(a.a("pt_", 0, true));
        com.dianxinos.dxbs.R.id _tmp9 = ly.f;
        j = (BatteryThemeItemView)findViewById(0x7f070047);
        j.setOnClickListener(this);
        j.setThumbnail(a.a("pt_", 1, true));
        com.dianxinos.dxbs.R.id _tmp10 = ly.f;
        k = (BatteryThemeItemView)findViewById(0x7f070048);
        k.setOnClickListener(this);
        k.setThumbnail(a.a("pt_", 2, true));
        com.dianxinos.dxbs.R.id _tmp11 = ly.f;
        l = findViewById(0x7f07004b);
        l.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp12 = ly.f;
        m = (BatteryThemeItemView)findViewById(0x7f07004c);
        m.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp13 = ly.f;
        n = (BatteryThemeItemView)findViewById(0x7f07004d);
        n.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp14 = ly.f;
        o = (BatteryThemeItemView)findViewById(0x7f07004e);
        o.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp15 = ly.f;
        p = (Button)findViewById(0x7f07004a);
        p.setOnClickListener(this);
        com.dianxinos.dxbs.R.id _tmp16 = ly.f;
        v = (ImageView)findViewById(0x7f070043);
        v.setOnClickListener(this);
        ImageView imageview = v;
        com.dianxinos.dxbs.R.drawable _tmp17 = ly.e;
        imageview.setImageResource(0x7f02012f);
        e();
        a(true);
        Intent intent = getIntent();
        if (intent != null)
        {
            int i1 = intent.getIntExtra("init_show_horizontal", -1);
            if (i1 != -1 && (i1 == 0 || i1 == 1))
            {
                a(i1);
            }
        }
        x = azz.a(this);
    }

    protected void onDestroy()
    {
        if (w != null)
        {
            w.dismiss();
        }
        if (y != null)
        {
            y.dismiss();
        }
        super.onDestroy();
    }

    protected void onResume()
    {
        if (c(this))
        {
            v.setVisibility(0);
        } else
        {
            v.setVisibility(8);
        }
        super.onResume();
    }
}
