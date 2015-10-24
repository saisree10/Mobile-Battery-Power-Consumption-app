.class public final enum Lbad;
.super Ljava/lang/Enum;
.source "RateManager.java"


# static fields
.field public static final enum a:Lbad;

.field public static final enum b:Lbad;

.field private static final synthetic c:[Lbad;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lbad;

    const-string v1, "Optimize"

    invoke-direct {v0, v1, v2}, Lbad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbad;->a:Lbad;

    new-instance v0, Lbad;

    const-string v1, "ChangeSkin"

    invoke-direct {v0, v1, v3}, Lbad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbad;->b:Lbad;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lbad;

    sget-object v1, Lbad;->a:Lbad;

    aput-object v1, v0, v2

    sget-object v1, Lbad;->b:Lbad;

    aput-object v1, v0, v3

    sput-object v0, Lbad;->c:[Lbad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbad;
    .locals 1
    .parameter

    .prologue
    .line 51
    const-class v0, Lbad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbad;

    return-object v0
.end method

.method public static values()[Lbad;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lbad;->c:[Lbad;

    invoke-virtual {v0}, [Lbad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbad;

    return-object v0
.end method
