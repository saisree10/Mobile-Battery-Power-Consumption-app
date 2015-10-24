.class public Lcom/dianxinos/powermanager/PowerMgrActivity;
.super Landroid/app/Activity;
.source "PowerMgrActivity.java"


# static fields
.field private static b:I


# instance fields
.field private final a:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x5dc

    sput v0, Lcom/dianxinos/powermanager/PowerMgrActivity;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const/16 v0, 0x1388

    iput v0, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->a:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->c:Z

    .line 37
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->d:Z

    .line 38
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->e:Z

    .line 39
    iput-boolean v1, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->f:Z

    return-void
.end method

.method public static synthetic a()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/dianxinos/powermanager/PowerMgrActivity;->b:I

    return v0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 123
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 124
    const-string v0, "widget14"

    const-string v1, "enter"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 128
    const-string v0, "statusbar"

    const-string v1, "click"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PowerMgrActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->c:Z

    return v0
.end method

.method public static synthetic a(Lcom/dianxinos/powermanager/PowerMgrActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->d:Z

    return p1
.end method

.method public static synthetic b(Lcom/dianxinos/powermanager/PowerMgrActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->e:Z

    return v0
.end method

.method public static synthetic c(Lcom/dianxinos/powermanager/PowerMgrActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->d:Z

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrActivity;->finish()V

    .line 166
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrActivity;->finish()V

    .line 171
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/16 v0, 0x1388

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0, v9}, Lcom/dianxinos/powermanager/PowerMgrActivity;->requestWindowFeature(I)Z

    .line 48
    invoke-static {p0}, Lmy;->a(Landroid/content/Context;)Lmy;

    move-result-object v2

    invoke-virtual {v2}, Lmy;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/dianxinos/powermanager/PowerMgrActivity;->setContentView(Landroid/view/View;)V

    .line 54
    invoke-static {p0}, Lmy;->a(Landroid/content/Context;)Lmy;

    move-result-object v1

    invoke-virtual {v1}, Lmy;->a()I

    move-result v1

    .line 55
    if-le v1, v0, :cond_1

    :goto_0
    sput v0, Lcom/dianxinos/powermanager/PowerMgrActivity;->b:I

    .line 77
    :cond_0
    :goto_1
    const-string v0, "clicks"

    const-string v1, "desktop_icon"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lbal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    .line 80
    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    const-string v1, "From"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 84
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrActivity;->a(I)V

    .line 85
    return-void

    :cond_1
    move v0, v1

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    sget-object v0, Lly;->g:Lcom/dianxinos/dxbs/R$layout;

    const v0, 0x7f030085

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrActivity;->setContentView(I)V

    .line 58
    invoke-static {p0}, Lazp;->a(Landroid/content/Context;)Lazp;

    move-result-object v2

    .line 59
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lazp;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 62
    invoke-virtual {v2}, Lazp;->a()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->d:Lcom/dianxinos/dxbs/R$dimen;

    const v3, 0x7f0801a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v4, v2

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/dianxinos/powermanager/PowerMgrActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lly;->c:Lcom/dianxinos/dxbs/R$color;

    const v3, 0x7f090064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 68
    invoke-static {}, Lazf;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 71
    :cond_3
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 72
    invoke-static {p0}, Lakx;->a(Landroid/content/Context;)Lakx;

    move-result-object v0

    invoke-virtual {v0}, Lakx;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lly;->f:Lcom/dianxinos/dxbs/R$id;

    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 152
    packed-switch p1, :pswitch_data_0

    .line 158
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 154
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->c:Z

    .line 155
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/dianxinos/powermanager/PowerMgrActivity;->setIntent(Landroid/content/Intent;)V

    .line 116
    const-string v0, "From"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 117
    invoke-direct {p0, v0}, Lcom/dianxinos/powermanager/PowerMgrActivity;->a(I)V

    .line 120
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->c:Z

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->e:Z

    .line 138
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 143
    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->d:Z

    if-nez v0, :cond_0

    .line 144
    iput-boolean v2, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->d:Z

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dianxinos/powermanager/PowerMgrTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    invoke-virtual {p0, v0, v2}, Lcom/dianxinos/powermanager/PowerMgrActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 92
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->f:Z

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dianxinos/powermanager/PowerMgrActivity;->f:Z

    .line 94
    new-instance v0, Laaz;

    invoke-direct {v0, p0}, Laaz;-><init>(Lcom/dianxinos/powermanager/PowerMgrActivity;)V

    invoke-virtual {v0}, Laaz;->start()V

    .line 111
    :cond_0
    return-void
.end method
