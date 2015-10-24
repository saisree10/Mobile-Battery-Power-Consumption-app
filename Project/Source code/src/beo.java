// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class beo extends ben
{

    public beo(bdr bdr)
    {
        super(bdr);
    }

    public void a()
    {
        if (!(a instanceof bdz)) goto _L2; else goto _L1
_L1:
        if (((bdz)a).d() != null) goto _L4; else goto _L3
_L3:
        return;
_L4:
        int i;
        i = b.ak();
        if (!b.ab())
        {
            break; /* Loop/switch isn't completed */
        }
        int i1 = 0;
        while (i1 < i) 
        {
            if (b.t(i1))
            {
                b.a(b.u(i1), i1);
            }
            i1++;
        }
        if (true) goto _L3; else goto _L5
_L5:
        bed abed[] = ((bdz)a).d().c();
        int j = abed.length;
        if (j > 0)
        {
            int k = 0;
            while (k < i) 
            {
                double ad[] = {
                    1.7976931348623157E+308D, -1.7976931348623157E+308D, 1.7976931348623157E+308D, -1.7976931348623157E+308D
                };
                for (int l = 0; l < j; l++)
                {
                    if (k == abed[l].a())
                    {
                        ad[0] = Math.min(ad[0], abed[l].f());
                        ad[1] = Math.max(ad[1], abed[l].h());
                        ad[2] = Math.min(ad[2], abed[l].g());
                        ad[3] = Math.max(ad[3], abed[l].i());
                    }
                }

                double d = Math.abs(ad[1] - ad[0]) / 40D;
                double d1 = Math.abs(ad[3] - ad[2]) / 40D;
                bei bei1 = b;
                double ad1[] = new double[4];
                ad1[0] = ad[0] - d;
                ad1[1] = d + ad[1];
                ad1[2] = ad[2] - d1;
                ad1[3] = d1 + ad[3];
                bei1.a(ad1, k);
                k++;
            }
        }
        if (true) goto _L3; else goto _L2
_L2:
        bef bef1 = ((bdw)a).a();
        bef1.b(bef1.w());
        return;
    }
}
