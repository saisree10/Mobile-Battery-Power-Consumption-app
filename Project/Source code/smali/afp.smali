.class Lafp;
.super Lafh;
.source "NormalCharger.java"


# static fields
.field private static volatile b:Lafp;


# instance fields
.field private c:Ljava/util/ArrayList;

.field private d:Landroid/content/Context;

.field private e:Lacu;

.field private f:Laub;

.field private g:I

.field private volatile h:Z

.field private i:Laff;

.field private j:I

.field private k:Ladh;

.field private l:Lb;

.field private m:Landroid/content/IntentFilter;

.field private n:Lafq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lafp;->b:Lafp;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lb;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Lafh;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lafp;->c:Ljava/util/ArrayList;

    .line 36
    iput v2, p0, Lafp;->g:I

    .line 44
    const/16 v0, 0x6b

    iput v0, p0, Lafp;->j:I

    .line 84
    iput-object p1, p0, Lafp;->d:Landroid/content/Context;

    .line 85
    iget-object v7, p0, Lafp;->c:Ljava/util/ArrayList;

    new-instance v0, Lafg;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0179

    sget-object v3, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v3, 0x7f0a01ef

    sget-object v4, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a01f0

    sget-object v5, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v5, 0x7f0203bc

    sget-object v6, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v6, 0x7f0203bb

    invoke-direct/range {v0 .. v6}, Lafg;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lafp;->c:Ljava/util/ArrayList;

    new-instance v3, Lafg;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a017a

    const/4 v5, 0x1

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v6, 0x7f0a01f1

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v7, 0x7f0a01f2

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v8, 0x7f0201ba

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v9, 0x7f0201b9

    invoke-direct/range {v3 .. v9}, Lafg;-><init>(IIIIII)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lafp;->c:Ljava/util/ArrayList;

    new-instance v3, Lafg;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v4, 0x7f0a017b

    const/4 v5, 0x2

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v6, 0x7f0a01f3

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v7, 0x7f0a01f4

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v8, 0x7f020478

    sget-object v1, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v9, 0x7f020477

    invoke-direct/range {v3 .. v9}, Lafg;-><init>(IIIIII)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lacu;

    iget-object v1, p0, Lafp;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lacu;-><init>(Landroid/content/Context;Lb;)V

    iput-object v0, p0, Lafp;->e:Lacu;

    .line 97
    iget-object v0, p0, Lafp;->d:Landroid/content/Context;

    invoke-static {v0}, Laub;->a(Landroid/content/Context;)Laub;

    move-result-object v0

    iput-object v0, p0, Lafp;->f:Laub;

    .line 98
    iget-object v0, p0, Lafp;->d:Landroid/content/Context;

    invoke-static {v0}, Laff;->a(Landroid/content/Context;)Laff;

    move-result-object v0

    iput-object v0, p0, Lafp;->i:Laff;

    .line 99
    iget-object v0, p0, Lafp;->d:Landroid/content/Context;

    invoke-static {v0}, Ladh;->a(Landroid/content/Context;)Ladh;

    move-result-object v0

    iput-object v0, p0, Lafp;->k:Ladh;

    .line 101
    iget-object v0, p0, Lafp;->k:Ladh;

    invoke-virtual {v0}, Ladh;->f()I

    move-result v0

    iput v0, p0, Lafp;->j:I

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lafp;->m:Landroid/content/IntentFilter;

    .line 103
    iget-object v0, p0, Lafp;->m:Landroid/content/IntentFilter;

    const-string v1, "com.dianxinos.dxbs.HEALTHCHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    new-instance v0, Lafq;

    invoke-direct {v0, p0}, Lafq;-><init>(Lafp;)V

    iput-object v0, p0, Lafp;->n:Lafq;

    .line 105
    iput-object p2, p0, Lafp;->l:Lb;

    .line 107
    iget-object v0, p0, Lafp;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    iput-object v0, p0, Lafp;->a:Lafg;

    .line 109
    return-void
.end method

.method static synthetic a(Lafp;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lafp;->j:I

    return v0
.end method

.method static synthetic a(Lafp;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lafp;->j:I

    return p1
.end method

.method public static a(Landroid/content/Context;)Lafp;
    .locals 2
    .parameter

    .prologue
    .line 112
    new-instance v0, Lafp;

    new-instance v1, Lc;

    invoke-direct {v1}, Lc;-><init>()V

    invoke-direct {v0, p0, v1}, Lafp;-><init>(Landroid/content/Context;Lb;)V

    sput-object v0, Lafp;->b:Lafp;

    return-object v0
.end method

.method static synthetic b(Lafp;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput p1, p0, Lafp;->g:I

    return p1
.end method

.method static synthetic b(Lafp;)Lacu;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lafp;->e:Lacu;

    return-object v0
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lafp;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 128
    if-ge v1, p1, :cond_0

    .line 129
    iget-object v0, p0, Lafp;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    invoke-virtual {v0}, Lafg;->b()V

    .line 127
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 130
    :cond_0
    if-ne v1, p1, :cond_1

    .line 131
    iget-object v0, p0, Lafp;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    invoke-virtual {v0}, Lafg;->a()V

    goto :goto_1

    .line 133
    :cond_1
    iget-object v0, p0, Lafp;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    invoke-virtual {v0}, Lafg;->c()V

    goto :goto_1

    .line 136
    :cond_2
    return-void
.end method

.method private b(Ladd;)V
    .locals 7
    .parameter

    .prologue
    .line 229
    iget v0, p1, Ladd;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Ladd;->e:I

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    iget-object v0, p0, Lafp;->f:Laub;

    iget v1, p1, Ladd;->e:I

    iget v2, p1, Ladd;->c:I

    iget v3, p1, Ladd;->d:I

    iget-object v4, p0, Lafp;->l:Lb;

    invoke-interface {v4}, Lb;->a()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Laub;->a(IIIJZ)V

    .line 232
    iget-object v0, p0, Lafp;->f:Laub;

    invoke-virtual {v0}, Laub;->b()J

    move-result-wide v0

    .line 233
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x258

    iput v0, p0, Lafp;->g:I

    .line 235
    :cond_1
    return-void
.end method

.method static synthetic c(Lafp;)Ladh;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lafp;->k:Ladh;

    return-object v0
.end method

.method static synthetic c(Lafp;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lafp;->b(I)V

    return-void
.end method

.method static synthetic d(Lafp;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lafp;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lafp;)Lafq;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lafp;->n:Lafq;

    return-object v0
.end method

.method static synthetic f(Lafp;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lafp;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput p1, p0, Lafp;->g:I

    .line 245
    return-void
.end method

.method public a(Ladd;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 140
    iget-boolean v0, p0, Lafp;->h:Z

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0, p1}, Lafp;->b(Ladd;)V

    .line 142
    iput-boolean v3, p0, Lafp;->h:Z

    .line 145
    :cond_0
    iget v0, p1, Ladd;->e:I

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lafp;->i:Laff;

    invoke-virtual {v0, p1}, Laff;->a(Ladd;)V

    .line 214
    :goto_0
    return-void

    .line 152
    :cond_1
    iget v0, p1, Ladd;->a:I

    if-ne v0, v4, :cond_4

    .line 154
    iget-object v0, p0, Lafp;->e:Lacu;

    invoke-virtual {v0}, Lacu;->b()V

    .line 155
    iget v0, p1, Ladd;->c:I

    const/16 v1, 0x50

    if-gt v0, v1, :cond_3

    .line 156
    const/16 v0, 0x69

    iput v0, p0, Lafp;->j:I

    .line 157
    iget-object v0, p0, Lafp;->k:Ladh;

    iget v1, p0, Lafp;->j:I

    invoke-virtual {v0, v1}, Ladh;->d(I)V

    .line 184
    :cond_2
    :goto_1
    iget v0, p0, Lafp;->j:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 192
    :pswitch_1
    iget-object v0, p0, Lafp;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    iput-object v0, p0, Lafp;->a:Lafg;

    .line 193
    invoke-direct {p0, v3}, Lafp;->b(I)V

    .line 194
    invoke-direct {p0, p1}, Lafp;->b(Ladd;)V

    goto :goto_0

    .line 159
    :cond_3
    const/16 v0, 0x65

    iput v0, p0, Lafp;->j:I

    .line 160
    iget-object v0, p0, Lafp;->k:Ladh;

    iget v1, p0, Lafp;->j:I

    invoke-virtual {v0, v1}, Ladh;->d(I)V

    goto :goto_1

    .line 162
    :cond_4
    iget v0, p1, Ladd;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 164
    iget v0, p0, Lafp;->j:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_2

    .line 168
    const/16 v0, 0x66

    iput v0, p0, Lafp;->j:I

    .line 169
    iget-object v0, p0, Lafp;->k:Ladh;

    iget v1, p0, Lafp;->j:I

    invoke-virtual {v0, v1}, Ladh;->d(I)V

    .line 170
    iget-object v0, p0, Lafp;->e:Lacu;

    invoke-virtual {v0}, Lacu;->a()V

    .line 171
    iget-object v0, p0, Lafp;->d:Landroid/content/Context;

    iget-object v1, p0, Lafp;->n:Lafq;

    iget-object v2, p0, Lafp;->m:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1

    .line 173
    :cond_5
    iget v0, p1, Ladd;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 177
    iget v0, p1, Ladd;->a:I

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 186
    :pswitch_2
    iget-object v0, p0, Lafp;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    iput-object v0, p0, Lafp;->a:Lafg;

    .line 187
    invoke-direct {p0, v5}, Lafp;->b(I)V

    .line 188
    invoke-direct {p0, p1}, Lafp;->b(Ladd;)V

    goto :goto_0

    .line 198
    :pswitch_3
    iget-object v0, p0, Lafp;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    iput-object v0, p0, Lafp;->a:Lafg;

    .line 199
    invoke-direct {p0, v4}, Lafp;->b(I)V

    .line 201
    iget-object v0, p0, Lafp;->e:Lacu;

    invoke-virtual {v0}, Lacu;->d()I

    move-result v0

    iput v0, p0, Lafp;->g:I

    goto/16 :goto_0

    .line 205
    :pswitch_4
    iget-object v0, p0, Lafp;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    iput-object v0, p0, Lafp;->a:Lafg;

    .line 206
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lafp;->b(I)V

    .line 207
    iput v5, p0, Lafp;->g:I

    goto/16 :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lafp;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lafp;->g:I

    return v0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    iget-object v0, p0, Lafp;->f:Laub;

    invoke-virtual {v0}, Laub;->a()V

    .line 250
    iget-object v0, p0, Lafp;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    .line 251
    invoke-virtual {v0}, Lafg;->c()V

    goto :goto_0

    .line 254
    :cond_0
    iput-boolean v2, p0, Lafp;->h:Z

    .line 255
    iput v2, p0, Lafp;->g:I

    .line 256
    return-void
.end method
