.class public final Lrq;
.super Lrx;
.source "BatteryStatsImpl.java"


# static fields
.field private static b:Ljava/lang/Class;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Z


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    sput-boolean v0, Lrq;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    invoke-direct {p0}, Lrx;-><init>()V

    .line 273
    iput-object p1, p0, Lrq;->a:Ljava/lang/Object;

    .line 274
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 282
    const-string v0, "com.android.internal.os.BatteryStatsImpl$Uid$Sensor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lrq;->b:Ljava/lang/Class;

    .line 284
    sget-object v0, Lrq;->b:Ljava/lang/Class;

    const-string v1, "getHandle"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lrq;->c:Ljava/lang/reflect/Method;

    .line 285
    sget-object v0, Lrq;->b:Ljava/lang/Class;

    const-string v1, "getSensorTime"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lrq;->d:Ljava/lang/reflect/Method;

    .line 286
    return-void
.end method

.method protected a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 297
    sput-boolean p1, Lrq;->e:Z

    .line 298
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 292
    sget-boolean v0, Lrq;->e:Z

    return v0
.end method

.method public c()I
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lrq;->a:Ljava/lang/Object;

    sget-object v1, Lrq;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lrq;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 303
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public d()Lrm;
    .locals 4

    .prologue
    .line 308
    new-instance v0, Lrm;

    iget-object v1, p0, Lrq;->a:Ljava/lang/Object;

    sget-object v2, Lrq;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lrq;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lrm;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic e()Lrt;
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lrq;->d()Lrm;

    move-result-object v0

    return-object v0
.end method
