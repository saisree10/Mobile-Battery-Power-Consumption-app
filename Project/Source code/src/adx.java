// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Handler;
import com.dianxinos.powermanager.batterytheme.CropImageActivity;

public class adx extends AsyncTask
{

    final CropImageActivity a;

    private adx(CropImageActivity cropimageactivity)
    {
        a = cropimageactivity;
        super();
    }

    public adx(CropImageActivity cropimageactivity, adt adt)
    {
        this(cropimageactivity);
    }

    public transient Bitmap a(Uri auri[])
    {
        return CropImageActivity.a(a, auri[0]);
    }

    public void a(Bitmap bitmap)
    {
        if (isCancelled())
        {
            return;
        }
        if (bitmap == null)
        {
            CropImageActivity cropimageactivity = a;
            com.dianxinos.dxbs.R.string _tmp = ly.i;
            cropimageactivity.a(0x7f0a028f);
            a.finish();
            return;
        } else
        {
            CropImageActivity.b(a).post(new ady(this, bitmap));
            CropImageActivity.b(a).sendEmptyMessage(3);
            return;
        }
    }

    public Object doInBackground(Object aobj[])
    {
        return a((Uri[])aobj);
    }

    public void onPostExecute(Object obj)
    {
        a((Bitmap)obj);
    }

    protected void onPreExecute()
    {
        a.a();
    }
}
