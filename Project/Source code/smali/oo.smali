.class public final enum Loo;
.super Ljava/lang/Enum;
.source "SharedPrefsUtils.java"


# static fields
.field public static final enum a:Loo;

.field public static final enum b:Loo;

.field public static final enum c:Loo;

.field public static final enum d:Loo;

.field private static final synthetic e:[Loo;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Loo;

    const-string v1, "Query"

    invoke-direct {v0, v1, v2}, Loo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Loo;->a:Loo;

    new-instance v0, Loo;

    const-string v1, "Increase"

    invoke-direct {v0, v1, v3}, Loo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Loo;->b:Loo;

    new-instance v0, Loo;

    const-string v1, "ByCoin"

    invoke-direct {v0, v1, v4}, Loo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Loo;->c:Loo;

    new-instance v0, Loo;

    const-string v1, "ByPlay"

    invoke-direct {v0, v1, v5}, Loo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Loo;->d:Loo;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Loo;

    sget-object v1, Loo;->a:Loo;

    aput-object v1, v0, v2

    sget-object v1, Loo;->b:Loo;

    aput-object v1, v0, v3

    sget-object v1, Loo;->c:Loo;

    aput-object v1, v0, v4

    sget-object v1, Loo;->d:Loo;

    aput-object v1, v0, v5

    sput-object v0, Loo;->e:[Loo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Loo;
    .locals 1
    .parameter

    .prologue
    .line 14
    const-class v0, Loo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Loo;

    return-object v0
.end method

.method public static values()[Loo;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Loo;->e:[Loo;

    invoke-virtual {v0}, [Loo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Loo;

    return-object v0
.end method
