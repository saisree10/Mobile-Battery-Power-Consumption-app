.class public Laid;
.super Lahp;
.source "ScreenTimeOutCommand.java"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private h:Laie;

.field private i:I

.field private j:I

.field private k:Ljava/util/ArrayList;

.field private l:Lahq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lahp;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laid;->k:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Laid;->a:Landroid/content/ContentResolver;

    .line 44
    iget-object v0, p0, Laid;->a:Landroid/content/ContentResolver;

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Laid;->i:I

    .line 47
    sget-boolean v0, Lazw;->j:Z

    iput-boolean v0, p0, Laid;->f:Z

    .line 48
    iget-boolean v0, p0, Laid;->f:Z

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Laie;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Laie;-><init>(Laid;Landroid/os/Handler;)V

    iput-object v0, p0, Laid;->h:Laie;

    goto :goto_0
.end method

.method static synthetic a(Laid;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Laid;->a:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic b(Laid;)Lahq;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Laid;->l:Lahq;

    return-object v0
.end method

.method static synthetic c(Laid;)I
    .locals 1
    .parameter

    .prologue
    .line 19
    iget v0, p0, Laid;->j:I

    return v0
.end method

.method private d(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 168
    invoke-virtual {p0}, Laid;->d()Ljava/util/ArrayList;

    .line 170
    const/16 v0, 0x3a98

    if-ne p1, v0, :cond_0

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Laid;->j:I

    .line 191
    :goto_0
    iget-object v0, p0, Laid;->k:Ljava/util/ArrayList;

    iget v1, p0, Laid;->j:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 173
    :cond_0
    const/16 v0, 0x7530

    if-ne p1, v0, :cond_1

    .line 174
    const/4 v0, 0x1

    iput v0, p0, Laid;->j:I

    goto :goto_0

    .line 176
    :cond_1
    const v0, 0xea60

    if-ne p1, v0, :cond_2

    .line 177
    const/4 v0, 0x2

    iput v0, p0, Laid;->j:I

    goto :goto_0

    .line 179
    :cond_2
    const v0, 0x1d4c0

    if-ne p1, v0, :cond_3

    .line 180
    const/4 v0, 0x3

    iput v0, p0, Laid;->j:I

    goto :goto_0

    .line 182
    :cond_3
    const v0, 0x927c0

    if-ne p1, v0, :cond_4

    .line 183
    iput v1, p0, Laid;->j:I

    goto :goto_0

    .line 185
    :cond_4
    const v0, 0x1b7740

    if-lt p1, v0, :cond_5

    .line 186
    const/4 v0, 0x5

    iput v0, p0, Laid;->j:I

    goto :goto_0

    .line 189
    :cond_5
    iput v1, p0, Laid;->j:I

    goto :goto_0
.end method

.method private f(I)I
    .locals 2
    .parameter

    .prologue
    const/16 v0, 0x7530

    .line 195
    .line 196
    if-nez p1, :cond_1

    .line 197
    const/16 v0, 0x3a98

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 200
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 201
    const v0, 0xea60

    goto :goto_0

    .line 202
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 203
    const v0, 0x1d4c0

    goto :goto_0

    .line 204
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 205
    const v0, 0x927c0

    goto :goto_0

    .line 206
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 207
    const v0, 0x1b7740

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Laid;->f(I)I

    move-result v0

    .line 84
    :try_start_0
    iget-object v1, p0, Laid;->a:Landroid/content/ContentResolver;

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lahq;)V
    .locals 1
    .parameter

    .prologue
    .line 242
    iget-boolean v0, p0, Laid;->f:Z

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Laid;->h:Laie;

    invoke-virtual {v0}, Laie;->a()V

    .line 246
    iput-object p1, p0, Laid;->l:Lahq;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 93
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Laid;->a:Landroid/content/ContentResolver;

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Laid;->i:I

    .line 107
    iget v0, p0, Laid;->i:I

    invoke-direct {p0, v0}, Laid;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 125
    invoke-virtual {p0}, Laid;->d()Ljava/util/ArrayList;

    .line 126
    iget-object v0, p0, Laid;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Laid;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 135
    const/16 v1, 0xf

    if-ne p1, v1, :cond_1

    .line 136
    const/4 v0, 0x0

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    const/16 v1, 0x1e

    if-eq p1, v1, :cond_0

    .line 141
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_2

    .line 142
    const/4 v0, 0x2

    goto :goto_0

    .line 144
    :cond_2
    const/16 v1, 0x78

    if-ne p1, v1, :cond_3

    .line 145
    const/4 v0, 0x3

    goto :goto_0

    .line 147
    :cond_3
    const/16 v1, 0x258

    if-ne p1, v1, :cond_4

    .line 148
    const/4 v0, 0x4

    goto :goto_0

    .line 150
    :cond_4
    const/16 v1, 0x708

    if-ne p1, v1, :cond_0

    .line 151
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Laid;->d:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Laid;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    iget-object v0, p0, Laid;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Laid;->d:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Laid;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Laid;->d:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Laid;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Laid;->d:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Laid;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Laid;->d:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00e3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Laid;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Laid;->d:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00e4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Laid;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Laid;->d:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0220

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Laid;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x6

    return v0
.end method

.method public e(I)I
    .locals 2
    .parameter

    .prologue
    const/16 v0, 0x1e

    .line 267
    if-nez p1, :cond_1

    .line 268
    const/16 v0, 0xf

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 271
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 272
    const/16 v0, 0x3c

    goto :goto_0

    .line 273
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 274
    const/16 v0, 0x78

    goto :goto_0

    .line 275
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 276
    const/16 v0, 0x258

    goto :goto_0

    .line 277
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 278
    const/16 v0, 0x708

    goto :goto_0
.end method

.method public f()I
    .locals 4

    .prologue
    const/16 v3, 0x7530

    const/4 v2, 0x4

    .line 216
    iget-object v0, p0, Laid;->a:Landroid/content/ContentResolver;

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Laid;->i:I

    .line 218
    iget v0, p0, Laid;->i:I

    const/16 v1, 0x3a98

    if-ne v0, v1, :cond_0

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Laid;->j:I

    .line 232
    :goto_0
    iget v0, p0, Laid;->j:I

    return v0

    .line 220
    :cond_0
    iget v0, p0, Laid;->i:I

    if-ne v0, v3, :cond_1

    .line 221
    const/4 v0, 0x1

    iput v0, p0, Laid;->j:I

    goto :goto_0

    .line 222
    :cond_1
    iget v0, p0, Laid;->i:I

    const v1, 0xea60

    if-ne v0, v1, :cond_2

    .line 223
    const/4 v0, 0x2

    iput v0, p0, Laid;->j:I

    goto :goto_0

    .line 224
    :cond_2
    iget v0, p0, Laid;->i:I

    const v1, 0x1d4c0

    if-ne v0, v1, :cond_3

    .line 225
    const/4 v0, 0x3

    iput v0, p0, Laid;->j:I

    goto :goto_0

    .line 226
    :cond_3
    iget v0, p0, Laid;->i:I

    const v1, 0x927c0

    if-ne v0, v1, :cond_4

    .line 227
    iput v2, p0, Laid;->j:I

    goto :goto_0

    .line 228
    :cond_4
    iget v0, p0, Laid;->i:I

    const v1, 0x1b7740

    if-ne v0, v1, :cond_5

    .line 229
    const/4 v0, 0x5

    iput v0, p0, Laid;->j:I

    goto :goto_0

    .line 231
    :cond_5
    iput v2, p0, Laid;->j:I

    goto :goto_0
.end method

.method public g()I
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Laid;->a:Landroid/content/ContentResolver;

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Laid;->i:I

    .line 262
    iget v0, p0, Laid;->i:I

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    const-string v0, "ScreenTimeOutCommand"

    return-object v0
.end method
