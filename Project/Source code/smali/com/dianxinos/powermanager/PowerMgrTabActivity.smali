.class public Lcom/dianxinos/powermanager/PowerMgrTabActivity;
.super Landroid/app/TabActivity;
.source "PowerMgrTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I


# instance fields
.field private A:Z

.field private B:Laoj;

.field private C:Ladp;

.field private D:Lmf;

.field private E:J

.field private F:Landroid/content/BroadcastReceiver;

.field private g:Labw;

.field private h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Lakx;

.field private o:Lcom/dianxinos/powermanager/ui/CustomTabWidget;

.field private p:Lazr;

.field private q:Labv;

.field private r:I

.field private s:Lpa;

.field private t:Lcom/dianxinos/powermanager/ui/MainTitle;

.field private u:Lcom/dianxinos/common/coins/CoinManager;

.field private v:Lavi;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    const/16 v0, 0x100

    sput v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a:I

    .line 170
    const/4 v0, 0x1

    sput v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->b:I

    .line 171
    const/4 v0, 0x3

    sput v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->c:I

    .line 172
    const/16 v0, 0xa

    sput v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->d:I

    .line 173
    const/16 v0, 0x64

    sput v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->e:I

    .line 174
    const/16 v0, 0x3e8

    sput v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 175
    new-instance v0, Labw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Labw;-><init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Labm;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->g:Labw;

    .line 185
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->i:Z

    .line 187
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->k:Z

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->m:I

    .line 205
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->x:Z

    .line 206
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->y:Z

    .line 207
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->z:Z

    .line 208
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->A:Z

    .line 215
    new-instance v0, Labm;

    invoke-direct {v0, p0}, Labm;-><init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->F:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic a()I
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->b:I

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PowerMgrTabActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput p1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->m:I

    return p1
.end method

.method private a(II)Landroid/view/View;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 742
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f03008a

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 744
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 745
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 746
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 747
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 748
    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 749
    return-object v1
.end method

.method private a(Ljava/lang/String;IILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 735
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lazr;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->p:Lazr;

    return-object v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->w:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Lpa;)Lpa;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->s:Lpa;

    return-object p1
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 466
    sparse-switch p1, :sswitch_data_0

    .line 511
    :goto_0
    return-void

    .line 468
    :sswitch_0
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->l:Z

    .line 469
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    const-string v1, "tab_tag_mode"

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :sswitch_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 474
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 475
    invoke-direct {p0, v2}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Z)V

    goto :goto_0

    .line 479
    :sswitch_2
    const-string v0, "widget14"

    const-string v1, "enter"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 485
    :sswitch_3
    const-string v0, "statusbar"

    const-string v1, "click"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 491
    :sswitch_4
    const-string v0, "msgbox"

    const-string v1, "mbsbnc"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 494
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->t:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Labs;

    invoke-direct {v1, p0}, Labs;-><init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 503
    :sswitch_5
    const-string v0, "desk"

    const-string v1, "cbw"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 508
    :sswitch_6
    invoke-direct {p0, v2}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Z)V

    goto :goto_0

    .line 466
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x8 -> :sswitch_5
        0xa -> :sswitch_6
        0x21 -> :sswitch_4
    .end sparse-switch
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 895
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    const-string v1, "tab_tag_charging"

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 898
    :cond_1
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    invoke-static {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->j:Z

    return p1
.end method

.method public static synthetic b()I
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->c:I

    return v0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 101
    iget v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->r:I

    return v0
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 909
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->t:Lcom/dianxinos/powermanager/ui/MainTitle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->a(Z)V

    .line 910
    const v0, 0x1020012

    invoke-static {p0, v0}, Lcom/dianxinos/powermanager/PersonalCenterActivity;->a(Landroid/app/Activity;I)V

    .line 911
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PersonalCenterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 913
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 915
    sget v1, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a:I

    invoke-super {p0, v0, v1}, Landroid/app/TabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 916
    return-void
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/PowerMgrTabActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->b(I)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 133
    invoke-static {p0}, Loq;->a(Landroid/content/Context;)Loq;

    move-result-object v0

    .line 134
    const-string v1, "DEFAULT"

    invoke-virtual {v0, v1}, Loq;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->i:Z

    return p1
.end method

.method public static synthetic c()I
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->d:I

    return v0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lcom/dianxinos/powermanager/ui/InverseTabHost;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    return-object v0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Z)V

    return-void
.end method

.method public static synthetic d()I
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->e:I

    return v0
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->i:Z

    return v0
.end method

.method public static synthetic d(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->k:Z

    return p1
.end method

.method private e()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 241
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Labo;

    invoke-direct {v1, p0}, Labo;-><init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V

    invoke-virtual {v0, v1}, Lazi;->a(Ljava/lang/Runnable;)V

    .line 255
    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->k:Z

    return v0
.end method

.method public static synthetic e(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->l:Z

    return p1
.end method

.method private f()V
    .locals 1

    .prologue
    .line 437
    new-instance v0, Labr;

    invoke-direct {v0, p0}, Labr;-><init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V

    invoke-virtual {v0}, Labr;->start()V

    .line 450
    return-void
.end method

.method public static synthetic f(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->l:Z

    return v0
.end method

.method public static synthetic f(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->A:Z

    return p1
.end method

.method private g()V
    .locals 0

    .prologue
    .line 687
    return-void
.end method

.method public static synthetic g(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->j:Z

    return v0
.end method

.method public static synthetic g(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->x:Z

    return p1
.end method

.method private h()V
    .locals 8

    .prologue
    const v7, 0x7f0a0051

    const v6, 0x7f020446

    .line 690
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/InverseTabHost;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    .line 691
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    const-string v1, "tab_tag_home"

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0050

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020444

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Ljava/lang/String;IILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 695
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    const-string v1, "tab_tag_mode"

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a024d

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020445

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/dianxinos/powermanager/SaverActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Ljava/lang/String;IILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 700
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->p:Lazr;

    invoke-virtual {v0}, Lazr;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Labu;

    invoke-direct {v1, p0}, Labu;-><init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V

    invoke-virtual {v0, v1}, Lazi;->b(Ljava/lang/Runnable;)V

    .line 709
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    const-string v1, "tab_tag_toolbox"

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0269

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020447

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/dianxinos/powermanager/toolbox/ToolboxActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Ljava/lang/String;IILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 713
    const/4 v0, 0x2

    iput v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->r:I

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    const-string v1, "tab_tag_charging"

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0052

    sget-object v3, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v3, 0x7f020443

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/dianxinos/powermanager/charging/HealthChargingActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Ljava/lang/String;IILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 721
    invoke-static {}, Lazf;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    const-string v1, "tab_tag_monitor"

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/dianxinos/powermanager/usage/AppPowerUsageKitKatActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v1, v7, v6, v2}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Ljava/lang/String;IILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 732
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    const-string v1, "tab_tag_monitor"

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/dianxinos/powermanager/usage/PowerUsageTabActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v1, v7, v6, v2}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Ljava/lang/String;IILandroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0
.end method

.method public static synthetic h(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->j()V

    return-void
.end method

.method private i()V
    .locals 0

    .prologue
    .line 809
    return-void
.end method

.method public static synthetic i(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->e()V

    return-void
.end method

.method public static synthetic j(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lavi;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->v:Lavi;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    const-string v1, "tab_tag_toolbox"

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 902
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 905
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0228

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->setTitle(I)V

    .line 906
    return-void
.end method

.method public static synthetic k(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->l()V

    return-void
.end method

.method public static synthetic l(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    const-string v1, "tab_tag_mode"

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 966
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/dianxinos/powermanager/SaverActivity;->v:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 967
    return-void
.end method

.method public static synthetic m(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lcom/dianxinos/common/coins/CoinManager;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->u:Lcom/dianxinos/common/coins/CoinManager;

    return-object v0
.end method

.method public static synthetic n(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Ladp;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->C:Ladp;

    return-object v0
.end method

.method public static synthetic o(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Laoj;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->B:Laoj;

    return-object v0
.end method

.method public static synthetic p(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lmf;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->D:Lmf;

    return-object v0
.end method

.method public static synthetic q(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lpa;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->s:Lpa;

    return-object v0
.end method

.method public static synthetic r(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Labw;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->g:Labw;

    return-object v0
.end method

.method public static synthetic s(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)Lcom/dianxinos/powermanager/ui/MainTitle;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->t:Lcom/dianxinos/powermanager/ui/MainTitle;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 791
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 793
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    invoke-virtual {v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 795
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 803
    :cond_0
    invoke-super {p0, p1}, Landroid/app/TabActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 971
    invoke-super {p0}, Landroid/app/TabActivity;->finish()V

    .line 972
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f040004

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->overridePendingTransition(II)V

    .line 973
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 953
    invoke-super {p0, p1, p2, p3}, Landroid/app/TabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 954
    sget v0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a:I

    if-ne p1, v0, :cond_0

    .line 955
    packed-switch p2, :pswitch_data_0

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 957
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->y:Z

    .line 958
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->l()V

    goto :goto_0

    .line 955
    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 637
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->y:Z

    if-eqz v0, :cond_0

    .line 638
    iput-boolean v6, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->y:Z

    .line 639
    invoke-direct {p0, v6}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->b(I)V

    .line 682
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->z:Z

    if-eqz v0, :cond_1

    .line 643
    iput-boolean v6, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->z:Z

    .line 644
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    const-string v1, "tab_tag_home"

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 645
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/dianxinos/powermanager/PowerMgrHomeActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 648
    :cond_1
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->A:Z

    if-eqz v0, :cond_2

    .line 649
    iput-boolean v6, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->A:Z

    .line 650
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    const-string v1, "tab_tag_mode"

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 654
    iget-wide v2, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->E:J

    sub-long v2, v0, v2

    sget v4, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->f:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 655
    iput-wide v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->E:J

    .line 656
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a030f

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 663
    :cond_3
    invoke-static {}, Laxn;->f()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.es.common.DownloadingService"

    invoke-static {p0, v0}, Lazy;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lacc;->a(Landroid/content/Context;)Lacc;

    move-result-object v0

    invoke-virtual {v0}, Lacc;->c()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Larm;->a(Landroid/content/Context;)Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 667
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.KILLSELF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 672
    :cond_4
    iget v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->m:I

    if-nez v0, :cond_6

    .line 673
    invoke-static {p0}, Lbaj;->a(Landroid/content/Context;)Lbaj;

    move-result-object v0

    invoke-virtual {v0, v7}, Lbaj;->b(I)V

    .line 674
    iput v7, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->m:I

    .line 681
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->finish()V

    goto/16 :goto_0

    .line 675
    :cond_6
    iget v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->m:I

    if-ne v0, v7, :cond_5

    .line 676
    invoke-static {p0}, Lbaj;->a(Landroid/content/Context;)Lbaj;

    move-result-object v0

    invoke-virtual {v0, v8}, Lbaj;->b(I)V

    .line 677
    iput v8, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->m:I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x2b

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 259
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 260
    invoke-static {p0}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->p:Lazr;

    .line 264
    if-nez p1, :cond_9

    .line 265
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->p:Lazr;

    invoke-virtual {v0}, Lazr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-static {p0}, Lanx;->b(Landroid/content/Context;)V

    .line 270
    iput-boolean v3, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->k:Z

    .line 272
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->p:Lazr;

    invoke-virtual {v0, v3}, Lazr;->a(Z)V

    .line 274
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->p:Lazr;

    invoke-virtual {v0, v4}, Lazr;->a(I)V

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/TipsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 296
    :goto_0
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030089

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->setContentView(I)V

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.dianxinos.dxbs.ABORTKILL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 298
    invoke-static {p0}, Lakx;->a(Landroid/content/Context;)Lakx;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->n:Lakx;

    .line 300
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v4, Labq;

    invoke-direct {v4, p0}, Labq;-><init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V

    invoke-virtual {v0, v4}, Lazi;->b(Ljava/lang/Runnable;)V

    .line 352
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/CustomTabWidget;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->o:Lcom/dianxinos/powermanager/ui/CustomTabWidget;

    .line 355
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->n:Lakx;

    invoke-virtual {v0}, Lakx;->d()V

    .line 357
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h()V

    move v0, v2

    .line 358
    :goto_1
    iget-object v4, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->o:Lcom/dianxinos/powermanager/ui/CustomTabWidget;

    invoke-virtual {v4}, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 359
    iget-object v4, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->o:Lcom/dianxinos/powermanager/ui/CustomTabWidget;

    invoke-virtual {v4, v0}, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 360
    iget-object v5, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->o:Lcom/dianxinos/powermanager/ui/CustomTabWidget;

    invoke-virtual {v5}, Lcom/dianxinos/powermanager/ui/CustomTabWidget;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_1

    .line 361
    sget-object v5, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v5, 0x7f020432

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 358
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->p:Lazr;

    invoke-virtual {v0}, Lazr;->d()I

    move-result v0

    if-ge v0, v4, :cond_9

    .line 280
    invoke-static {p0}, Lanx;->b(Landroid/content/Context;)V

    .line 281
    new-instance v0, Lavi;

    new-instance v1, Labp;

    invoke-direct {v1, p0}, Labp;-><init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V

    invoke-direct {v0, p0, v1}, Lavi;-><init>(Landroid/app/Activity;Lavj;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->v:Lavi;

    .line 289
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->v:Lavi;

    invoke-virtual {v0}, Lavi;->show()V

    .line 290
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->p:Lazr;

    invoke-virtual {v0, v4}, Lazr;->a(I)V

    move v1, v2

    .line 291
    goto :goto_0

    .line 362
    :cond_1
    if-nez v0, :cond_2

    .line 363
    sget-object v5, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v5, 0x7f020430

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 365
    :cond_2
    sget-object v5, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v5, 0x7f020431

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 370
    :cond_3
    if-nez v1, :cond_4

    .line 371
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lanv;->a(Landroid/content/Context;)V

    .line 372
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lanv;->a(Landroid/content/Context;)V

    .line 375
    :cond_4
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgu;->a(Landroid/content/Context;)Lgu;

    .line 378
    new-instance v0, Laxl;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Laxl;-><init>(Landroid/content/Context;)V

    .line 379
    if-eqz v1, :cond_7

    .line 380
    invoke-virtual {v0}, Laxl;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 381
    invoke-static {p0}, Laxn;->b(Landroid/app/Activity;)V

    .line 382
    invoke-static {p0}, Lka;->a(Landroid/content/Context;)Lka;

    move-result-object v0

    const-string v1, "dl-sta"

    invoke-virtual {v0, v1}, Lka;->a(Ljava/lang/String;)V

    .line 392
    :cond_5
    :goto_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 393
    const-string v1, "com.dianxinos.dxbs.CLOSE_APP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string v1, "com.dianxinos.dxbs.GOTO_TOOLBOX"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    const-string v1, "goto_personal_center"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string v1, "back_from_play_login"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->F:Landroid/content/BroadcastReceiver;

    const-string v4, "com.dianxinos.dxbs.permission.CLOSEAPP"

    invoke-virtual {p0, v1, v0, v4, v6}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 399
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->k()V

    .line 401
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 402
    const-string v1, "From"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 405
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(I)V

    .line 407
    new-instance v1, Labv;

    invoke-direct {v1, p0, v6}, Labv;-><init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;Labm;)V

    iput-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->q:Labv;

    .line 408
    invoke-static {p0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v1

    iget-object v2, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->q:Labv;

    invoke-virtual {v1, v2}, Lacz;->a(Ladc;)V

    .line 409
    iget-boolean v1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->j:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->k:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->l:Z

    if-nez v1, :cond_8

    .line 410
    invoke-direct {p0, v3}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(Z)V

    .line 419
    :goto_4
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    invoke-virtual {v1, p0}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 421
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->f()V

    .line 423
    invoke-static {p0}, Lcom/dianxinos/common/coins/CoinManager;->a(Landroid/content/Context;)Lcom/dianxinos/common/coins/CoinManager;

    move-result-object v1

    iput-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->u:Lcom/dianxinos/common/coins/CoinManager;

    .line 425
    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    .line 426
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    const-string v1, "tab_tag_mode"

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 427
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/dianxinos/powermanager/SaverActivity;->v:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 430
    :cond_6
    invoke-static {}, Laoj;->b()Laoj;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->B:Laoj;

    .line 431
    invoke-static {p0}, Ladp;->a(Landroid/content/Context;)Ladp;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->C:Ladp;

    .line 432
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->C:Ladp;

    invoke-virtual {v0}, Ladp;->s()V

    .line 433
    invoke-static {p0}, Lmf;->a(Landroid/content/Context;)Lmf;

    move-result-object v0

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->D:Lmf;

    .line 434
    return-void

    .line 386
    :cond_7
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laxn;->a(Landroid/content/Context;)V

    goto/16 :goto_3

    .line 413
    :cond_8
    const-string v1, "tab"

    const-string v2, "home"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 415
    invoke-static {p0}, Lop;->a(Landroid/content/Context;)V

    goto :goto_4

    :cond_9
    move v1, v3

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 616
    invoke-static {p0}, Lath;->a(Landroid/content/Context;)Lath;

    move-result-object v0

    invoke-virtual {v0}, Lath;->b()V

    .line 617
    invoke-static {}, Laxn;->h()V

    .line 618
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->g()V

    .line 619
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->i()V

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->F:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->n:Lakx;

    invoke-virtual {v0}, Lakx;->e()V

    .line 629
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->v:Lavi;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->v:Lavi;

    invoke-virtual {v0}, Lavi;->dismiss()V

    .line 632
    :cond_0
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 633
    return-void

    .line 622
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 454
    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->setIntent(Landroid/content/Intent;)V

    .line 455
    const-string v0, "From"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 456
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    const-string v2, "tab_tag_mode"

    invoke-virtual {v1, v2}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 458
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/dianxinos/powermanager/SaverActivity;->v:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 460
    :cond_0
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->a(I)V

    .line 463
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 607
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 609
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a(Z)V

    .line 610
    invoke-static {p0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->q:Labv;

    invoke-virtual {v0, v1}, Lacz;->b(Ladc;)V

    .line 612
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 515
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 516
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 517
    const-string v1, "diagnose_goto_smart_page"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->z:Z

    .line 518
    const-string v1, "diagnose_goto_smart_page"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 519
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->z:Z

    if-eqz v0, :cond_0

    .line 520
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->l()V

    .line 523
    :cond_0
    invoke-static {v2}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a(Z)V

    .line 525
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabWidget;->invalidate()V

    .line 527
    invoke-static {p0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v0

    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->q:Labv;

    invoke-virtual {v0, v1}, Lacz;->a(Ladc;)V

    .line 529
    invoke-static {}, Laxn;->g()V

    .line 531
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lahl;->a(Landroid/view/Window;)V

    .line 533
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->t:Lcom/dianxinos/powermanager/ui/MainTitle;

    if-eqz v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->t:Lcom/dianxinos/powermanager/ui/MainTitle;

    invoke-virtual {v0, v2}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonClickable(Z)V

    .line 535
    invoke-static {p0}, Lzc;->a(Landroid/content/Context;)Z

    move-result v0

    .line 536
    iget-object v1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->t:Lcom/dianxinos/powermanager/ui/MainTitle;

    invoke-virtual {v1, v0}, Lcom/dianxinos/powermanager/ui/MainTitle;->a(Z)V

    .line 538
    const-string v1, "msgbox"

    if-eqz v0, :cond_3

    const-string v0, "mbmtn"

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 544
    :cond_1
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->x:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->v:Lavi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->v:Lavi;

    invoke-virtual {v0}, Lavi;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->u:Lcom/dianxinos/common/coins/CoinManager;

    invoke-virtual {v0}, Lcom/dianxinos/common/coins/CoinManager;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    iput-boolean v3, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->x:Z

    .line 547
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->e()V

    .line 548
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->v:Lavi;

    invoke-virtual {v0}, Lavi;->dismiss()V

    .line 549
    invoke-direct {p0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->l()V

    .line 552
    :cond_2
    invoke-static {}, Lazi;->a()Lazi;

    move-result-object v0

    new-instance v1, Labt;

    invoke-direct {v1, p0}, Labt;-><init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V

    invoke-virtual {v0, v1}, Lazi;->a(Ljava/lang/Runnable;)V

    .line 589
    return-void

    .line 538
    :cond_3
    const-string v0, "mbmtno"

    goto :goto_0
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 754
    const-string v0, "tab_tag_monitor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    const-string v0, "tab"

    const-string v1, "monitor"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    const-string v0, "tab_tag_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    const-string v0, "tab"

    const-string v1, "mode"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 766
    :cond_2
    const-string v0, "tab_tag_charging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 768
    const-string v0, "tab"

    const-string v1, "charge"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 772
    :cond_3
    const-string v0, "tab_tag_home"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 774
    const-string v0, "tab"

    const-string v1, "home"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 776
    invoke-static {p0}, Lop;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 779
    :cond_4
    const-string v0, "tab_tag_toolbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->h:Lcom/dianxinos/powermanager/ui/InverseTabHost;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ui/InverseTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    iget v1, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f070230

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 783
    const-string v0, "tab"

    const-string v1, "tabtb"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 2
    .parameter

    .prologue
    .line 920
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dianxinos/powermanager/ui/MainTitle;

    iput-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->t:Lcom/dianxinos/powermanager/ui/MainTitle;

    .line 921
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->t:Lcom/dianxinos/powermanager/ui/MainTitle;

    invoke-virtual {v0, p1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setTitleText(I)V

    .line 922
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->t:Lcom/dianxinos/powermanager/ui/MainTitle;

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v1, 0x7f020453

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonIcon(I)V

    .line 923
    iget-object v0, p0, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->t:Lcom/dianxinos/powermanager/ui/MainTitle;

    new-instance v1, Labn;

    invoke-direct {v1, p0}, Labn;-><init>(Lcom/dianxinos/powermanager/PowerMgrTabActivity;)V

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/ui/MainTitle;->setRightButtonOnclickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 977
    invoke-super {p0, p1}, Landroid/app/TabActivity;->startActivity(Landroid/content/Intent;)V

    .line 978
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f040006

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->overridePendingTransition(II)V

    .line 979
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 983
    invoke-super {p0, p1, p2}, Landroid/app/TabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 984
    sget-object v0, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v0, 0x7f040006

    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f040007

    invoke-virtual {p0, v0, v1}, Lcom/dianxinos/powermanager/PowerMgrTabActivity;->overridePendingTransition(II)V

    .line 985
    return-void
.end method
