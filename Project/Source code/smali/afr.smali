.class Lafr;
.super Lafh;
.source "UnplugCharger.java"


# static fields
.field private static b:Lafr;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;

.field private e:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Lafh;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lafr;->d:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Lafr;->c:Landroid/content/Context;

    .line 25
    iget-object v7, p0, Lafr;->d:Ljava/util/ArrayList;

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

    .line 29
    iget-object v0, p0, Lafr;->d:Ljava/util/ArrayList;

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

    .line 33
    iget-object v0, p0, Lafr;->d:Ljava/util/ArrayList;

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

    .line 37
    iget-object v0, p0, Lafr;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafg;

    iput-object v0, p0, Lafr;->a:Lafg;

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;)Lafr;
    .locals 2
    .parameter

    .prologue
    .line 41
    sget-object v0, Lafr;->b:Lafr;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lafr;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lafr;->b:Lafr;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lafr;

    invoke-direct {v0, p0}, Lafr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lafr;->b:Lafr;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lafr;->b:Lafr;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput p1, p0, Lafr;->e:I

    .line 69
    return-void
.end method

.method public a(Ladd;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    iget v0, p1, Ladd;->k:I

    iput v0, p0, Lafr;->e:I

    .line 54
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lafr;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lafr;->e:I

    return v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
