.class public final enum Lakt;
.super Ljava/lang/Enum;
.source "GServiceConsts.java"


# static fields
.field public static final enum a:Lakt;

.field public static final enum b:Lakt;

.field public static final enum c:Lakt;

.field public static final enum d:Lakt;

.field public static final enum e:Lakt;

.field public static final enum f:Lakt;

.field public static final enum g:Lakt;

.field private static final synthetic h:[Lakt;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lakt;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Lakt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakt;->a:Lakt;

    .line 29
    new-instance v0, Lakt;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lakt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakt;->b:Lakt;

    .line 30
    new-instance v0, Lakt;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lakt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakt;->c:Lakt;

    .line 31
    new-instance v0, Lakt;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lakt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakt;->d:Lakt;

    .line 32
    new-instance v0, Lakt;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lakt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakt;->e:Lakt;

    .line 33
    new-instance v0, Lakt;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lakt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakt;->f:Lakt;

    .line 34
    new-instance v0, Lakt;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lakt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lakt;->g:Lakt;

    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Lakt;

    sget-object v1, Lakt;->a:Lakt;

    aput-object v1, v0, v3

    sget-object v1, Lakt;->b:Lakt;

    aput-object v1, v0, v4

    sget-object v1, Lakt;->c:Lakt;

    aput-object v1, v0, v5

    sget-object v1, Lakt;->d:Lakt;

    aput-object v1, v0, v6

    sget-object v1, Lakt;->e:Lakt;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lakt;->f:Lakt;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lakt;->g:Lakt;

    aput-object v2, v0, v1

    sput-object v0, Lakt;->h:[Lakt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lakt;
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-static {}, Lakt;->values()[Lakt;

    move-result-object v0

    .line 39
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 40
    :cond_0
    sget-object v0, Lakt;->g:Lakt;

    .line 42
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lakt;
    .locals 1
    .parameter

    .prologue
    .line 27
    const-class v0, Lakt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lakt;

    return-object v0
.end method

.method public static values()[Lakt;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lakt;->h:[Lakt;

    invoke-virtual {v0}, [Lakt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lakt;

    return-object v0
.end method
