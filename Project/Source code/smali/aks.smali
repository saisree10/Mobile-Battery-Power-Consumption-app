.class public final enum Laks;
.super Ljava/lang/Enum;
.source "GServiceConsts.java"


# static fields
.field public static final enum a:Laks;

.field public static final enum b:Laks;

.field public static final enum c:Laks;

.field private static final synthetic d:[Laks;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Laks;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Laks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laks;->a:Laks;

    .line 50
    new-instance v0, Laks;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Laks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laks;->b:Laks;

    .line 51
    new-instance v0, Laks;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Laks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laks;->c:Laks;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Laks;

    sget-object v1, Laks;->a:Laks;

    aput-object v1, v0, v2

    sget-object v1, Laks;->b:Laks;

    aput-object v1, v0, v3

    sget-object v1, Laks;->c:Laks;

    aput-object v1, v0, v4

    sput-object v0, Laks;->d:[Laks;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Laks;
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-static {}, Laks;->values()[Laks;

    move-result-object v0

    .line 56
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 57
    :cond_0
    sget-object v0, Laks;->b:Laks;

    .line 59
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Laks;
    .locals 1
    .parameter

    .prologue
    .line 47
    const-class v0, Laks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laks;

    return-object v0
.end method

.method public static values()[Laks;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Laks;->d:[Laks;

    invoke-virtual {v0}, [Laks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laks;

    return-object v0
.end method
