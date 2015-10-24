.class public Laif;
.super Lahp;
.source "VibrateCommand.java"


# static fields
.field private static final a:[I


# instance fields
.field private h:Ljava/util/ArrayList;

.field private i:I

.field private j:I

.field private k:Lapi;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Laif;->a:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lahp;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Laif;->j:I

    .line 81
    new-instance v0, Laig;

    invoke-direct {v0, p0}, Laig;-><init>(Laif;)V

    iput-object v0, p0, Laif;->l:Landroid/content/BroadcastReceiver;

    .line 52
    sget-boolean v0, Lazw;->k:Z

    iput-boolean v0, p0, Laif;->f:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laif;->h:Ljava/util/ArrayList;

    .line 55
    iget-object v0, p0, Laif;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Laif;->d:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Laif;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Laif;->d:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00e5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Laif;->d:Landroid/content/Context;

    invoke-static {v0}, Lapi;->a(Landroid/content/Context;)Lapi;

    move-result-object v0

    iput-object v0, p0, Laif;->k:Lapi;

    .line 59
    invoke-virtual {p0}, Laif;->i()V

    .line 60
    return-void
.end method

.method static synthetic a(Laif;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Laif;->j:I

    return v0
.end method

.method static synthetic b(Laif;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Laif;->i:I

    return v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Laif;->j:I

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Laif;->g:Z

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Laif;->g:Z

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 194
    invoke-virtual {p0}, Laif;->i()V

    .line 195
    packed-switch p1, :pswitch_data_0

    .line 216
    :goto_0
    invoke-direct {p0}, Laif;->j()V

    .line 217
    return-void

    .line 197
    :pswitch_0
    iget v0, p0, Laif;->i:I

    if-ne v0, v2, :cond_1

    .line 198
    iget-object v0, p0, Laif;->k:Lapi;

    invoke-virtual {v0, v1}, Lapi;->a(I)V

    .line 203
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Laif;->j:I

    goto :goto_0

    .line 199
    :cond_1
    iget v0, p0, Laif;->i:I

    if-ne v0, v4, :cond_0

    .line 200
    iget-object v0, p0, Laif;->k:Lapi;

    invoke-virtual {v0, v3}, Lapi;->a(I)V

    goto :goto_1

    .line 207
    :pswitch_1
    iget v0, p0, Laif;->i:I

    if-ne v0, v1, :cond_3

    .line 208
    iget-object v0, p0, Laif;->k:Lapi;

    invoke-virtual {v0, v2}, Lapi;->a(I)V

    .line 213
    :cond_2
    :goto_2
    iput v1, p0, Laif;->j:I

    goto :goto_0

    .line 209
    :cond_3
    iget v0, p0, Laif;->i:I

    if-ne v0, v3, :cond_2

    .line 210
    iget-object v0, p0, Laif;->k:Lapi;

    invoke-virtual {v0, v4}, Lapi;->a(I)V

    goto :goto_2

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lahq;)V
    .locals 3
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Laif;->e:Lahq;

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Laif;->d:Landroid/content/Context;

    iget-object v2, p0, Laif;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Laif;->g:Z

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laif;->a(I)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laif;->a(I)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Laif;->g:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-boolean v0, p0, Laif;->f:Z

    if-nez v0, :cond_0

    .line 120
    const-string v0, ""

    .line 123
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Laif;->d()Ljava/util/ArrayList;

    .line 123
    iget-object v0, p0, Laif;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Laif;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public b(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 143
    invoke-virtual {p0}, Laif;->d()Ljava/util/ArrayList;

    .line 144
    iget-object v0, p0, Laif;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Laif;->c(I)I

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

    .line 133
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 138
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Laif;->d:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00c8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Laif;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v2, p0, Laif;->d:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a00e6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Laif;->h:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iget-object v2, p0, Laif;->d:Landroid/content/Context;

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a00e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Laif;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x2

    return v0
.end method

.method public e(I)I
    .locals 1
    .parameter

    .prologue
    .line 128
    sget-object v0, Laif;->a:[I

    aget v0, v0, p1

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Laif;->i()V

    .line 109
    iget v0, p0, Laif;->j:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Laif;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Laif;->e(I)I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 175
    iget-object v0, p0, Laif;->k:Lapi;

    invoke-virtual {v0}, Lapi;->b()I

    move-result v0

    .line 176
    if-ne v0, v1, :cond_1

    .line 177
    iput v1, p0, Laif;->i:I

    .line 178
    iput v2, p0, Laif;->j:I

    .line 189
    :cond_0
    :goto_0
    invoke-direct {p0}, Laif;->j()V

    .line 190
    return-void

    .line 179
    :cond_1
    if-ne v0, v3, :cond_2

    .line 180
    iput v3, p0, Laif;->i:I

    .line 181
    iput v1, p0, Laif;->j:I

    goto :goto_0

    .line 182
    :cond_2
    if-ne v0, v4, :cond_3

    .line 183
    iput v4, p0, Laif;->i:I

    .line 184
    iput v2, p0, Laif;->j:I

    goto :goto_0

    .line 185
    :cond_3
    if-ne v0, v5, :cond_0

    .line 186
    iput v5, p0, Laif;->i:I

    .line 187
    iput v1, p0, Laif;->j:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "VibrateCommand"

    return-object v0
.end method
