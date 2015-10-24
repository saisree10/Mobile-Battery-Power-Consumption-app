.class public final enum Lpd;
.super Ljava/lang/Enum;
.source "ToolboxManager.java"


# static fields
.field public static final enum a:Lpd;

.field public static final enum b:Lpd;

.field private static final synthetic c:[Lpd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lpd;

    const-string v1, "CHINA"

    invoke-direct {v0, v1, v2}, Lpd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpd;->a:Lpd;

    .line 21
    new-instance v0, Lpd;

    const-string v1, "OVERSEA"

    invoke-direct {v0, v1, v3}, Lpd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpd;->b:Lpd;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lpd;

    sget-object v1, Lpd;->a:Lpd;

    aput-object v1, v0, v2

    sget-object v1, Lpd;->b:Lpd;

    aput-object v1, v0, v3

    sput-object v0, Lpd;->c:[Lpd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpd;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lpd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lpd;

    return-object v0
.end method

.method public static values()[Lpd;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lpd;->c:[Lpd;

    invoke-virtual {v0}, [Lpd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpd;

    return-object v0
.end method
