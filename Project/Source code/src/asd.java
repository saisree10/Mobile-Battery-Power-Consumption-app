// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.content.Context;
import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Stack;

class asd
{

    final asc a;
    private int b;
    private int c;
    private ArrayList d;
    private SharedPreferences e;

    public asd(asc asc1, int i)
    {
        a = asc1;
        super();
        b = i;
        c = -1;
        d = new ArrayList(i);
        e = asc.a(asc1).getSharedPreferences("smart_mode_help_stack", 0);
        a();
    }

    private void a()
    {
        c = e.getInt("top", -1);
        for (int i = 0; i < b; i++)
        {
            d.add(i, e.getString((new StringBuilder()).append("content_").append(i).toString(), null));
        }

    }

    private void a(int i)
    {
        android.content.SharedPreferences.Editor editor = e.edit();
        editor.remove((new StringBuilder()).append("content_").append(i).toString());
        editor.putInt("top", i - 1);
        gm.a(editor);
    }

    private void a(int i, String s)
    {
        android.content.SharedPreferences.Editor editor = e.edit();
        editor.putString((new StringBuilder()).append("content_").append(i).toString(), s);
        editor.putInt("top", i);
        gm.a(editor);
    }

    private String b()
    {
        if (c == -1)
        {
            throw new Exception("The stack is empty");
        } else
        {
            String s = (String)d.get(c);
            a(c);
            d.set(c, null);
            c = -1 + c;
            return s;
        }
    }

    private String c()
    {
        return (String)d.get(c);
    }

    private void d()
    {
        for (int i = -1 + b; i != -1; i--)
        {
            a(i);
        }

        c = -1;
    }

    public void a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = d.contains(s);
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (c == -1 + b)
        {
            throw new Exception("The stack is full");
        }
        break MISSING_BLOCK_LABEL_46;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        c = 1 + c;
        a(c, s);
        d.set(c, s);
          goto _L1
    }

    public void b(String s)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = d.contains(s);
        if (flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Stack stack = new Stack();
        for (; !s.equals(c()); stack.push(b())) { }
        break MISSING_BLOCK_LABEL_70;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        d();
          goto _L1
        Exception exception;
        exception;
        throw exception;
        b();
        while (stack.peek() != null) 
        {
            a((String)stack.pop());
        }
          goto _L1
    }
}
