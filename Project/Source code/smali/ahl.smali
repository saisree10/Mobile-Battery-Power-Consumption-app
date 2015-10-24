.class public Lahl;
.super Lahp;
.source "BrightnessCommand.java"


# static fields
.field public static a:I

.field private static final m:[I


# instance fields
.field private h:Landroid/content/ContentResolver;

.field private i:Lahm;

.field private j:Ljava/util/ArrayList;

.field private k:I

.field private l:Ljava/lang/String;

.field private n:Z

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xb

    sput v0, Lahl;->a:I

    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lahl;->m:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lahp;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lahl;->k:I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lahl;->h:Landroid/content/ContentResolver;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lahl;->j:Ljava/util/ArrayList;

    .line 63
    iget-object v0, p0, Lahl;->j:Ljava/util/ArrayList;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00df

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lahl;->j:Ljava/util/ArrayList;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00de

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lahl;->j:Ljava/util/ArrayList;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00dd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lahl;->j:Ljava/util/ArrayList;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00dc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lahl;->j:Ljava/util/ArrayList;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00db

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lahl;->j:Ljava/util/ArrayList;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00da

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-boolean v0, Lazw;->d:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lahl;->j:Ljava/util/ArrayList;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00be

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    sget-boolean v0, Lazw;->c:Z

    iput-boolean v0, p0, Lahl;->f:Z

    .line 73
    iget-boolean v0, p0, Lahl;->f:Z

    if-nez v0, :cond_1

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_1
    sget-boolean v0, Lazf;->h:Z

    if-eqz v0, :cond_3

    .line 77
    const/16 v0, 0x78

    sput v0, Lahl;->a:I

    .line 80
    :cond_2
    :goto_1
    new-instance v0, Lahm;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lahm;-><init>(Lahl;Landroid/os/Handler;)V

    iput-object v0, p0, Lahl;->i:Lahm;

    goto :goto_0

    .line 78
    :cond_3
    sget-boolean v0, Lazf;->l:Z

    if-eqz v0, :cond_2

    .line 79
    const/16 v0, 0x4b

    sput v0, Lahl;->a:I

    goto :goto_1
.end method

.method static synthetic a(Lahl;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lahl;->h:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static a(Landroid/view/Window;)V
    .locals 2
    .parameter

    .prologue
    .line 341
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 342
    const/high16 v1, -0x4080

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 343
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 344
    return-void
.end method

.method public static a(Landroid/view/Window;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-static {p1}, Lahl;->f(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    .line 335
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 336
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 337
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 338
    return-void
.end method

.method static synthetic b(Lahl;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lahl;->i()V

    return-void
.end method

.method static synthetic c(Lahl;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lahl;->k:I

    return v0
.end method

.method private static f(I)I
    .locals 3
    .parameter

    .prologue
    .line 132
    sget-object v0, Lahl;->m:[I

    aget v0, v0, p0

    .line 133
    sget v1, Lahl;->a:I

    sget v2, Lahl;->a:I

    rsub-int v2, v2, 0xff

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    add-int/2addr v0, v1

    .line 135
    return v0
.end method

.method private g(I)V
    .locals 2
    .parameter

    .prologue
    .line 244
    iget v0, p0, Lahl;->o:I

    const/16 v1, 0xff

    if-lt v0, v1, :cond_0

    .line 245
    const/4 v0, 0x5

    iput v0, p0, Lahl;->k:I

    .line 262
    :goto_0
    iget-object v0, p0, Lahl;->j:Ljava/util/ArrayList;

    iget v1, p0, Lahl;->k:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lahl;->l:Ljava/lang/String;

    .line 263
    return-void

    .line 247
    :cond_0
    iget v0, p0, Lahl;->o:I

    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Lahl;->d(I)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 248
    const/4 v0, 0x4

    iput v0, p0, Lahl;->k:I

    goto :goto_0

    .line 250
    :cond_1
    iget v0, p0, Lahl;->o:I

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lahl;->d(I)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 251
    const/4 v0, 0x3

    iput v0, p0, Lahl;->k:I

    goto :goto_0

    .line 253
    :cond_2
    iget v0, p0, Lahl;->o:I

    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Lahl;->d(I)I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 254
    const/4 v0, 0x2

    iput v0, p0, Lahl;->k:I

    goto :goto_0

    .line 256
    :cond_3
    iget v0, p0, Lahl;->o:I

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lahl;->d(I)I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 257
    const/4 v0, 0x1

    iput v0, p0, Lahl;->k:I

    goto :goto_0

    .line 260
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lahl;->k:I

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahl;->n:Z

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lahl;->o:I

    .line 114
    iget-object v0, p0, Lahl;->h:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 116
    if-ne v0, v2, :cond_0

    .line 117
    iput-boolean v2, p0, Lahl;->n:Z

    .line 118
    sget v0, Lahl;->b:I

    iput v0, p0, Lahl;->k:I

    .line 121
    :cond_0
    iget-boolean v0, p0, Lahl;->n:Z

    if-nez v0, :cond_1

    .line 122
    iget-object v0, p0, Lahl;->h:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lahl;->o:I

    .line 126
    iget v0, p0, Lahl;->o:I

    invoke-direct {p0, v0}, Lahl;->g(I)V

    .line 129
    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 139
    iget-boolean v0, p0, Lahl;->f:Z

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Lahl;->e(I)I

    move-result v0

    .line 143
    const/16 v1, 0x78

    if-ne v0, v1, :cond_1

    .line 144
    sget v0, Lahl;->b:I

    iput v0, p0, Lahl;->k:I

    .line 145
    iput-boolean v2, p0, Lahl;->n:Z

    .line 146
    iget-object v0, p0, Lahl;->h:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lahl;->h:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    sget v1, Lahl;->a:I

    sget v2, Lahl;->a:I

    rsub-int v2, v2, 0xff

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    add-int/2addr v0, v1

    .line 163
    iget-object v1, p0, Lahl;->h:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public a(Lahq;)V
    .locals 1
    .parameter

    .prologue
    .line 299
    iget-boolean v0, p0, Lahl;->f:Z

    if-nez v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lahl;->i:Lahm;

    invoke-virtual {v0}, Lahm;->a()V

    .line 303
    iput-object p1, p0, Lahl;->e:Lahq;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 171
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    iget-boolean v0, p0, Lahl;->f:Z

    if-nez v0, :cond_1

    .line 181
    const-string v0, ""

    .line 198
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :cond_1
    invoke-direct {p0}, Lahl;->i()V

    .line 184
    iget-boolean v0, p0, Lahl;->n:Z

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lahl;->d:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    sget-boolean v1, Lazw;->d:Z

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lahl;->j:Ljava/util/ArrayList;

    sget v2, Lahl;->b:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lahl;->h:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lahl;->o:I

    .line 197
    iget v0, p0, Lahl;->o:I

    invoke-direct {p0, v0}, Lahl;->g(I)V

    .line 198
    iget-object v0, p0, Lahl;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 204
    sget-boolean v0, Lazw;->d:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lahl;->d:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lahl;->j:Ljava/util/ArrayList;

    sget v2, Lahl;->b:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    iget-object v0, p0, Lahl;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lahl;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c(I)I
    .locals 1
    .parameter

    .prologue
    .line 213
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0

    .line 216
    :cond_0
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 217
    const/4 v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    const/16 v0, 0x1e

    if-ne p1, v0, :cond_2

    .line 220
    const/4 v0, 0x2

    goto :goto_0

    .line 222
    :cond_2
    const/16 v0, 0x28

    if-ne p1, v0, :cond_3

    .line 223
    const/4 v0, 0x3

    goto :goto_0

    .line 225
    :cond_3
    const/16 v0, 0x32

    if-ne p1, v0, :cond_4

    .line 226
    const/4 v0, 0x4

    goto :goto_0

    .line 228
    :cond_4
    const/16 v0, 0x64

    if-ne p1, v0, :cond_5

    .line 229
    const/4 v0, 0x5

    goto :goto_0

    .line 231
    :cond_5
    const/16 v0, 0x78

    if-ne p1, v0, :cond_6

    .line 232
    sget v0, Lahl;->b:I

    goto :goto_0

    .line 235
    :cond_6
    sget v0, Lahl;->b:I

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lahl;->d:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(I)I
    .locals 2
    .parameter

    .prologue
    .line 239
    sget v0, Lahl;->a:I

    sget v1, Lahl;->a:I

    rsub-int v1, v1, 0xff

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    return v0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 268
    sget-boolean v0, Lazw;->d:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lahl;->d:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lahl;->j:Ljava/util/ArrayList;

    sget v2, Lahl;->b:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_0
    iget-object v0, p0, Lahl;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 277
    sget v0, Lahl;->c:I

    return v0
.end method

.method public e(I)I
    .locals 1
    .parameter

    .prologue
    .line 323
    sget-object v0, Lahl;->m:[I

    aget v0, v0, p1

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lahl;->i()V

    .line 283
    iget-boolean v0, p0, Lahl;->n:Z

    if-eqz v0, :cond_0

    .line 285
    sget v0, Lahl;->b:I

    iput v0, p0, Lahl;->k:I

    .line 286
    sget v0, Lahl;->b:I

    .line 289
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lahl;->k:I

    goto :goto_0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lahl;->f()I

    move-result v0

    .line 318
    sget-object v1, Lahl;->m:[I

    aget v0, v1, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    const-string v0, "BrightnessCommand "

    return-object v0
.end method
