.class public final enum Laoe;
.super Ljava/lang/Enum;
.source "CoinFuncMgr.java"


# static fields
.field public static final enum a:Laoe;

.field public static final enum b:Laoe;

.field public static final enum c:Laoe;

.field public static final enum d:Laoe;

.field public static final enum e:Laoe;

.field public static final enum f:Laoe;

.field public static final enum g:Laoe;

.field public static final enum h:Laoe;

.field private static final i:Ljava/util/List;

.field private static final synthetic p:[Laoe;


# instance fields
.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Laoe;

    const-string v1, "TOTAL"

    const-string v3, "totalfunc"

    const/16 v4, 0x76c

    sget-object v5, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v5, 0x7f0a02c6

    sget-object v6, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v6, 0x7f0a02c8

    move v7, v2

    invoke-direct/range {v0 .. v7}, Laoe;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Laoe;->a:Laoe;

    .line 28
    new-instance v3, Laoe;

    const-string v4, "AUTOCPU"

    const-string v6, "autocpu"

    const/16 v7, 0x190

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v8, 0x7f0a018b

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v9, 0x7f0a018c

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v10, 0x7f0203c1

    move v5, v11

    invoke-direct/range {v3 .. v10}, Laoe;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v3, Laoe;->b:Laoe;

    .line 32
    new-instance v3, Laoe;

    const-string v4, "LOCK_CLEAR"

    const-string v6, "lockclear"

    const/16 v7, 0x17c

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v8, 0x7f0a0294

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v9, 0x7f0a0295

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v10, 0x7f0203c2

    move v5, v12

    invoke-direct/range {v3 .. v10}, Laoe;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v3, Laoe;->c:Laoe;

    .line 36
    new-instance v3, Laoe;

    const-string v4, "AUTO_NET"

    const-string v6, "autonet"

    const/16 v7, 0x12c

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v8, 0x7f0a0292

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v9, 0x7f0a0293

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v10, 0x7f0203c3

    move v5, v13

    invoke-direct/range {v3 .. v10}, Laoe;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v3, Laoe;->d:Laoe;

    .line 40
    new-instance v3, Laoe;

    const-string v4, "AUTO_POWER"

    const-string v6, "autopower"

    const/16 v7, 0x140

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v8, 0x7f0a0145

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v9, 0x7f0a0149

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v10, 0x7f0203c4

    move v5, v14

    invoke-direct/range {v3 .. v10}, Laoe;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v3, Laoe;->e:Laoe;

    .line 44
    new-instance v3, Laoe;

    const-string v4, "AUTO_TIME"

    const/4 v5, 0x5

    const-string v6, "autotime"

    const/16 v7, 0x154

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v8, 0x7f0a014d

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v9, 0x7f0a014e

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v10, 0x7f0203c5

    invoke-direct/range {v3 .. v10}, Laoe;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v3, Laoe;->f:Laoe;

    .line 48
    new-instance v3, Laoe;

    const-string v4, "AUTO_CLEAR"

    const/4 v5, 0x6

    const-string v6, "autoclear"

    const/16 v7, 0x168

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v8, 0x7f0a016a

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v9, 0x7f0a016b

    sget-object v0, Lly;->e:Lcom/dianxinos/dxbs/R$drawable;

    const v10, 0x7f0203c0

    invoke-direct/range {v3 .. v10}, Laoe;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v3, Laoe;->g:Laoe;

    .line 52
    new-instance v3, Laoe;

    const-string v4, "NONE_SENSE"

    const/4 v5, 0x7

    const-string v6, "nonesense"

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v8, 0x7f0a02c5

    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v9, 0x7f0a02c7

    move v7, v2

    move v10, v2

    invoke-direct/range {v3 .. v10}, Laoe;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v3, Laoe;->h:Laoe;

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [Laoe;

    sget-object v1, Laoe;->a:Laoe;

    aput-object v1, v0, v2

    sget-object v1, Laoe;->b:Laoe;

    aput-object v1, v0, v11

    sget-object v1, Laoe;->c:Laoe;

    aput-object v1, v0, v12

    sget-object v1, Laoe;->d:Laoe;

    aput-object v1, v0, v13

    sget-object v1, Laoe;->e:Laoe;

    aput-object v1, v0, v14

    const/4 v1, 0x5

    sget-object v2, Laoe;->f:Laoe;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Laoe;->g:Laoe;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Laoe;->h:Laoe;

    aput-object v2, v0, v1

    sput-object v0, Laoe;->p:[Laoe;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoe;->i:Ljava/util/List;

    .line 59
    sget-object v0, Laoe;->i:Ljava/util/List;

    sget-object v1, Laoe;->b:Laoe;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Laoe;->i:Ljava/util/List;

    sget-object v1, Laoe;->c:Laoe;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Laoe;->i:Ljava/util/List;

    sget-object v1, Laoe;->d:Laoe;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Laoe;->i:Ljava/util/List;

    sget-object v1, Laoe;->e:Laoe;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Laoe;->i:Ljava/util/List;

    sget-object v1, Laoe;->f:Laoe;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Laoe;->i:Ljava/util/List;

    sget-object v1, Laoe;->g:Laoe;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Laoe;->o:I

    .line 80
    iput-object p3, p0, Laoe;->k:Ljava/lang/String;

    .line 81
    iput p4, p0, Laoe;->j:I

    .line 82
    iput p5, p0, Laoe;->n:I

    .line 83
    iput p6, p0, Laoe;->m:I

    .line 84
    iput p7, p0, Laoe;->l:I

    .line 85
    return-void
.end method

.method public static a(Ljava/lang/String;)Laoe;
    .locals 5
    .parameter

    .prologue
    .line 125
    if-eqz p0, :cond_1

    .line 126
    invoke-static {}, Laoe;->values()[Laoe;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 127
    invoke-virtual {v0}, Laoe;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    :goto_1
    return-object v0

    .line 126
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 132
    :cond_1
    sget-object v0, Laoe;->h:Laoe;

    goto :goto_1
.end method

.method public static a()Ljava/util/List;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Laoe;->i:Ljava/util/List;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Laoe;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Laoe;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laoe;

    return-object v0
.end method

.method public static values()[Laoe;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Laoe;->p:[Laoe;

    invoke-virtual {v0}, [Laoe;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoe;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput p1, p0, Laoe;->o:I

    .line 102
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Laoe;->k:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Laoe;->o:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Laoe;->j:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Laoe;->n:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Laoe;->m:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Laoe;->l:I

    return v0
.end method
