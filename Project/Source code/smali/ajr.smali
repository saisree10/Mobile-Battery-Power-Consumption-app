.class public Lajr;
.super Lajk;
.source "ScreenTimeOutOpt.java"


# instance fields
.field private a:Laid;

.field private p:I

.field private q:I

.field private r:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lajk;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lajr;->q:I

    .line 28
    const/4 v0, 0x4

    iput v0, p0, Lajr;->j:I

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lajr;->r:Landroid/content/ContentResolver;

    .line 31
    return-void
.end method

.method private h()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 101
    iget v1, p0, Lajr;->p:I

    packed-switch v1, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    return v0

    .line 103
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 105
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 107
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 109
    :pswitch_4
    const/4 v0, 0x1

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 35
    sget-boolean v1, Lazw;->j:Z

    iput-boolean v1, p0, Lajr;->o:Z

    .line 36
    iget-boolean v1, p0, Lajr;->o:Z

    if-nez v1, :cond_0

    .line 37
    iput v5, p0, Lajr;->l:I

    .line 38
    iput-boolean v0, p0, Lajr;->n:Z

    .line 39
    iput v0, p0, Lajr;->j:I

    iput v0, p0, Lajr;->k:I

    .line 58
    :goto_0
    return-void

    .line 43
    :cond_0
    new-instance v1, Laid;

    iget-object v2, p0, Lajr;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Laid;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lajr;->a:Laid;

    .line 44
    iget-object v1, p0, Lajr;->a:Laid;

    invoke-virtual {v1}, Laid;->f()I

    move-result v1

    iput v1, p0, Lajr;->p:I

    .line 45
    iget v1, p0, Lajr;->p:I

    if-nez v1, :cond_1

    .line 46
    iput v5, p0, Lajr;->l:I

    .line 47
    iget-object v0, p0, Lajr;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a032e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajr;->m:Ljava/lang/String;

    .line 48
    iget v0, p0, Lajr;->j:I

    iput v0, p0, Lajr;->k:I

    .line 57
    :goto_1
    iput-boolean v5, p0, Lajr;->n:Z

    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x3

    iput v1, p0, Lajr;->l:I

    .line 51
    iget-object v1, p0, Lajr;->c:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a032d

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lajr;->a:Laid;

    invoke-virtual {v4}, Laid;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lajr;->m:Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lajr;->a:Laid;

    invoke-virtual {v1}, Laid;->g()I

    move-result v1

    iput v1, p0, Lajr;->q:I

    .line 55
    iget v1, p0, Lajr;->q:I

    if-nez v1, :cond_2

    :goto_2
    iput v0, p0, Lajr;->k:I

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lajr;->h()I

    move-result v0

    goto :goto_2
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 62
    iget v0, p0, Lajr;->l:I

    if-ne v0, v3, :cond_1

    .line 63
    iget-object v0, p0, Lajr;->a:Laid;

    invoke-virtual {v0, v4}, Laid;->a(I)V

    .line 65
    iput v1, p0, Lajr;->l:I

    .line 66
    iget v0, p0, Lajr;->j:I

    iput v0, p0, Lajr;->k:I

    .line 67
    iget-object v0, p0, Lajr;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a032e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajr;->m:Ljava/lang/String;

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget v0, p0, Lajr;->l:I

    if-ne v0, v1, :cond_0

    .line 69
    iget v0, p0, Lajr;->q:I

    if-nez v0, :cond_2

    .line 70
    iget-object v0, p0, Lajr;->r:Landroid/content/ContentResolver;

    const-string v1, "screen_off_timeout"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    :goto_1
    iput v3, p0, Lajr;->l:I

    .line 76
    invoke-direct {p0}, Lajr;->h()I

    move-result v0

    iput v0, p0, Lajr;->k:I

    .line 77
    iget-object v0, p0, Lajr;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a032d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lajr;->a:Laid;

    invoke-virtual {v3}, Laid;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajr;->m:Ljava/lang/String;

    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, p0, Lajr;->a:Laid;

    iget v1, p0, Lajr;->p:I

    invoke-virtual {v0, v1}, Laid;->a(I)V

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lajr;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a032c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget v0, p0, Lajr;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lajr;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0349

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lajr;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0346

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0}, Lajr;->e()V

    .line 98
    return-void
.end method
