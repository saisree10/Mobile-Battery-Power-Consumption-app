.class public final enum Lbab;
.super Ljava/lang/Enum;
.source "RateManager.java"


# static fields
.field public static final enum a:Lbab;

.field public static final enum b:Lbab;

.field public static final enum c:Lbab;

.field public static final enum d:Lbab;

.field private static final synthetic e:[Lbab;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lbab;

    const-string v1, "Optimize"

    invoke-direct {v0, v1, v2}, Lbab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbab;->a:Lbab;

    new-instance v0, Lbab;

    const-string v1, "ChangeSkin"

    invoke-direct {v0, v1, v3}, Lbab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbab;->b:Lbab;

    new-instance v0, Lbab;

    const-string v1, "OptimizeAgain"

    invoke-direct {v0, v1, v4}, Lbab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbab;->c:Lbab;

    new-instance v0, Lbab;

    const-string v1, "ChangeSkinAgain"

    invoke-direct {v0, v1, v5}, Lbab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbab;->d:Lbab;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Lbab;

    sget-object v1, Lbab;->a:Lbab;

    aput-object v1, v0, v2

    sget-object v1, Lbab;->b:Lbab;

    aput-object v1, v0, v3

    sget-object v1, Lbab;->c:Lbab;

    aput-object v1, v0, v4

    sget-object v1, Lbab;->d:Lbab;

    aput-object v1, v0, v5

    sput-object v0, Lbab;->e:[Lbab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbab;
    .locals 1
    .parameter

    .prologue
    .line 55
    const-class v0, Lbab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbab;

    return-object v0
.end method

.method public static values()[Lbab;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lbab;->e:[Lbab;

    invoke-virtual {v0}, [Lbab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbab;

    return-object v0
.end method
