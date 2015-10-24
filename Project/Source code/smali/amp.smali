.class public Lamp;
.super Ljava/lang/Object;
.source "ModeManager.java"


# static fields
.field private static c:I

.field private static d:I

.field private static e:Ljava/util/ArrayList;

.field private static h:Lamp;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private f:Lamx;

.field private g:Larr;

.field private i:Lamh;

.field private j:Lanb;

.field private k:Z

.field private l:Lanh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x3

    sput v0, Lamp;->c:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lamp;->b:Landroid/content/Context;

    .line 57
    invoke-static {p1, p0}, Lamh;->a(Landroid/content/Context;Lamp;)Lamh;

    move-result-object v0

    iput-object v0, p0, Lamp;->i:Lamh;

    .line 58
    iget-object v0, p0, Lamp;->b:Landroid/content/Context;

    iget-object v1, p0, Lamp;->i:Lamh;

    invoke-static {v0, p0, v1}, Lanb;->a(Landroid/content/Context;Lamp;Lamh;)Lanb;

    move-result-object v0

    iput-object v0, p0, Lamp;->j:Lanb;

    .line 59
    new-instance v0, Lamx;

    invoke-direct {v0, p1}, Lamx;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lamp;->f:Lamx;

    .line 60
    iget-object v0, p0, Lamp;->f:Lamx;

    iget-object v1, p0, Lamp;->i:Lamh;

    invoke-virtual {v1}, Lamh;->d()I

    move-result v1

    iget-object v2, p0, Lamp;->i:Lamh;

    invoke-virtual {v2}, Lamh;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lamx;->c(II)Z

    .line 61
    iget-object v0, p0, Lamp;->f:Lamx;

    invoke-virtual {v0}, Lamx;->f()Z

    .line 62
    iget-object v0, p0, Lamp;->f:Lamx;

    invoke-virtual {v0}, Lamx;->d()Z

    move-result v0

    iput-boolean v0, p0, Lamp;->k:Z

    .line 63
    iget-object v0, p0, Lamp;->b:Landroid/content/Context;

    invoke-static {v0}, Lanh;->a(Landroid/content/Context;)Lanh;

    move-result-object v0

    iput-object v0, p0, Lamp;->l:Lanh;

    .line 64
    invoke-direct {p0}, Lamp;->m()V

    .line 65
    iget-object v0, p0, Lamp;->f:Lamx;

    invoke-virtual {v0}, Lamx;->a()I

    move-result v0

    sput v0, Lamp;->c:I

    .line 66
    iget-object v0, p0, Lamp;->f:Lamx;

    invoke-virtual {v0}, Lamx;->b()I

    move-result v0

    sput v0, Lamp;->d:I

    .line 68
    sget v0, Lamp;->d:I

    sget v1, Lamp;->c:I

    if-lt v0, v1, :cond_0

    .line 69
    sget v0, Lamp;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lamp;->d:I

    .line 72
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lamp;->e:Ljava/util/ArrayList;

    .line 73
    invoke-direct {p0}, Lamp;->l()V

    .line 74
    invoke-static {p1}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    iput-object v0, p0, Lamp;->g:Larr;

    .line 75
    iget-object v0, p0, Lamp;->g:Larr;

    invoke-virtual {v0}, Larr;->p()I

    move-result v0

    iput v0, p0, Lamp;->a:I

    .line 78
    iget-object v0, p0, Lamp;->i:Lamh;

    invoke-virtual {v0}, Lamh;->b()V

    .line 79
    return-void
.end method

.method public static a(Landroid/content/Context;)Lamp;
    .locals 3
    .parameter

    .prologue
    .line 46
    sget-object v0, Lamp;->h:Lamp;

    if-nez v0, :cond_1

    .line 47
    const-class v1, Lamp;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lamp;->h:Lamp;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lamp;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lamp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lamp;->h:Lamp;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lamp;->h:Lamp;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private l()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    .line 171
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 172
    sget-object v2, Lamp;->e:Ljava/util/ArrayList;

    iget-object v3, p0, Lamp;->b:Landroid/content/Context;

    invoke-static {v1}, Lamq;->b(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    :goto_1
    sget v1, Lamp;->c:I

    if-ge v0, v1, :cond_1

    .line 176
    iget-object v1, p0, Lamp;->f:Lamx;

    invoke-virtual {v1, v0}, Lamx;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    sget-object v2, Lamp;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_1
    return-void
.end method

.method private m()V
    .locals 6

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x3

    const/4 v4, 0x1

    .line 216
    iget-object v0, p0, Lamp;->f:Lamx;

    invoke-virtual {v0}, Lamx;->c()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lamp;->f:Lamx;

    invoke-virtual {v0, v2}, Lamx;->a(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 218
    iget-object v0, p0, Lamp;->b:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a00b0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 219
    iget-object v0, p0, Lamp;->f:Lamx;

    iget-object v3, p0, Lamp;->j:Lanb;

    invoke-virtual {v3}, Lanb;->a()Ljava/util/ArrayList;

    move-result-object v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lamx;->a(ILjava/lang/String;Ljava/util/ArrayList;ZZ)V

    .line 221
    invoke-virtual {p0, v1}, Lamp;->a(I)V

    .line 222
    iput-boolean v4, p0, Lamp;->k:Z

    .line 223
    iget-object v0, p0, Lamp;->f:Lamx;

    iget-boolean v1, p0, Lamp;->k:Z

    invoke-virtual {v0, v1}, Lamx;->a(Z)V

    .line 224
    iget-object v0, p0, Lamp;->f:Lamx;

    invoke-virtual {v0, v4}, Lamx;->b(Z)V

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lamp;->c:I

    return v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 101
    sput p1, Lamp;->d:I

    .line 102
    iget-object v0, p0, Lamp;->f:Lamx;

    invoke-virtual {v0, p1}, Lamx;->b(I)V

    .line 103
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    sget-object v0, Lamp;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    sget-object v0, Lamp;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget v0, Lamp;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lamp;->c:I

    .line 86
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 93
    sget v0, Lamp;->d:I

    return v0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 106
    sget-object v0, Lamp;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 107
    sget v0, Lamp;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lamp;->c:I

    .line 113
    iget-object v0, p0, Lamp;->f:Lamx;

    sget v1, Lamp;->c:I

    invoke-virtual {v0, p1, v1}, Lamx;->a(II)V

    .line 114
    return-void
.end method

.method public c()I
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lamp;->f:Lamx;

    sget v1, Lamp;->d:I

    invoke-virtual {v0, v1}, Lamx;->e(I)I

    move-result v0

    return v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 130
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 131
    sget-object v0, Lamp;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    :goto_0
    return-object v0

    .line 132
    :cond_0
    sget v0, Lamp;->c:I

    if-ge p1, v0, :cond_1

    .line 133
    sget-object v0, Lamp;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 143
    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 144
    iget-object v0, p0, Lamp;->b:Landroid/content/Context;

    invoke-static {p1}, Lamq;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lamp;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    sget v0, Lamp;->d:I

    sget-object v1, Lamp;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 151
    const/4 v0, 0x1

    sput v0, Lamp;->d:I

    .line 153
    :cond_0
    sget-object v0, Lamp;->e:Ljava/util/ArrayList;

    sget v1, Lamp;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 3
    .parameter

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.MODECHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, p1}, Lamp;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    const-string v2, "ModeName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lamp;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 190
    return-void
.end method

.method public f()Lanb;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lamp;->j:Lanb;

    return-object v0
.end method

.method public f(I)V
    .locals 2
    .parameter

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dianxinos.dxbs.MODEMODIFIED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lamp;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    return-void
.end method

.method public g(I)I
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lamp;->f:Lamx;

    invoke-virtual {v0, p1}, Lamx;->d(I)I

    move-result v0

    return v0
.end method

.method public g()Lamh;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lamp;->i:Lamh;

    return-object v0
.end method

.method public h(I)I
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lamp;->f:Lamx;

    invoke-virtual {v0, p1}, Lamx;->e(I)I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lamp;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    invoke-direct {p0}, Lamp;->l()V

    .line 168
    return-void
.end method

.method public i(I)V
    .locals 3
    .parameter

    .prologue
    .line 229
    iput p1, p0, Lamp;->a:I

    .line 230
    iget-object v0, p0, Lamp;->g:Larr;

    invoke-virtual {v0, p1}, Larr;->j(I)V

    .line 231
    iget v0, p0, Lamp;->a:I

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lamp;->g:Larr;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Larr;->a(J)V

    .line 235
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lamp;->i:Lamh;

    invoke-virtual {v0}, Lamh;->g()V

    .line 211
    iget-object v0, p0, Lamp;->i:Lamh;

    sget v1, Lamp;->d:I

    invoke-virtual {v0, v1}, Lamh;->c(I)V

    .line 212
    iget-object v0, p0, Lamp;->i:Lamh;

    invoke-virtual {v0}, Lamh;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lamp;->k:Z

    return v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamp;->k:Z

    .line 248
    iget-object v0, p0, Lamp;->f:Lamx;

    iget-boolean v1, p0, Lamp;->k:Z

    invoke-virtual {v0, v1}, Lamx;->a(Z)V

    .line 249
    return-void
.end method
