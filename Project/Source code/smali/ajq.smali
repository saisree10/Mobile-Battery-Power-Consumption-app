.class public Lajq;
.super Lajk;
.source "ScreenBrightnessOpt.java"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private p:Lahl;

.field private q:Ljava/lang/String;

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lajk;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    .line 28
    const/16 v0, 0x8

    iput v0, p0, Lajq;->j:I

    .line 29
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 100
    iget-object v1, p0, Lajq;->p:Lahl;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lahl;->d(I)I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 101
    const-string v1, "100%"

    iput-object v1, p0, Lajq;->q:Ljava/lang/String;

    .line 128
    :goto_0
    return v0

    .line 103
    :cond_0
    iget-object v1, p0, Lajq;->p:Lahl;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lahl;->d(I)I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 104
    const-string v1, "90%"

    iput-object v1, p0, Lajq;->q:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lajq;->p:Lahl;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lahl;->d(I)I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 107
    const-string v0, "80%"

    iput-object v0, p0, Lajq;->q:Ljava/lang/String;

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lajq;->p:Lahl;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Lahl;->d(I)I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 110
    const-string v0, "70%"

    iput-object v0, p0, Lajq;->q:Ljava/lang/String;

    .line 111
    const/4 v0, 0x2

    goto :goto_0

    .line 112
    :cond_3
    iget-object v0, p0, Lajq;->p:Lahl;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lahl;->d(I)I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 113
    const-string v0, "50%"

    iput-object v0, p0, Lajq;->q:Ljava/lang/String;

    .line 114
    const/4 v0, 0x3

    goto :goto_0

    .line 115
    :cond_4
    iget-object v0, p0, Lajq;->p:Lahl;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lahl;->d(I)I

    move-result v0

    if-lt p1, v0, :cond_5

    .line 116
    const-string v0, "40%"

    iput-object v0, p0, Lajq;->q:Ljava/lang/String;

    .line 117
    const/4 v0, 0x4

    goto :goto_0

    .line 118
    :cond_5
    iget-object v0, p0, Lajq;->p:Lahl;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lahl;->d(I)I

    move-result v0

    if-lt p1, v0, :cond_6

    .line 119
    const-string v0, "30%"

    iput-object v0, p0, Lajq;->q:Ljava/lang/String;

    .line 120
    const/4 v0, 0x5

    goto :goto_0

    .line 121
    :cond_6
    iget-object v0, p0, Lajq;->p:Lahl;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lahl;->d(I)I

    move-result v0

    if-lt p1, v0, :cond_7

    .line 122
    const-string v0, "20%"

    iput-object v0, p0, Lajq;->q:Ljava/lang/String;

    .line 123
    const/4 v0, 0x6

    goto :goto_0

    .line 124
    :cond_7
    iget-object v0, p0, Lajq;->p:Lahl;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lahl;->d(I)I

    move-result v0

    if-lt p1, v0, :cond_8

    .line 125
    const-string v0, "10%"

    iput-object v0, p0, Lajq;->q:Ljava/lang/String;

    .line 126
    const/4 v0, 0x7

    goto :goto_0

    .line 128
    :cond_8
    const/16 v0, 0x8

    goto/16 :goto_0
.end method

.method public a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 33
    sget-boolean v0, Lazw;->c:Z

    iput-boolean v0, p0, Lajq;->o:Z

    .line 34
    iget-boolean v0, p0, Lajq;->o:Z

    if-nez v0, :cond_0

    .line 35
    iput v4, p0, Lajq;->l:I

    .line 36
    iput-boolean v5, p0, Lajq;->n:Z

    .line 37
    iput v5, p0, Lajq;->j:I

    iput v5, p0, Lajq;->k:I

    .line 59
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lajq;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lajq;->a:Landroid/content/ContentResolver;

    .line 42
    iget-object v0, p0, Lajq;->a:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lajq;->r:I

    .line 44
    iget-object v0, p0, Lajq;->a:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 47
    new-instance v1, Lahl;

    iget-object v2, p0, Lajq;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lahl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lajq;->p:Lahl;

    .line 48
    iget v1, p0, Lajq;->r:I

    iget-object v2, p0, Lajq;->p:Lahl;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lahl;->d(I)I

    move-result v2

    if-le v1, v2, :cond_1

    if-ne v0, v4, :cond_2

    .line 50
    :cond_1
    iput v4, p0, Lajq;->l:I

    .line 51
    iget-object v0, p0, Lajq;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a032b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajq;->m:Ljava/lang/String;

    .line 52
    iget v0, p0, Lajq;->j:I

    iput v0, p0, Lajq;->k:I

    .line 58
    :goto_1
    iput-boolean v4, p0, Lajq;->n:Z

    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lajq;->l:I

    .line 55
    iget v0, p0, Lajq;->r:I

    invoke-virtual {p0, v0}, Lajq;->a(I)I

    move-result v0

    iput v0, p0, Lajq;->k:I

    .line 56
    iget-object v0, p0, Lajq;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a032a

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lajq;->q:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajq;->m:Ljava/lang/String;

    goto :goto_1
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 63
    iget v0, p0, Lajq;->l:I

    if-ne v0, v3, :cond_1

    .line 64
    iget-object v0, p0, Lajq;->a:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    iput v5, p0, Lajq;->l:I

    .line 68
    iget v0, p0, Lajq;->j:I

    iput v0, p0, Lajq;->k:I

    .line 69
    iget-object v0, p0, Lajq;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a032b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajq;->m:Ljava/lang/String;

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lajq;->h()V

    .line 79
    return-void

    .line 70
    :cond_1
    iget v0, p0, Lajq;->l:I

    if-ne v0, v5, :cond_0

    .line 71
    iget-object v0, p0, Lajq;->a:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    iput v3, p0, Lajq;->l:I

    .line 75
    iget v0, p0, Lajq;->r:I

    invoke-virtual {p0, v0}, Lajq;->a(I)I

    move-result v0

    iput v0, p0, Lajq;->k:I

    .line 76
    iget-object v0, p0, Lajq;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a032a

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lajq;->q:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajq;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lajq;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0329

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lajq;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lajq;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0349

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lajq;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0346

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 134
    const/16 v1, 0x11

    iput v1, v0, Landroid/os/Message;->what:I

    .line 135
    iget v1, p0, Lajq;->l:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 136
    iget v1, p0, Lajq;->r:I

    int-to-float v1, v1

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    :cond_0
    :goto_0
    iget-object v1, p0, Lajq;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void

    .line 137
    :cond_1
    iget v1, p0, Lajq;->l:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 138
    const v1, 0x3e4ccccd

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0}, Lajq;->e()V

    .line 97
    return-void
.end method
