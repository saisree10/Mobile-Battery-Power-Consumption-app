// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class bcb
    implements Runnable
{

    static final String a = bcb.getName();
    String b;
    String c;
    String d;
    int e;
    StringBuilder f;
    bcq g;
    bck h;

    public bcb(String s, String s1, String s2, int i, StringBuilder stringbuilder)
    {
        b = null;
        c = null;
        d = null;
        e = 10000;
        f = null;
        h = null;
        c = s1;
        d = s;
        e = i;
        f = stringbuilder;
        b = s2;
        g = bcq.b;
        h = new bck();
    }

    public void run()
    {
        bdc bdc1;
        try
        {
            bdg bdg1 = new bdg((new StringBuilder("https://")).append(d).toString(), h);
            bdd bdd1 = bdg1.a();
            bdd1.b("org_id", c);
            bdd1.b("session_id", b);
            bdg1.a(e);
            bdg1.b(e);
            bdg1.a(new bcc(this));
            bdc1 = bdg1.a("/fp/ls_fp.html", bdd1);
        }
        catch (RuntimeException runtimeexception)
        {
            a;
            throw runtimeexception;
        }
        if (bdc1 != null)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        g = h.a;
        Log.w(a, (new StringBuilder("Failed to fetch w: ")).append(g.toString()).toString());
        return;
        if (bdc1.a() >= 400)
        {
            Log.w(a, (new StringBuilder("W fetch error: ")).append(bdc1.a()).toString());
            g = bcq.c;
            return;
        }
        String s = bdc1.d();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_223;
        }
        if (s.length() >= "<body></body><script>var".length())
        {
            break MISSING_BLOCK_LABEL_258;
        }
        Log.w(a, (new StringBuilder("W fetch empty: ")).append(bdc1.a()).toString());
        g = bcq.c;
        return;
        if (!s.regionMatches(true, 0, "<body></body><script>var", 0, "<body></body><script>var".length()))
        {
            Log.w(a, (new StringBuilder("W fetch parse error: ")).append(bdc1.a()).toString());
            g = bcq.c;
            return;
        }
        Matcher matcher = Pattern.compile("='(.*?)'").matcher(s);
        int i = 0;
_L2:
        if (i >= 4)
        {
            break MISSING_BLOCK_LABEL_375;
        }
        if (!matcher.find())
        {
            Log.w(a, (new StringBuilder("W fetch find error: ")).append(bdc1.a()).toString());
            g = bcq.c;
            return;
        }
        break MISSING_BLOCK_LABEL_393;
        f.append(bco.a(matcher.group(1)));
        return;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

}
