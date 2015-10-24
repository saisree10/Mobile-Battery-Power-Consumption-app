// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.dianxinos.powermanager.batterytheme;

import aao;
import adp;
import adt;
import adu;
import adv;
import adw;
import adx;
import android.content.ContentResolver;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;
import auu;
import avc;
import java.io.FileNotFoundException;
import ly;

// Referenced classes of package com.dianxinos.powermanager.batterytheme:
//            CropMaskImage

public class CropImageActivity extends aao
    implements android.view.View.OnClickListener, android.view.View.OnTouchListener
{

    private Bitmap a;
    private ImageView b;
    private ImageView c;
    private CropMaskImage d;
    private Button e;
    private Bitmap f;
    private Rect g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private Matrix n;
    private Matrix o;
    private float p;
    private float q;
    private int r;
    private PointF s;
    private PointF t;
    private float u;
    private avc v;
    private AsyncTask w;
    private Toast x;
    private boolean y;
    private Handler z;

    public CropImageActivity()
    {
        g = new Rect();
        n = new Matrix();
        o = new Matrix();
        p = 5F;
        q = 0.2F;
        r = 0;
        s = new PointF();
        t = new PointF();
        u = 1.0F;
        y = false;
        z = new adt(this);
    }

    private float a(MotionEvent motionevent)
    {
        float f1 = motionevent.getX(0) - motionevent.getX(1);
        float f2 = motionevent.getY(0) - motionevent.getY(1);
        return (float)Math.sqrt(f1 * f1 + f2 * f2);
    }

    public static int a(CropImageActivity cropimageactivity, int i1)
    {
        cropimageactivity.h = i1;
        return i1;
    }

    private Bitmap a(Uri uri)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        ContentResolver contentresolver = getContentResolver();
        int i1;
        int j1;
        int k1;
        int l1;
        Bitmap bitmap;
        try
        {
            BitmapFactory.decodeStream(contentresolver.openInputStream(uri), null, options);
            i1 = Math.max(options.outWidth / h, 1);
            j1 = Math.max(options.outHeight / i, 1);
        }
        catch (OutOfMemoryError outofmemoryerror)
        {
            outofmemoryerror.printStackTrace();
            return null;
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            filenotfoundexception.printStackTrace();
            return null;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        if (i1 <= 1 && j1 <= 1)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        k1 = Math.max(i1, j1);
        l1 = 1;
_L2:
        k1 /= 2;
        if (k1 <= 0)
        {
            break; /* Loop/switch isn't completed */
        }
        l1++;
        if (true) goto _L2; else goto _L1
_L1:
        options.inSampleSize = 1 << l1;
        options.inJustDecodeBounds = false;
        bitmap = BitmapFactory.decodeStream(contentresolver.openInputStream(uri), null, options);
        return bitmap;
    }

    private Bitmap a(View view)
    {
        Bitmap bitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(bitmap));
        return bitmap;
    }

    public static Bitmap a(CropImageActivity cropimageactivity, Bitmap bitmap)
    {
        cropimageactivity.f = bitmap;
        return bitmap;
    }

    public static Bitmap a(CropImageActivity cropimageactivity, Uri uri)
    {
        return cropimageactivity.a(uri);
    }

    public static Rect a(CropImageActivity cropimageactivity, Rect rect)
    {
        cropimageactivity.g = rect;
        return rect;
    }

    public static ImageView a(CropImageActivity cropimageactivity)
    {
        return cropimageactivity.b;
    }

    private void a(PointF pointf, MotionEvent motionevent)
    {
        float f1 = motionevent.getX(0) + motionevent.getX(1);
        float f2 = motionevent.getY(0) + motionevent.getY(1);
        pointf.set(f1 / 2.0F, f2 / 2.0F);
    }

    public static void a(CropImageActivity cropimageactivity, boolean flag)
    {
        cropimageactivity.a(flag);
    }

    private static void a(String s1)
    {
    }

    private void a(boolean flag)
    {
        c(flag);
        g();
        b(true);
        a(true, true);
        e();
        b.setImageMatrix(n);
    }

    private void a(boolean flag, boolean flag1)
    {
        RectF rectf;
        float f1;
        float f2;
        Matrix matrix = new Matrix();
        matrix.set(n);
        rectf = new RectF(0.0F, 0.0F, f.getWidth(), f.getHeight());
        matrix.mapRect(rectf);
        f1 = rectf.height();
        f2 = rectf.width();
        if (!flag1) goto _L2; else goto _L1
_L1:
        if (f1 >= (float)i) goto _L4; else goto _L3
_L3:
        float f3 = ((float)i - f1) / 2.0F - rectf.top;
_L10:
        float f4 = 0.0F;
        if (!flag) goto _L6; else goto _L5
_L5:
        if (f2 >= (float)h) goto _L8; else goto _L7
_L7:
        f4 = ((float)h - f2) / 2.0F - rectf.left;
_L6:
        n.postTranslate(f4, f3);
        return;
_L4:
        if (rectf.top > 0.0F)
        {
            f3 = -rectf.top;
        } else
        {
            if (rectf.bottom >= (float)i)
            {
                break; /* Loop/switch isn't completed */
            }
            f3 = (float)b.getHeight() - rectf.bottom;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        if (rectf.left > 0.0F)
        {
            f4 = -rectf.left;
        } else
        {
            int i1 = rectf.right != (float)h;
            f4 = 0.0F;
            if (i1 > 0)
            {
                f4 = (float)h - rectf.right;
            }
        }
        if (true) goto _L6; else goto _L2
_L2:
        f3 = 0.0F;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private boolean a(float f1, float f2)
    {
        RectF rectf = f();
        return rectf != null && rectf.contains(f1, f2);
    }

    public static int b(CropImageActivity cropimageactivity, int i1)
    {
        cropimageactivity.i = i1;
        return i1;
    }

    public static Handler b(CropImageActivity cropimageactivity)
    {
        return cropimageactivity.z;
    }

    private void b(boolean flag)
    {
        if (flag || r == 2)
        {
            float af[] = new float[9];
            n.getValues(af);
            float f1 = Math.max(Math.abs(af[0]), Math.abs(af[1]));
            if (f1 < q)
            {
                n.setScale(q, q);
                a(true, true);
            }
            if (f1 > p)
            {
                n.set(o);
            }
        }
    }

    private void c()
    {
        Uri uri = getIntent().getData();
        if (uri == null)
        {
            a("GetImageByUri uri equals null");
            return;
        } else
        {
            d();
            w = (new adx(this, null)).execute(new Uri[] {
                uri
            });
            return;
        }
    }

    public static void c(CropImageActivity cropimageactivity)
    {
        cropimageactivity.c();
    }

    private void c(boolean flag)
    {
        int i1;
        android.graphics.BitmapFactory.Options options;
        int j1;
        int k1;
        if (flag)
        {
            com.dianxinos.dxbs.R.drawable _tmp = ly.e;
            i1 = 0x7f020114;
        } else
        {
            com.dianxinos.dxbs.R.drawable _tmp1 = ly.e;
            i1 = 0x7f020115;
        }
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeResource(getResources(), i1, options);
        j1 = options.outHeight;
        k1 = options.outWidth;
        j = (h - k1) / 2 + d.getPaddingLeft();
        k = (i - j1) / 2 + d.getPaddingTop();
        l = k1 - d.getPaddingLeft() - d.getPaddingRight();
        m = j1 - d.getPaddingTop() - d.getPaddingBottom();
    }

    private void d()
    {
        if (w != null)
        {
            w.cancel(true);
        }
    }

    public static void d(CropImageActivity cropimageactivity)
    {
        cropimageactivity.d();
    }

    private void e()
    {
        boolean flag = true;
        RectF rectf = f();
        boolean flag1;
        if (rectf.left > (float)j)
        {
            n.postTranslate((float)j - rectf.left, 0.0F);
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        if (!flag1 && rectf.right < (float)(j + l))
        {
            n.postTranslate((float)(j + l) - rectf.right, 0.0F);
        }
        if (rectf.top > (float)k)
        {
            n.postTranslate(0.0F, (float)k - rectf.top);
        } else
        {
            flag = false;
        }
        if (!flag && rectf.bottom < (float)(k + m))
        {
            n.postTranslate(0.0F, (float)(k + m) - rectf.bottom);
        }
    }

    private RectF f()
    {
        float af[] = new float[9];
        n.getValues(af);
        float f1 = Math.max(Math.abs(af[0]), Math.abs(af[1]));
        return new RectF(af[2], af[5], af[2] + f1 * (float)g.width(), af[5] + f1 * (float)g.height());
    }

    private void g()
    {
        float f1 = f.getWidth();
        float f2 = f.getHeight();
        float f3 = Math.min((float)h / f1, (float)i / f2);
        n.setScale(f3, f3);
        if (f3 > p)
        {
            p = f3;
        }
        q = Math.max((float)l / f1, (float)m / f2);
    }

    private Bitmap h()
    {
        return Bitmap.createBitmap(a(b), j, k, l, m);
    }

    private void i()
    {
        auu auu1 = new auu(this);
        com.dianxinos.dxbs.R.string _tmp = ly.i;
        auu1.setTitle(0x7f0a0285);
        com.dianxinos.dxbs.R.string _tmp1 = ly.i;
        auu1.c(0x7f0a0270);
        com.dianxinos.dxbs.R.string _tmp2 = ly.i;
        auu1.a(0x7f0a0114, new adv(this));
        com.dianxinos.dxbs.R.string _tmp3 = ly.i;
        auu1.b(0x7f0a0115, null);
        auu1.show();
    }

    public void a()
    {
        if (v == null)
        {
            com.dianxinos.dxbs.R.style _tmp = ly.j;
            v = new avc(this, 0x7f0b001a);
            v.setOnCancelListener(new adw(this));
        }
        v.show();
    }

    public void a(int i1)
    {
        if (x == null)
        {
            x = Toast.makeText(this, i1, 1);
        }
        x.setText(i1);
        x.show();
    }

    public void b()
    {
        if (v != null)
        {
            v.dismiss();
        }
    }

    public void onClick(View view)
    {
        if (view != e) goto _L2; else goto _L1
_L1:
        if (y) goto _L4; else goto _L3
_L3:
        a = h();
        CropMaskImage cropmaskimage = d;
        ly.e;
        cropmaskimage.setBackgroundResource(0x7f020115);
        d.setMessage(null);
        Button button = e;
        ly.i;
        button.setText(0x7f0a028e);
        z.sendEmptyMessage(4);
        y = true;
_L6:
        return;
_L4:
        adp adp1 = adp.a(this);
        adp1.a(a, h(), new adu(this, adp1));
        return;
_L2:
        if (view == c)
        {
            i();
            return;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        com.dianxinos.dxbs.R.layout _tmp = ly.g;
        setContentView(0x7f03002c);
        com.dianxinos.dxbs.R.id _tmp1 = ly.f;
        b = (ImageView)findViewById(0x7f0700a1);
        com.dianxinos.dxbs.R.id _tmp2 = ly.f;
        c = (ImageView)findViewById(0x7f070026);
        com.dianxinos.dxbs.R.id _tmp3 = ly.f;
        d = (CropMaskImage)findViewById(0x7f0700a2);
        d.setMessage(Message.obtain(z, 5));
        com.dianxinos.dxbs.R.id _tmp4 = ly.f;
        e = (Button)findViewById(0x7f0700a4);
        c.setOnClickListener(this);
        e.setOnClickListener(this);
        b.setOnTouchListener(this);
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        if (i1 == 4)
        {
            i();
            return true;
        } else
        {
            return super.onKeyDown(i1, keyevent);
        }
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        float f1;
        float f2;
        if (!(view instanceof ImageView))
        {
            return true;
        }
        f1 = motionevent.getX();
        f2 = motionevent.getY();
        0xff & motionevent.getAction();
        JVM INSTR tableswitch 0 6: default 72
    //                   0 90
    //                   1 184
    //                   2 196
    //                   3 72
    //                   4 72
    //                   5 137
    //                   6 184;
           goto _L1 _L2 _L3 _L4 _L1 _L1 _L5 _L3
_L1:
        ((ImageView)view).setImageMatrix(n);
        b(false);
        return true;
_L2:
        o.set(n);
        s.set(f1, f2);
        if (a(f1, f2))
        {
            r = 1;
        } else
        {
            r = 0;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if (a(f1, f2))
        {
            o.set(n);
            u = a(motionevent);
            a(t, motionevent);
            r = 2;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        r = 0;
        e();
        continue; /* Loop/switch isn't completed */
_L4:
        if (r == 1)
        {
            n.set(o);
            n.postTranslate(f1 - s.x, f2 - s.y);
        } else
        if (r == 2)
        {
            n.set(o);
            float f3 = a(motionevent) / u;
            n.postScale(f3, f3, t.x, t.y);
        }
        if (true) goto _L1; else goto _L6
_L6:
    }
}
