.class public Lrm;
.super Lrt;
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
    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lrm;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lrt;-><init>()V

    .line 95
    iput-object p1, p0, Lrm;->a:Ljava/lang/Object;

    .line 96
    return-void
.end method


# virtual methods
.method public a(JI)J
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lrm;->a:Ljava/lang/Object;

    sget-object v1, Lrm;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lrm;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected a()V
    .locals 5

    .prologue
    .line 103
    const-string v0, "com.android.internal.os.BatteryStatsImpl$Timer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lrm;->b:Ljava/lang/Class;

    .line 105
    sget-object v0, Lrm;->b:Ljava/lang/Class;

    const-string v1, "getTotalTimeLocked"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lrm;->c:Ljava/lang/reflect/Method;

    .line 106
    return-void
.end method

.method protected a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 117
    sput-boolean p1, Lrm;->d:Z

    .line 118
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lrm;->d:Z

    return v0
.end method
