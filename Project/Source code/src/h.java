// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

import android.support.v4.app.Fragment;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

public final class h extends ae
    implements Runnable
{

    final v a;
    public i b;
    i c;
    public int d;
    int e;
    int f;
    int g;
    int h;
    public int i;
    public int j;
    public boolean k;
    boolean l;
    public String m;
    boolean n;
    public int o;
    public int p;
    public CharSequence q;
    public int r;
    public CharSequence s;

    public h(v v1)
    {
        l = true;
        o = -1;
        a = v1;
    }

    private void a(int i1, Fragment fragment, String s1, int j1)
    {
        fragment.mFragmentManager = a;
        if (s1 != null)
        {
            if (fragment.mTag != null && !s1.equals(fragment.mTag))
            {
                throw new IllegalStateException((new StringBuilder()).append("Can't change tag of fragment ").append(fragment).append(": was ").append(fragment.mTag).append(" now ").append(s1).toString());
            }
            fragment.mTag = s1;
        }
        if (i1 != 0)
        {
            if (fragment.mFragmentId != 0 && fragment.mFragmentId != i1)
            {
                throw new IllegalStateException((new StringBuilder()).append("Can't change container ID of fragment ").append(fragment).append(": was ").append(fragment.mFragmentId).append(" now ").append(i1).toString());
            }
            fragment.mFragmentId = i1;
            fragment.mContainerId = i1;
        }
        i k1 = new i();
        k1.c = j1;
        k1.d = fragment;
        a(k1);
    }

    public int a()
    {
        return a(false);
    }

    int a(boolean flag)
    {
        if (n)
        {
            throw new IllegalStateException("commit already called");
        }
        if (v.a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("Commit: ").append(this).toString());
            a("  ", ((FileDescriptor) (null)), new PrintWriter(new bp("FragmentManager")), ((String []) (null)));
        }
        n = true;
        if (k)
        {
            o = a.a(this);
        } else
        {
            o = -1;
        }
        a.a(this, flag);
        return o;
    }

    public ae a(int i1, Fragment fragment, String s1)
    {
        a(i1, fragment, s1, 1);
        return this;
    }

    public ae a(Fragment fragment)
    {
        i i1 = new i();
        i1.c = 6;
        i1.d = fragment;
        a(i1);
        return this;
    }

    public void a(int i1)
    {
        if (k)
        {
            if (v.a)
            {
                Log.v("FragmentManager", (new StringBuilder()).append("Bump nesting in ").append(this).append(" by ").append(i1).toString());
            }
            i j1 = b;
            while (j1 != null) 
            {
                if (j1.d != null)
                {
                    Fragment fragment1 = j1.d;
                    fragment1.mBackStackNesting = i1 + fragment1.mBackStackNesting;
                    if (v.a)
                    {
                        Log.v("FragmentManager", (new StringBuilder()).append("Bump nesting of ").append(j1.d).append(" to ").append(j1.d.mBackStackNesting).toString());
                    }
                }
                if (j1.i != null)
                {
                    for (int k1 = -1 + j1.i.size(); k1 >= 0; k1--)
                    {
                        Fragment fragment = (Fragment)j1.i.get(k1);
                        fragment.mBackStackNesting = i1 + fragment.mBackStackNesting;
                        if (v.a)
                        {
                            Log.v("FragmentManager", (new StringBuilder()).append("Bump nesting of ").append(fragment).append(" to ").append(fragment.mBackStackNesting).toString());
                        }
                    }

                }
                j1 = j1.a;
            }
        }
    }

    public void a(i i1)
    {
        if (b == null)
        {
            c = i1;
            b = i1;
        } else
        {
            i1.b = c;
            c.a = i1;
            c = i1;
        }
        i1.e = e;
        i1.f = f;
        i1.g = g;
        i1.h = h;
        d = 1 + d;
    }

    public void a(String s1, FileDescriptor filedescriptor, PrintWriter printwriter, String as[])
    {
        a(s1, printwriter, true);
    }

    public void a(String s1, PrintWriter printwriter, boolean flag)
    {
        String s2;
        int j1;
        i k1;
        if (flag)
        {
            printwriter.print(s1);
            printwriter.print("mName=");
            printwriter.print(m);
            printwriter.print(" mIndex=");
            printwriter.print(o);
            printwriter.print(" mCommitted=");
            printwriter.println(n);
            if (i != 0)
            {
                printwriter.print(s1);
                printwriter.print("mTransition=#");
                printwriter.print(Integer.toHexString(i));
                printwriter.print(" mTransitionStyle=#");
                printwriter.println(Integer.toHexString(j));
            }
            if (e != 0 || f != 0)
            {
                printwriter.print(s1);
                printwriter.print("mEnterAnim=#");
                printwriter.print(Integer.toHexString(e));
                printwriter.print(" mExitAnim=#");
                printwriter.println(Integer.toHexString(f));
            }
            if (g != 0 || h != 0)
            {
                printwriter.print(s1);
                printwriter.print("mPopEnterAnim=#");
                printwriter.print(Integer.toHexString(g));
                printwriter.print(" mPopExitAnim=#");
                printwriter.println(Integer.toHexString(h));
            }
            if (p != 0 || q != null)
            {
                printwriter.print(s1);
                printwriter.print("mBreadCrumbTitleRes=#");
                printwriter.print(Integer.toHexString(p));
                printwriter.print(" mBreadCrumbTitleText=");
                printwriter.println(q);
            }
            if (r != 0 || s != null)
            {
                printwriter.print(s1);
                printwriter.print("mBreadCrumbShortTitleRes=#");
                printwriter.print(Integer.toHexString(r));
                printwriter.print(" mBreadCrumbShortTitleText=");
                printwriter.println(s);
            }
        }
        if (b == null)
        {
            break MISSING_BLOCK_LABEL_809;
        }
        printwriter.print(s1);
        printwriter.println("Operations:");
        s2 = (new StringBuilder()).append(s1).append("    ").toString();
        i i1 = b;
        j1 = 0;
        k1 = i1;
_L13:
        if (k1 == null) goto _L2; else goto _L1
_L1:
        k1.c;
        JVM INSTR tableswitch 0 7: default 416
    //                   0 691
    //                   1 699
    //                   2 707
    //                   3 715
    //                   4 723
    //                   5 731
    //                   6 739
    //                   7 747;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L11:
        break MISSING_BLOCK_LABEL_747;
_L3:
        String s3 = (new StringBuilder()).append("cmd=").append(k1.c).toString();
_L12:
        printwriter.print(s1);
        printwriter.print("  Op #");
        printwriter.print(j1);
        printwriter.print(": ");
        printwriter.print(s3);
        printwriter.print(" ");
        printwriter.println(k1.d);
        if (flag)
        {
            if (k1.e != 0 || k1.f != 0)
            {
                printwriter.print(s1);
                printwriter.print("enterAnim=#");
                printwriter.print(Integer.toHexString(k1.e));
                printwriter.print(" exitAnim=#");
                printwriter.println(Integer.toHexString(k1.f));
            }
            if (k1.g != 0 || k1.h != 0)
            {
                printwriter.print(s1);
                printwriter.print("popEnterAnim=#");
                printwriter.print(Integer.toHexString(k1.g));
                printwriter.print(" popExitAnim=#");
                printwriter.println(Integer.toHexString(k1.h));
            }
        }
        if (k1.i != null && k1.i.size() > 0)
        {
            int l1 = 0;
            while (l1 < k1.i.size()) 
            {
                printwriter.print(s2);
                if (k1.i.size() == 1)
                {
                    printwriter.print("Removed: ");
                } else
                {
                    if (l1 == 0)
                    {
                        printwriter.println("Removed:");
                    }
                    printwriter.print(s2);
                    printwriter.print("  #");
                    printwriter.print(l1);
                    printwriter.print(": ");
                }
                printwriter.println(k1.i.get(l1));
                l1++;
            }
        }
        break MISSING_BLOCK_LABEL_796;
_L4:
        s3 = "NULL";
          goto _L12
_L5:
        s3 = "ADD";
          goto _L12
_L6:
        s3 = "REPLACE";
          goto _L12
_L7:
        s3 = "REMOVE";
          goto _L12
_L8:
        s3 = "HIDE";
          goto _L12
_L9:
        s3 = "SHOW";
          goto _L12
_L10:
        s3 = "DETACH";
          goto _L12
        s3 = "ATTACH";
          goto _L12
        k1 = k1.a;
        j1++;
          goto _L13
_L2:
    }

    public int b()
    {
        return a(true);
    }

    public ae b(Fragment fragment)
    {
        i i1 = new i();
        i1.c = 7;
        i1.d = fragment;
        a(i1);
        return this;
    }

    public void b(boolean flag)
    {
        i i1;
        if (v.a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("popFromBackStack: ").append(this).toString());
            a("  ", ((FileDescriptor) (null)), new PrintWriter(new bp("FragmentManager")), ((String []) (null)));
        }
        a(-1);
        i1 = c;
_L10:
        if (i1 == null)
        {
            break MISSING_BLOCK_LABEL_468;
        }
        i1.c;
        JVM INSTR tableswitch 1 7: default 116
    //                   1 147
    //                   2 190
    //                   3 291
    //                   4 319
    //                   5 357
    //                   6 395
    //                   7 433;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_433;
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown cmd: ").append(i1.c).toString());
_L2:
        Fragment fragment7 = i1.d;
        fragment7.mNextAnim = i1.h;
        a.a(fragment7, v.c(i), j);
_L11:
        i1 = i1.b;
        if (true) goto _L10; else goto _L9
_L9:
        Fragment fragment5 = i1.d;
        if (fragment5 != null)
        {
            fragment5.mNextAnim = i1.h;
            a.a(fragment5, v.c(i), j);
        }
        if (i1.i != null)
        {
            int j1 = 0;
            while (j1 < i1.i.size()) 
            {
                Fragment fragment6 = (Fragment)i1.i.get(j1);
                fragment6.mNextAnim = i1.g;
                a.a(fragment6, false);
                j1++;
            }
        }
          goto _L11
_L4:
        Fragment fragment4 = i1.d;
        fragment4.mNextAnim = i1.g;
        a.a(fragment4, false);
          goto _L11
_L5:
        Fragment fragment3 = i1.d;
        fragment3.mNextAnim = i1.g;
        a.c(fragment3, v.c(i), j);
          goto _L11
_L6:
        Fragment fragment2 = i1.d;
        fragment2.mNextAnim = i1.h;
        a.b(fragment2, v.c(i), j);
          goto _L11
_L7:
        Fragment fragment1 = i1.d;
        fragment1.mNextAnim = i1.g;
        a.e(fragment1, v.c(i), j);
          goto _L11
        Fragment fragment = i1.d;
        fragment.mNextAnim = i1.g;
        a.d(fragment, v.c(i), j);
          goto _L11
        if (flag)
        {
            a.a(a.n, v.c(i), j, true);
        }
        if (o >= 0)
        {
            a.b(o);
            o = -1;
        }
        return;
    }

    public String c()
    {
        return m;
    }

    public void run()
    {
        i i1;
        if (v.a)
        {
            Log.v("FragmentManager", (new StringBuilder()).append("Run: ").append(this).toString());
        }
        if (k && o < 0)
        {
            throw new IllegalStateException("addToBackStack() called after commit()");
        }
        a(1);
        i1 = b;
_L10:
        if (i1 == null)
        {
            break MISSING_BLOCK_LABEL_639;
        }
        i1.c;
        JVM INSTR tableswitch 1 7: default 116
    //                   1 147
    //                   2 180
    //                   3 470
    //                   4 505
    //                   5 540
    //                   6 575
    //                   7 607;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_607;
_L3:
        break; /* Loop/switch isn't completed */
_L1:
        throw new IllegalArgumentException((new StringBuilder()).append("Unknown cmd: ").append(i1.c).toString());
_L2:
        Fragment fragment8 = i1.d;
        fragment8.mNextAnim = i1.e;
        a.a(fragment8, false);
_L11:
        i1 = i1.a;
        if (true) goto _L10; else goto _L9
_L9:
        Fragment fragment5 = i1.d;
        Fragment fragment6;
        if (a.g != null)
        {
            int j1 = 0;
            fragment6 = fragment5;
            while (j1 < a.g.size()) 
            {
                Fragment fragment7 = (Fragment)a.g.get(j1);
                if (v.a)
                {
                    Log.v("FragmentManager", (new StringBuilder()).append("OP_REPLACE: adding=").append(fragment6).append(" old=").append(fragment7).toString());
                }
                if (fragment6 == null || fragment7.mContainerId == fragment6.mContainerId)
                {
                    if (fragment7 == fragment6)
                    {
                        fragment6 = null;
                        i1.d = null;
                    } else
                    {
                        if (i1.i == null)
                        {
                            i1.i = new ArrayList();
                        }
                        i1.i.add(fragment7);
                        fragment7.mNextAnim = i1.f;
                        if (k)
                        {
                            fragment7.mBackStackNesting = 1 + fragment7.mBackStackNesting;
                            if (v.a)
                            {
                                Log.v("FragmentManager", (new StringBuilder()).append("Bump nesting of ").append(fragment7).append(" to ").append(fragment7.mBackStackNesting).toString());
                            }
                        }
                        a.a(fragment7, i, j);
                    }
                }
                j1++;
            }
        } else
        {
            fragment6 = fragment5;
        }
        if (fragment6 != null)
        {
            fragment6.mNextAnim = i1.e;
            a.a(fragment6, false);
        }
          goto _L11
_L4:
        Fragment fragment4 = i1.d;
        fragment4.mNextAnim = i1.f;
        a.a(fragment4, i, j);
          goto _L11
_L5:
        Fragment fragment3 = i1.d;
        fragment3.mNextAnim = i1.f;
        a.b(fragment3, i, j);
          goto _L11
_L6:
        Fragment fragment2 = i1.d;
        fragment2.mNextAnim = i1.e;
        a.c(fragment2, i, j);
          goto _L11
_L7:
        Fragment fragment1 = i1.d;
        fragment1.mNextAnim = i1.f;
        a.d(fragment1, i, j);
          goto _L11
        Fragment fragment = i1.d;
        fragment.mNextAnim = i1.e;
        a.e(fragment, i, j);
          goto _L11
        a.a(a.n, i, j, true);
        if (k)
        {
            a.b(this);
        }
        return;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(128);
        stringbuilder.append("BackStackEntry{");
        stringbuilder.append(Integer.toHexString(System.identityHashCode(this)));
        if (o >= 0)
        {
            stringbuilder.append(" #");
            stringbuilder.append(o);
        }
        if (m != null)
        {
            stringbuilder.append(" ");
            stringbuilder.append(m);
        }
        stringbuilder.append("}");
        return stringbuilder.toString();
    }
}
