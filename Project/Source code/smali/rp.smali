.class public final Lrp;
.super Lrw;
.source "BatteryStatsImpl.java"


# static fields
.field private static b:Ljava/lang/Class;

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Z


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x0

    sput-boolean v0, Lrp;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    invoke-direct {p0}, Lrw;-><init>()V

    .line 331
    iput-object p1, p0, Lrp;->a:Ljava/lang/Object;

    .line 332
    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 5
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lrp;->a:Ljava/lang/Object;

    sget-object v1, Lrp;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lrp;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 366
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 342
    const-string v0, "com.android.internal.os.BatteryStatsImpl$Uid$Proc"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lrp;->b:Ljava/lang/Class;

    .line 344
    sget-object v0, Lrp;->b:Ljava/lang/Class;

    const-string v1, "getUserTime"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lrp;->c:Ljava/lang/reflect/Method;

    .line 345
    sget-object v0, Lrp;->b:Ljava/lang/Class;

    const-string v1, "getSystemTime"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lrp;->d:Ljava/lang/reflect/Method;

    .line 346
    sget-object v0, Lrp;->b:Ljava/lang/Class;

    const-string v1, "getForegroundTime"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lrp;->e:Ljava/lang/reflect/Method;

    .line 347
    sget-object v0, Lrp;->b:Ljava/lang/Class;

    const-string v1, "getTimeAtCpuSpeedStep"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lrp;->f:Ljava/lang/reflect/Method;

    .line 349
    return-void
.end method

.method protected a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 360
    sput-boolean p1, Lrp;->g:Z

    .line 361
    return-void
.end method

.method public b(I)J
    .locals 5
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lrp;->a:Ljava/lang/Object;

    sget-object v1, Lrp;->d:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lrp;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 372
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 355
    sget-boolean v0, Lrp;->g:Z

    return v0
.end method
