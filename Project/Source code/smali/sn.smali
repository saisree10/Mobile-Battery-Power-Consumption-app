.class Lsn;
.super Ljava/lang/Object;
.source "AppInfoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lsm;


# direct methods
.method constructor <init>(Lsm;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lsn;->a:Lsm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 78
    :try_start_0
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "stat.AppInfoService"

    const-string v1, "Enter in HandleAppInfoJob!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v0, p0, Lsn;->a:Lsm;

    const-string v1, "exist"

    invoke-static {v0, v1}, Lsm;->a(Lsm;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    sget-boolean v1, Lud;->d:Z

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "stat.AppInfoService"

    const-string v2, "HandleAppInfoJob has exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
