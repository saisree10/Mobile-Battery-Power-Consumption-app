// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.os.AsyncTask;

class awy extends AsyncTask
{

    final awu a;
    private int b;
    private int c;

    public awy(awu awu1, int i, int j)
    {
        a = awu1;
        super();
        b = i;
        c = j;
    }

    protected transient Void a(Void avoid[])
    {
        if (b >= awu.b(a) / 2) goto _L2; else goto _L1
_L1:
        int j = b;
_L7:
        if (j < 0) goto _L4; else goto _L3
_L3:
        if (!isCancelled()) goto _L6; else goto _L5
_L5:
        Integer ainteger3[] = new Integer[2];
        ainteger3[0] = Integer.valueOf(0);
        ainteger3[1] = Integer.valueOf(c);
        publishProgress(ainteger3);
_L4:
        return null;
_L6:
        Integer ainteger2[] = new Integer[2];
        ainteger2[0] = Integer.valueOf(j);
        ainteger2[1] = Integer.valueOf(c);
        publishProgress(ainteger2);
        j -= 4;
          goto _L7
_L2:
        int i = b;
_L8:
        if (i <= awu.b(a))
        {
label0:
            {
                if (!isCancelled())
                {
                    break label0;
                }
                Integer ainteger1[] = new Integer[2];
                ainteger1[0] = Integer.valueOf(awu.b(a));
                ainteger1[1] = Integer.valueOf(c);
                publishProgress(ainteger1);
            }
        }
          goto _L4
        Integer ainteger[] = new Integer[2];
        ainteger[0] = Integer.valueOf(i);
        ainteger[1] = Integer.valueOf(c);
        publishProgress(ainteger);
        i += 4;
          goto _L8
    }

    protected transient void a(Integer ainteger[])
    {
        if (awu.c(a) != null)
        {
            int i = ainteger[0].intValue();
            int j = ainteger[1].intValue();
            awu.c(a).a(i, j);
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    protected void onProgressUpdate(Object aobj[])
    {
        a((Integer[])aobj);
    }
}
