// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 


public class bdg extends bct
{

    public bdg()
    {
        this("");
    }

    public bdg(String s)
    {
        super(new bdh(), s);
    }

    public bdg(String s, bde bde)
    {
        super(new bdh(), s, bde);
    }

    static 
    {
        if (Integer.parseInt(android.os.Build.VERSION.SDK) < 8)
        {
            System.setProperty("http.keepAlive", "false");
        }
    }
}
