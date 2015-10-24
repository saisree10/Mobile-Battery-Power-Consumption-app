// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class agd extends Animation
{

    private final float a;
    private final float b;
    private final float c;
    private final float d;
    private final float e;
    private final boolean f;
    private Camera g;
    private int h;
    private int i;

    public agd(float f1, float f2, float f3, float f4, float f5, boolean flag)
    {
        a = f1;
        b = f2;
        c = f3;
        d = f4;
        e = f5;
        f = flag;
    }

    public static agd a(afv afv, int j, boolean flag)
    {
        return a(afv, j, false, flag);
    }

    public static agd a(afv afv, int j, boolean flag, boolean flag1)
    {
        float f1;
        agd agd1;
        if (flag)
        {
            f1 = 90F;
        } else
        {
            f1 = -90F;
        }
        agd1 = new agd(0.0F, f1, -1F, -1F, 0.0F, flag);
        agd1.setDuration(j);
        agd1.setInterpolator(new AccelerateInterpolator());
        agd1.setAnimationListener(new age(flag1, afv, flag, j));
        return agd1;
    }

    protected void applyTransformation(float f1, Transformation transformation)
    {
        float f2 = a;
        float f3 = f2 + f1 * (b - f2);
        float f4;
        float f5;
        Camera camera;
        Matrix matrix;
        if (c == -1F)
        {
            f4 = (float)h / 2.0F;
        } else
        {
            f4 = c;
        }
        if (d == -1F)
        {
            f5 = (float)i / 2.0F;
        } else
        {
            f5 = d;
        }
        camera = g;
        matrix = transformation.getMatrix();
        matrix.setScale(1.1F, 1.1F, f4, f5);
        camera.save();
        if (f)
        {
            camera.translate(0.0F, 0.0F, f1 * e);
        } else
        {
            camera.translate(0.0F, 0.0F, e * (1.0F - f1));
        }
        camera.rotateY(f3);
        camera.getMatrix(matrix);
        camera.restore();
        matrix.preTranslate(-f4, -f5);
        matrix.postTranslate(f4, f5);
    }

    public void initialize(int j, int k, int l, int i1)
    {
        super.initialize(j, k, l, i1);
        h = j;
        i = k;
        g = new Camera();
    }
}
