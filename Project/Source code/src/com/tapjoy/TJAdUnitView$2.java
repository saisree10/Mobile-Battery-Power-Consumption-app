// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tapjoy;

import android.view.ViewPropertyAnimator;
import android.widget.ImageButton;

// Referenced classes of package com.tapjoy:
//            TJAdUnitView

class 
    implements Runnable
{

    final TJAdUnitView this$0;
    final ImageButton val$closeButton;

    public void run()
    {
        class _cls1
            implements android.animation.Animator.AnimatorListener
        {

            final TJAdUnitView._cls2 this$1;

            public void onAnimationCancel(Animator animator)
            {
            }

            public void onAnimationEnd(Animator animator)
            {
                closeButton.setClickable(true);
            }

            public void onAnimationRepeat(Animator animator)
            {
            }

            public void onAnimationStart(Animator animator)
            {
            }

            _cls1()
            {
                this$1 = TJAdUnitView._cls2.this;
                super();
            }
        }

        val$closeButton.animate().alpha(1.0F).setDuration(500L).setListener(new _cls1());
    }

    ()
    {
        this$0 = final_tjadunitview;
        val$closeButton = ImageButton.this;
        super();
    }
}
