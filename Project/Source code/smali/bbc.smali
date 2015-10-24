.class public final enum Lbbc;
.super Ljava/lang/Enum;
.source "AsyncTask.java"


# static fields
.field public static final enum a:Lbbc;

.field public static final enum b:Lbbc;

.field public static final enum c:Lbbc;

.field private static final synthetic d:[Lbbc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 282
    new-instance v0, Lbbc;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lbbc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbbc;->a:Lbbc;

    .line 286
    new-instance v0, Lbbc;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lbbc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbbc;->b:Lbbc;

    .line 290
    new-instance v0, Lbbc;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lbbc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbbc;->c:Lbbc;

    .line 278
    const/4 v0, 0x3

    new-array v0, v0, [Lbbc;

    sget-object v1, Lbbc;->a:Lbbc;

    aput-object v1, v0, v2

    sget-object v1, Lbbc;->b:Lbbc;

    aput-object v1, v0, v3

    sget-object v1, Lbbc;->c:Lbbc;

    aput-object v1, v0, v4

    sput-object v0, Lbbc;->d:[Lbbc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbbc;
    .locals 1
    .parameter

    .prologue
    .line 278
    const-class v0, Lbbc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbbc;

    return-object v0
.end method

.method public static values()[Lbbc;
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lbbc;->d:[Lbbc;

    invoke-virtual {v0}, [Lbbc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbbc;

    return-object v0
.end method
