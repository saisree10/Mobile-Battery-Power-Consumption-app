.class public Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;
.super Landroid/app/Activity;
.source "ShortcutOnekeyActivity.java"


# instance fields
.field private a:Laca;

.field private b:Z

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Laca;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laca;-><init>(Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;Labz;)V

    iput-object v0, p0, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->a:Laca;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->b:Z

    .line 177
    return-void
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 117
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701ec

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f0701ed

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    sget-object v1, Lly;->a:Lcom/dianxinos/dxbs/R$anim;

    const v1, 0x7f04000c

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 125
    iget-object v0, p0, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->a:Laca;

    const/4 v1, 0x2

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Laca;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 166
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 168
    const-string v0, "android.intent.extra.shortcut.NAME"

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a015b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    sget-object v2, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v2, 0x7f0203da

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    const-string v0, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method private a(Landroid/content/Intent;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 79
    sget-object v2, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 81
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 82
    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 95
    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 96
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 97
    iget-object v1, p0, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void

    .line 86
    :cond_0
    div-int/lit8 v1, p2, 0x2

    .line 87
    div-int/lit8 v0, p3, 0x2

    .line 89
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->b:Z

    .line 90
    iget-object v2, p0, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->a:Laca;

    const/4 v3, 0x2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Laca;->sendEmptyMessageDelayed(IJ)Z

    .line 91
    const-string v2, "ShortcutOnekeyActivity"

    const-string v3, "Cannot get source round!"

    invoke-static {v2, v3}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    move v1, v0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;Landroid/content/Intent;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->a(Landroid/content/Intent;II)V

    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 129
    invoke-static {p0}, Lacz;->a(Landroid/content/Context;)Lacz;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Lacz;->b()I

    move-result v2

    .line 132
    invoke-static {p0}, Laaa;->a(Landroid/content/Context;)Laaa;

    move-result-object v3

    .line 133
    invoke-virtual {v3}, Laaa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0109

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 158
    :goto_0
    return-void

    .line 138
    :cond_0
    const/16 v0, 0x12c

    invoke-virtual {v3, v0, v5}, Laaa;->a(IZ)I

    move-result v4

    .line 140
    const/16 v0, 0xb4

    .line 141
    if-lez v4, :cond_1

    .line 142
    invoke-virtual {v1}, Lacz;->a()I

    move-result v1

    .line 143
    if-lez v2, :cond_1

    if-lez v1, :cond_1

    .line 144
    sub-int v0, v1, v2

    .line 147
    :cond_1
    invoke-virtual {v3, v4, v0}, Laaa;->a(II)V

    .line 154
    const-string v0, "shortcut"

    const-string v1, "onekey"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 156
    const-string v0, "clicks"

    const-string v1, "one_key"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->a()V

    return-void
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->b()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 47
    sget-object v1, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v1, 0x7f030077

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->setContentView(I)V

    .line 49
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701ea

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->d:Landroid/view/View;

    .line 50
    sget-object v1, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v1, 0x7f0701eb

    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->c:Landroid/view/View;

    .line 51
    iget-object v1, p0, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->c:Landroid/view/View;

    new-instance v2, Labz;

    invoke-direct {v2, p0, v0}, Labz;-><init>(Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 104
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->b:Z

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->b:Z

    .line 112
    iget-object v0, p0, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->a:Laca;

    const/4 v1, 0x1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Laca;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    :cond_0
    return-void
.end method
