// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

public class adp
{

    private static adp a;
    private SharedPreferences b;
    private Context c;
    private String d;
    private int e;
    private long f;
    private int g;
    private String h;
    private String i;
    private boolean j;
    private ArrayList k;
    private ArrayList l;

    private adp(Context context)
    {
        j = false;
        k = new ArrayList();
        l = new ArrayList();
        c = context;
        b = context.getSharedPreferences("bt_sp", 0);
        d = b.getString("ctt", "dt");
        e = b.getInt("ctn", 0);
        f = b.getLong("ctsid", -1L);
        g = b.getInt("cnau", 0);
        h = b.getString("gumd5", "");
        i = b.getString("jsons", "");
        j = b.getBoolean("iws", false);
    }

    static int a(adp adp1)
    {
        return adp1.g;
    }

    public static adp a(Context context)
    {
        if (a != null) goto _L2; else goto _L1
_L1:
        adp;
        JVM INSTR monitorenter ;
        if (a == null)
        {
            a = new adp(context);
        }
        adp;
        JVM INSTR monitorexit ;
_L2:
        return a;
        Exception exception;
        exception;
        adp;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void a(boolean flag)
    {
        j = flag;
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putBoolean("iws", j);
        gm.a(editor);
    }

    static boolean a(adp adp1, String s1)
    {
        return adp1.f(s1);
    }

    static boolean a(adp adp1, String s1, Bitmap bitmap)
    {
        return adp1.a(s1, bitmap);
    }

    private boolean a(String s1, Bitmap bitmap)
    {
        try
        {
            FileOutputStream fileoutputstream = c.openFileOutput(s1, 0);
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, fileoutputstream);
            fileoutputstream.flush();
            fileoutputstream.close();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return false;
        }
        return true;
    }

    static void b(adp adp1)
    {
        adp1.v();
    }

    private Bitmap d(String s1)
    {
        Bitmap bitmap;
        try
        {
            InputStream inputstream = c.getResources().getAssets().open(s1);
            bitmap = BitmapFactory.decodeStream(inputstream);
            inputstream.close();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return bitmap;
    }

    private Bitmap e(String s1)
    {
        Bitmap bitmap;
        try
        {
            FileInputStream fileinputstream = c.openFileInput(s1);
            bitmap = BitmapFactory.decodeStream(fileinputstream);
            fileinputstream.close();
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return bitmap;
    }

    private boolean f(String s1)
    {
        File file = c.getFileStreamPath(s1);
        if (file == null)
        {
            return false;
        } else
        {
            return file.delete();
        }
    }

    private void t()
    {
        for (Iterator iterator = l.iterator(); iterator.hasNext(); ((adr)iterator.next()).a()) { }
    }

    private Bitmap u()
    {
        Resources resources = c.getResources();
        com.dianxinos.dxbs.R.dimen _tmp = ly.d;
        float f1 = resources.getDimension(0x7f0801d0);
        Resources resources1 = c.getResources();
        com.dianxinos.dxbs.R.color _tmp1 = ly.c;
        int i1 = resources1.getColor(0x7f090095);
        Bitmap bitmap = Bitmap.createBitmap((int)f1, (int)f1, android.graphics.Bitmap.Config.ARGB_8888);
        Rect rect = new Rect(0, 0, (int)f1, (int)f1);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(i1);
        Canvas canvas = new Canvas(bitmap);
        canvas.drawRect(rect, paint);
        canvas.drawBitmap(bitmap, null, rect, null);
        return bitmap;
    }

    private void v()
    {
        g = 1 + g;
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putInt("cnau", g);
        gm.a(editor);
    }

    private boolean w()
    {
        return b.getBoolean("uus", true);
    }

    private void x()
    {
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putBoolean("uus", false);
        gm.a(editor);
    }

    public Bitmap a(String s1, int i1, boolean flag)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (s1.equals("dt"))
        {
            return u();
        }
        String s2;
        if (s1.equals("pt_"))
        {
            stringbuilder.append("pt_");
        } else
        if (s1.equals("ct_"))
        {
            stringbuilder.append("ct_");
        } else
        if (s1.equals("ot_"))
        {
            stringbuilder.append("ot_");
        }
        if (!s1.equals("ot_"))
        {
            stringbuilder.append(i1);
        }
        if (flag)
        {
            s2 = "_h";
        } else
        {
            s2 = "_v";
        }
        stringbuilder.append(s2);
        stringbuilder.append(".jpg");
        if (s1.equals("pt_"))
        {
            return d(stringbuilder.toString());
        } else
        {
            return e(stringbuilder.toString());
        }
    }

    public void a(int i1)
    {
        e = i1;
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putInt("ctn", i1);
        gm.a(editor);
        t();
    }

    public void a(long l1)
    {
        f = l1;
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putLong("ctsid", l1);
        gm.a(editor);
        t();
    }

    public void a(adr adr1)
    {
label0:
        {
            synchronized (l)
            {
                if (l.contains(adr1))
                {
                    break label0;
                }
                l.add(adr1);
            }
            adr1.a();
            return;
        }
        arraylist;
        JVM INSTR monitorexit ;
        return;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(Bitmap bitmap, Bitmap bitmap1, ads ads)
    {
        azi.a().a(new adq(this, bitmap, bitmap1, ads));
    }

    public void a(String s1)
    {
        a(s1, false);
    }

    public void a(String s1, boolean flag)
    {
        d = s1;
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putString("ctt", s1);
        gm.a(editor);
        a(flag);
        if (d.equals("dt"))
        {
            t();
        }
    }

    public void a(ArrayList arraylist)
    {
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putInt("csn", arraylist.size());
        int i1 = 0;
        while (i1 < k.size()) 
        {
            if (i1 < arraylist.size())
            {
                editor.putInt((new StringBuilder()).append("ct_").append(i1).toString(), ((Integer)arraylist.get(i1)).intValue());
            } else
            {
                editor.remove((new StringBuilder()).append("ct_").append(i1).toString());
            }
            i1++;
        }
        gm.a(editor);
    }

    public boolean a()
    {
        return false;
    }

    public void b()
    {
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putInt("btv", 1);
        gm.a(editor);
    }

    public void b(int i1)
    {
        String s1 = (new StringBuilder()).append("ct_").append(i1).append("_h").append(".jpg").toString();
        File file = c.getFileStreamPath(s1);
        if (file != null)
        {
            file.delete();
        }
        String s2 = (new StringBuilder()).append("ct_").append(i1).append("_v").append(".jpg").toString();
        File file1 = c.getFileStreamPath(s2);
        if (file1 != null)
        {
            file1.delete();
        }
    }

    public void b(long l1)
    {
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putLong("lpsss", l1);
        gm.a(editor);
    }

    public void b(String s1)
    {
        i = s1;
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putString("jsons", i);
        gm.a(editor);
    }

    public void c(String s1)
    {
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putString("lpsssu", s1);
        gm.a(editor);
    }

    public boolean c()
    {
        return !d.equalsIgnoreCase("dt");
    }

    public int d()
    {
        return b.getInt("stin", 0);
    }

    public void e()
    {
        int i1 = b.getInt("stin", 0);
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putInt("stin", i1 + 1);
        gm.a(editor);
    }

    public String f()
    {
        return d;
    }

    public int g()
    {
        return e;
    }

    public long h()
    {
        return f;
    }

    public String i()
    {
        return h;
    }

    public String j()
    {
        return i;
    }

    public boolean k()
    {
        return j;
    }

    public ArrayList l()
    {
        k.clear();
        int i1 = b.getInt("csn", 0);
        for (int j1 = 0; j1 < i1; j1++)
        {
            int k1 = b.getInt((new StringBuilder()).append("ct_").append(j1).toString(), 0);
            k.add(Integer.valueOf(k1));
        }

        return k;
    }

    public long m()
    {
        return b.getLong("lpsss", -1L);
    }

    public String n()
    {
        return b.getString("lpsssu", null);
    }

    public boolean o()
    {
        return b.getBoolean("nucs", true);
    }

    public void p()
    {
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putBoolean("nucs", false);
        gm.a(editor);
    }

    public boolean q()
    {
        return b.getBoolean("nups", true);
    }

    public void r()
    {
        android.content.SharedPreferences.Editor editor = b.edit();
        editor.putBoolean("nups", false);
        gm.a(editor);
    }

    public void s()
    {
        if (w())
        {
            x();
            if ("ot_".equals(f()))
            {
                a(-h());
            }
        }
    }
}
