.class public final Lrr;
.super Lry;
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
    .line 233
    const/4 v0, 0x0

    sput-boolean v0, Lrr;->d:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    invoke-direct {p0}, Lry;-><init>()V

    .line 220
    iput-object p1, p0, Lrr;->a:Ljava/lang/Object;

    .line 221
    return-void
.end method


# virtual methods
.method public a(I)Lrm;
    .locals 5
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lrr;->a:Ljava/lang/Object;

    sget-object v1, Lrr;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lrr;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 248
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrm;

    invoke-direct {v0, v1}, Lrm;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a()V
    .locals 5

    .prologue
    .line 228
    const-string v0, "com.android.internal.os.BatteryStatsImpl$Uid$Wakelock"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lrr;->b:Ljava/lang/Class;

    .line 230
    sget-object v0, Lrr;->b:Ljava/lang/Class;

    const-string v1, "getWakeTime"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lrr;->c:Ljava/lang/reflect/Method;

    .line 231
    return-void
.end method

.method protected a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 242
    sput-boolean p1, Lrr;->d:Z

    .line 243
    return-void
.end method

.method public synthetic b(I)Lrt;
    .locals 1
    .parameter

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lrr;->a(I)Lrm;

    move-result-object v0

    return-object v0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 237
    sget-boolean v0, Lrr;->d:Z

    return v0
.end method
