.class public Lrj;
.super Lrh;
.source "IBatteryStats.java"


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
    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lrj;->e:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lrh;-><init>()V

    .line 15
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lrj;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 22
    new-instance v0, Lrj;

    invoke-direct {v0}, Lrj;-><init>()V

    .line 23
    sget-object v2, Lrj;->d:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 25
    :try_start_0
    sget-object v2, Lrj;->d:Ljava/lang/reflect/Method;

    .line 26
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 27
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 28
    iput-object v2, v0, Lrj;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    move-object v0, v1

    .line 36
    goto :goto_0

    .line 30
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 49
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lrj;->b:Ljava/lang/Class;

    .line 50
    sget-object v0, Lrj;->b:Ljava/lang/Class;

    const-string v1, "getStatistics"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lrj;->c:Ljava/lang/reflect/Method;

    .line 51
    const-string v0, "com.android.internal.app.IBatteryStats$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    const-string v1, "asInterface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lrj;->d:Ljava/lang/reflect/Method;

    .line 53
    return-void
.end method

.method protected a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 64
    sput-boolean p1, Lrj;->e:Z

    .line 65
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lrj;->e:Z

    return v0
.end method

.method public c()[B
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lrj;->a:Ljava/lang/Object;

    sget-object v1, Lrj;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2}, Lrj;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method
