.class Lacr;
.super Landroid/content/BroadcastReceiver;
.source "AppManager.java"


# instance fields
.field final synthetic a:Lacq;


# direct methods
.method constructor <init>(Lacq;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lacr;->a:Lacq;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    :cond_0
    iget-object v0, p0, Lacr;->a:Lacq;

    invoke-static {v0, p1, p2}, Lacq;->a(Lacq;Landroid/content/Context;Landroid/content/Intent;)V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 83
    :cond_2
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    iget-object v0, p0, Lacr;->a:Lacq;

    invoke-static {v0}, Lacq;->a(Lacq;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 88
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    .line 89
    iget-object v0, p0, Lacr;->a:Lacq;

    invoke-virtual {v0, v1}, Lacq;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_4
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    .line 91
    iget-object v0, p0, Lacr;->a:Lacq;

    invoke-virtual {v0, v1}, Lacq;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_5
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    :cond_6
    iget-object v0, p0, Lacr;->a:Lacq;

    invoke-virtual {v0, v1}, Lacq;->j(Ljava/lang/String;)V

    goto :goto_0
.end method
