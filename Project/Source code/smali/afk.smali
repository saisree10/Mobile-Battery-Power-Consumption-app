.class Lafk;
.super Lafh;
.source "HealthCharger.java"


# static fields
.field private static volatile b:Lafk;


# instance fields
.field private c:Ljava/util/ArrayList;

.field private d:Landroid/content/Context;

.field private e:Lacu;

.field private f:Laub;

.field private g:I

.field private volatile h:Z

.field private i:Laff;

.field private j:I

.field private k:Landroid/content/IntentFilter;

.field private l:Lafl;

.field private m:Ladh;

.field private n:Lb;

.field private o:Lafs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lafk;->b:Lafk;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lb;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Lafh;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lafk;->c:Ljava/util/ArrayList;

    .line 38
    iput v2, p0, Lafk;->g:I

    .line 47
    const/16 v0, 0x6b

    iput v0, p0, Lafk;->j:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lafk;->o:Lafs;

    .line 101
    iget-object v7, p0, Lafk;->c:Ljava/util/ArrayList;

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

    .line 105
    iget-object v0, p0, Lafk;->c:Ljava/util/ArrayList;

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

    .line 109
    iget-object v0, p0, Lafk;->c:Ljava/util/ArrayList;

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

    .line 112
    iput-object p1, p0, Lafk;->d:Landroid/content/Context;

    .line 113
    new-instance v0, Lacu;

    iget-object v1, p0, Lafk;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lacu;-><init>(Landroid/content/Context;Lb;)V

    iput-object v0, p0, Lafk;->e:Lacu;

    .line 114
    iget-object v0, p0, Lafk;->d:Landroid/content/Context;

    invoke-static {v0}, Laub;->a(Landroid/content/Context;)Laub;

    move-result-object v0

    iput-object v0, p0, Lafk;->f:Laub;

    .line 115
    iget-object v0, p0, Lafk;->d:Landroid/content/Context;

    invoke-static {v0}, Laff;->a(Landroid/content/Context;)Laff;

    move-result-object v0

    iput-object v0, p0, Lafk;->i:Laff;

    .line 116
    iget-object v0, p0, Lafk;->d:Landroid/content/Context;

    invoke-static {v0}, Ladh;->a(Landroid/content/Context;)Ladh;

    move-result-object v0

    iput-object v0, p0, Lafk;->m:Ladh;

    .line 118
    iget-object v0, p0, Lafk;->m:Ladh;

    invoke-virtual {v0}, Ladh;->f()I

    move-result v0

    iput v0, p0, Lafk;->j:I

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lafk;->k:Landroid/content/IntentFilter;

    .line 120
    iget-object v0, p0, Lafk;->k:Landroid/content/IntentFilter;

    const-string v1, "com.dianxinos.dxbs.HEALTHCHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    new-instance v0, Lafl;

    invoke-direct {v0, p0}, Lafl;-><init>(Lafk;)V

    iput-object v0, p0, Lafk;->l:Lafl;

    .line 122
    iput-object p2, p0, Lafk;->n:Lb;

    .line 124
    iget-object v0, p0, Lafk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    iput-object v0, p0, Lafk;->a:Lafg;

    .line 127
    invoke-static {p1}, Lafs;->a(Landroid/content/Context;)Lafs;

    move-result-object v0

    iput-object v0, p0, Lafk;->o:Lafs;

    .line 128
    return-void
.end method

.method static synthetic a(Lafk;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lafk;->j:I

    return v0
.end method

.method static synthetic a(Lafk;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lafk;->j:I

    return p1
.end method

.method public static a(Landroid/content/Context;)Lafk;
    .locals 1
    .parameter

    .prologue
    .line 131
    new-instance v0, Lc;

    invoke-direct {v0}, Lc;-><init>()V

    invoke-static {p0, v0}, Lafk;->a(Landroid/content/Context;Lb;)Lafk;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lb;)Lafk;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 135
    sget-object v0, Lafk;->b:Lafk;

    if-nez v0, :cond_1

    .line 136
    const-class v1, Lafk;

    monitor-enter v1

    .line 137
    :try_start_0
    sget-object v0, Lafk;->b:Lafk;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lafk;

    invoke-direct {v0, p0, p1}, Lafk;-><init>(Landroid/content/Context;Lb;)V

    sput-object v0, Lafk;->b:Lafk;

    .line 140
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    :cond_1
    sget-object v0, Lafk;->b:Lafk;

    return-object v0

    .line 140
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-static {p0}, Lafk;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lafk;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lafk;->g:I

    return p1
.end method

.method static synthetic b(Lafk;)Lacu;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lafk;->e:Lacu;

    return-object v0
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 232
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lafk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 233
    if-ge v1, p1, :cond_0

    .line 234
    iget-object v0, p0, Lafk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    invoke-virtual {v0}, Lafg;->b()V

    .line 232
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 235
    :cond_0
    if-ne v1, p1, :cond_1

    .line 236
    iget-object v0, p0, Lafk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    invoke-virtual {v0}, Lafg;->a()V

    goto :goto_1

    .line 238
    :cond_1
    iget-object v0, p0, Lafk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    invoke-virtual {v0}, Lafg;->c()V

    goto :goto_1

    .line 241
    :cond_2
    return-void
.end method

.method private b(Ladd;)V
    .locals 7
    .parameter

    .prologue
    .line 249
    iget v0, p1, Ladd;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lafk;->f:Laub;

    iget v1, p1, Ladd;->e:I

    iget v2, p1, Ladd;->c:I

    iget v3, p1, Ladd;->d:I

    iget-object v4, p0, Lafk;->n:Lb;

    invoke-interface {v4}, Lb;->a()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Laub;->a(IIIJZ)V

    .line 252
    iget-object v0, p0, Lafk;->f:Laub;

    invoke-virtual {v0}, Laub;->b()J

    move-result-wide v0

    .line 253
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x258

    iput v0, p0, Lafk;->g:I

    .line 255
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    return-void
.end method

.method static synthetic c(Lafk;)Ladh;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lafk;->m:Ladh;

    return-object v0
.end method

.method static synthetic c(Lafk;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lafk;->b(I)V

    return-void
.end method

.method static synthetic d(Lafk;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lafk;->g:I

    return v0
.end method

.method static synthetic e(Lafk;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lafk;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lafk;)Lafs;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lafk;->o:Lafs;

    return-object v0
.end method

.method static synthetic g(Lafk;)Lafl;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lafk;->l:Lafl;

    return-object v0
.end method

.method static synthetic h(Lafk;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lafk;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lafk;)Laff;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lafk;->i:Laff;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput p1, p0, Lafk;->g:I

    .line 265
    return-void
.end method

.method public a(Ladd;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 147
    iget-boolean v0, p0, Lafk;->h:Z

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0, p1}, Lafk;->b(Ladd;)V

    .line 149
    iput-boolean v3, p0, Lafk;->h:Z

    .line 152
    :cond_0
    iget v0, p1, Ladd;->e:I

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lafk;->i:Laff;

    invoke-virtual {v0, p1}, Laff;->a(Ladd;)V

    .line 224
    :goto_0
    return-void

    .line 159
    :cond_1
    iget v0, p1, Ladd;->a:I

    if-ne v0, v4, :cond_4

    .line 161
    iget-object v0, p0, Lafk;->e:Lacu;

    invoke-virtual {v0}, Lacu;->b()V

    .line 162
    iget v0, p1, Ladd;->c:I

    const/16 v1, 0x50

    if-gt v0, v1, :cond_3

    .line 163
    const/16 v0, 0x69

    iput v0, p0, Lafk;->j:I

    .line 164
    iget-object v0, p0, Lafk;->m:Ladh;

    iget v1, p0, Lafk;->j:I

    invoke-virtual {v0, v1}, Ladh;->d(I)V

    .line 190
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lafk;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafk;->b(Ljava/lang/String;)V

    .line 192
    iget v0, p0, Lafk;->j:I

    packed-switch v0, :pswitch_data_0

    .line 220
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lafk;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafk;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_3
    const/16 v0, 0x65

    iput v0, p0, Lafk;->j:I

    .line 167
    iget-object v0, p0, Lafk;->m:Ladh;

    iget v1, p0, Lafk;->j:I

    invoke-virtual {v0, v1}, Ladh;->d(I)V

    goto :goto_1

    .line 169
    :cond_4
    iget v0, p1, Ladd;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 171
    iget v0, p0, Lafk;->j:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_2

    .line 175
    const/16 v0, 0x66

    iput v0, p0, Lafk;->j:I

    .line 176
    iget-object v0, p0, Lafk;->m:Ladh;

    iget v1, p0, Lafk;->j:I

    invoke-virtual {v0, v1}, Ladh;->d(I)V

    .line 177
    iget-object v0, p0, Lafk;->e:Lacu;

    invoke-virtual {v0}, Lacu;->a()V

    .line 178
    iget-object v0, p0, Lafk;->d:Landroid/content/Context;

    iget-object v1, p0, Lafk;->l:Lafl;

    iget-object v2, p0, Lafk;->k:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1

    .line 180
    :cond_5
    iget v0, p1, Ladd;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 184
    iget v0, p1, Ladd;->a:I

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 194
    :pswitch_1
    iget-object v0, p0, Lafk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    iput-object v0, p0, Lafk;->a:Lafg;

    .line 195
    invoke-direct {p0, v5}, Lafk;->b(I)V

    .line 196
    invoke-direct {p0, p1}, Lafk;->b(Ladd;)V

    goto/16 :goto_0

    .line 200
    :pswitch_2
    iget-object v0, p0, Lafk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    iput-object v0, p0, Lafk;->a:Lafg;

    .line 201
    invoke-direct {p0, v3}, Lafk;->b(I)V

    .line 202
    invoke-direct {p0, p1}, Lafk;->b(Ladd;)V

    goto/16 :goto_0

    .line 206
    :pswitch_3
    iget-object v0, p0, Lafk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    iput-object v0, p0, Lafk;->a:Lafg;

    .line 207
    invoke-direct {p0, v4}, Lafk;->b(I)V

    .line 209
    iget-object v0, p0, Lafk;->e:Lacu;

    invoke-virtual {v0}, Lacu;->d()I

    move-result v0

    iput v0, p0, Lafk;->g:I

    goto/16 :goto_0

    .line 213
    :pswitch_4
    iget-object v0, p0, Lafk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    iput-object v0, p0, Lafk;->a:Lafg;

    .line 214
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lafk;->b(I)V

    .line 215
    iput v5, p0, Lafk;->g:I

    goto/16 :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lafk;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lafk;->g:I

    return v0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-object v0, p0, Lafk;->f:Laub;

    invoke-virtual {v0}, Laub;->a()V

    .line 271
    iget-object v0, p0, Lafk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    .line 272
    invoke-virtual {v0}, Lafg;->c()V

    goto :goto_0

    .line 275
    :cond_0
    iput-boolean v2, p0, Lafk;->h:Z

    .line 276
    iput v2, p0, Lafk;->g:I

    .line 277
    return-void
.end method
