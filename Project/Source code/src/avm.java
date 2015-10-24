// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import java.util.ArrayList;

public class avm
{

    public static final int a[] = {
        50, 100, 150, 200
    };
    private static final String e[] = {
        "reward_0", "reward_1", "reward_2", "reward_3"
    };
    private static final int f[][] = {
        {
            25, 0, 25
        }, {
            50, 25, 25
        }, {
            25, 100, 25
        }, {
            100, 50, 50
        }
    };
    public String b;
    public int c;
    public int d[];

    public avm(String s, int i, int ai[])
    {
        b = s;
        c = i;
        d = ai;
    }

    public static ArrayList a()
    {
        ArrayList arraylist = new ArrayList();
        for (int i = 0; i < e.length; i++)
        {
            arraylist.add(new avm(e[i], a[i], f[i]));
        }

        return arraylist;
    }

}
