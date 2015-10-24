// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.util.Log;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;

public class bcj
    implements Runnable
{

    static final String f = bcj.getName();
    String a;
    String b;
    String c;
    String d;
    int e;
    private bco g;

    public bcj(String s, String s1, String s2, String s3, int i, bco bco1)
    {
        a = null;
        b = null;
        c = null;
        d = null;
        e = 10000;
        a = s;
        b = s1;
        c = s2;
        d = s3;
        e = i;
        g = bco1;
    }

    public void run()
    {
        int i = 0;
        Socket socket = new Socket(a, 8080);
        BufferedWriter bufferedwriter;
        BufferedReader bufferedreader;
        char ac[];
        socket.setSoTimeout(e);
        bufferedwriter = new BufferedWriter(new PrintWriter(socket.getOutputStream()));
        bufferedreader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
        bufferedwriter.write((new StringBuilder("<handle sig=FF44EE55 session_id=")).append(c).append(" org_id=").append(b).append(" w=").append(d).append(" />").toString());
        bufferedwriter.flush();
        if (bufferedreader.read() == -1)
        {
            break MISSING_BLOCK_LABEL_166;
        }
        ac = (new char[] {
            '\0'
        });
_L2:
        if (i >= 15)
        {
            break; /* Loop/switch isn't completed */
        }
        bufferedwriter.write(ac);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        bufferedreader.read();
        if (socket == null)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        socket.close();
_L4:
        return;
        UnknownHostException unknownhostexception;
        unknownhostexception;
        socket = null;
_L9:
        Log.w("Failed to connect to the fp server", unknownhostexception);
        if (socket == null) goto _L4; else goto _L3
_L3:
        try
        {
            socket.close();
            return;
        }
        catch (IOException ioexception1)
        {
            return;
        }
        IOException ioexception2;
        ioexception2;
        socket = null;
_L8:
        Log.w("Failed to read/write to the fp server", ioexception2);
        if (g != null)
        {
            g.d();
        }
        if (socket == null) goto _L4; else goto _L5
_L5:
        socket.close();
        return;
        Exception exception;
        exception;
        socket = null;
_L7:
        if (socket != null)
        {
            try
            {
                socket.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception;
        exception;
        if (true) goto _L7; else goto _L6
_L6:
        ioexception2;
          goto _L8
        unknownhostexception;
          goto _L9
    }

}
