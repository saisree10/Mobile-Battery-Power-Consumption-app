.class Lbac;
.super Landroid/content/BroadcastReceiver;
.source "RateManager.java"


# instance fields
.field final synthetic a:Lazz;


# direct methods
.method private constructor <init>(Lazz;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lbac;->a:Lazz;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lazz;Lbaa;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lbac;-><init>(Lazz;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 20
    iget-object v0, p0, Lbac;->a:Lazz;

    invoke-static {v0}, Lazz;->a(Lazz;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "go_rate"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbac;->a:Lazz;

    invoke-static {v0}, Lazz;->b(Lazz;)Lbab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lbac;->a:Lazz;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click rate, type == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbac;->a:Lazz;

    invoke-static {v2}, Lazz;->b(Lazz;)Lbab;

    move-result-object v2

    invoke-virtual {v2}, Lbab;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazz;->a(Lazz;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lbac;->a:Lazz;

    iget-object v1, p0, Lbac;->a:Lazz;

    invoke-static {v1}, Lazz;->c(Lazz;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "had_rated"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    invoke-static {v0, v1}, Lazz;->a(Lazz;Z)Z

    .line 23
    sget-object v0, Lbaa;->a:[I

    iget-object v1, p0, Lbac;->a:Lazz;

    invoke-static {v1}, Lazz;->b(Lazz;)Lbab;

    move-result-object v1

    invoke-virtual {v1}, Lbab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p0, Lbac;->a:Lazz;

    invoke-static {v0}, Lazz;->d(Lazz;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "rdc"

    const-string v2, "rdoc"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v0, v1, v2, v3}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 30
    :pswitch_1
    iget-object v0, p0, Lbac;->a:Lazz;

    invoke-static {v0}, Lazz;->d(Lazz;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "rdc"

    const-string v2, "rdcsc"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v0, v1, v2, v3}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 35
    :pswitch_2
    iget-object v0, p0, Lbac;->a:Lazz;

    invoke-static {v0}, Lazz;->d(Lazz;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "rdc"

    const-string v2, "rdoac"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v0, v1, v2, v3}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 40
    :pswitch_3
    iget-object v0, p0, Lbac;->a:Lazz;

    invoke-static {v0}, Lazz;->d(Lazz;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "rdc"

    const-string v2, "rdcsac"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v0, v1, v2, v3}, Lbal;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)V

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
