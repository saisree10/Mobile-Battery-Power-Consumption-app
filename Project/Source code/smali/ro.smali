.class public final Lro;
.super Lrv;
.source "BatteryStatsImpl.java"


# static fields
.field private static b:Ljava/lang/Class;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    sput-boolean v0, Lro;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    invoke-direct {p0}, Lrv;-><init>()V

    .line 408
    iput-object p1, p0, Lro;->a:Ljava/lang/Object;

    .line 409
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 5
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lro;->a:Ljava/lang/Object;

    sget-object v1, Lro;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lro;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 436
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected a()V
    .locals 5

    .prologue
    .line 416
    const-string v0, "com.android.internal.os.BatteryStatsImpl$Uid$Pkg"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lro;->b:Ljava/lang/Class;

    .line 418
    sget-object v0, Lro;->b:Ljava/lang/Class;

    const-string v1, "getWakeups"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lro;->c:Ljava/lang/reflect/Method;

    .line 419
    return-void
.end method

.method protected a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 430
    sput-boolean p1, Lro;->d:Z

    .line 431
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 425
    sget-boolean v0, Lro;->d:Z

    return v0
.end method
