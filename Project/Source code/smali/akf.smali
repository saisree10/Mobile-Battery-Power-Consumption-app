.class Lakf;
.super Ljava/lang/Object;
.source "FeedbackDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lake;

.field private b:Landroid/os/Message;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lake;Landroid/os/Message;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lakf;->a:Lake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lakf;->b:Landroid/os/Message;

    .line 65
    iput-object p3, p0, Lakf;->c:Ljava/lang/String;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lake;Landroid/os/Message;Ljava/lang/String;Lake;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lakf;-><init>(Lake;Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 72
    :try_start_0
    const-string v0, "com.dianxinos.dxbs"

    invoke-static {v0}, Lacq;->e(Ljava/lang/String;)Lacn;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lacn;->c()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lakf;->b:Landroid/os/Message;

    iget-object v2, p0, Lakf;->a:Lake;

    iget-object v2, v2, Lake;->a:Lcom/dianxinos/powermanager/feedback/FeedbackDialog;

    invoke-static {v2}, Lcom/dianxinos/powermanager/feedback/FeedbackDialog;->d(Lcom/dianxinos/powermanager/feedback/FeedbackDialog;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.dianxinos.dxbs"

    iget-object v4, p0, Lakf;->c:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3, v0, v4, v5}, Lsa;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    iget-object v0, p0, Lakf;->b:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 82
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_1
    iget-object v0, p0, Lakf;->b:Landroid/os/Message;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    iget-object v0, p0, Lakf;->b:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lakf;->b:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v0
.end method
