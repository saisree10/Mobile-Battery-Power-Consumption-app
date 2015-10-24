.class public Lazl;
.super Ljava/lang/Object;
.source "DxSDKCaller.java"


# static fields
.field private static a:Lazl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lazl;

    invoke-direct {v0}, Lazl;-><init>()V

    sput-object v0, Lazl;->a:Lazl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a()Lazl;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lazl;->a:Lazl;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    .line 115
    :try_start_0
    const-string v0, "com.dianxinos.dxbs"

    invoke-static {v0}, Lacq;->e(Ljava/lang/String;)Lacn;

    move-result-object v0

    iget-boolean v0, v0, Lacn;->c:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "DxSDKCaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lazt;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public a(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 35
    if-nez p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    invoke-static {}, Lbag;->a()Lbag;

    move-result-object v1

    invoke-virtual {v1}, Lbag;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {}, Lbag;->a()Lbag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "am force-stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbag;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
