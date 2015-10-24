.class public Lamq;
.super Ljava/lang/Object;
.source "ModeMap.java"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 21
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lamq;->a:[I

    .line 27
    new-array v0, v2, [I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0056

    aput v1, v0, v3

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00b3

    aput v1, v0, v4

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00b6

    aput v1, v0, v5

    sput-object v0, Lamq;->b:[I

    .line 33
    new-array v0, v2, [I

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00b1

    aput v1, v0, v3

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00b4

    aput v1, v0, v4

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00b7

    aput v1, v0, v5

    sput-object v0, Lamq;->c:[I

    return-void

    .line 21
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 40
    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    .line 41
    sget-object v0, Lamq;->a:[I

    aget v0, v0, p0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    .line 47
    sget-object v0, Lamq;->b:[I

    aget v0, v0, p0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static c(I)I
    .locals 1
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x3

    if-ge p0, v0, :cond_3

    .line 53
    if-nez p0, :cond_0

    invoke-static {}, Lazf;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a00b2

    .line 64
    :goto_0
    return v0

    .line 56
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    invoke-static {}, Lazf;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a00b5

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    invoke-static {}, Lazf;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a0287

    goto :goto_0

    .line 62
    :cond_2
    sget-object v0, Lamq;->c:[I

    aget v0, v0, p0

    goto :goto_0

    .line 64
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static d(I)I
    .locals 1
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    .line 70
    invoke-static {}, Lcom/dianxinos/powermanager/PowerMangerApplication;->a()Lcom/dianxinos/powermanager/PowerMangerApplication;

    move-result-object v0

    invoke-static {v0}, Lamp;->a(Landroid/content/Context;)Lamp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lamp;->g(I)I

    move-result p0

    .line 72
    :cond_0
    return p0
.end method
