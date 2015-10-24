.class Laxs;
.super Landroid/os/Handler;
.source "UpdateHelper.java"


# instance fields
.field final synthetic a:Laxn;


# direct methods
.method private constructor <init>(Laxn;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Laxs;->a:Laxn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laxn;Laxo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 493
    invoke-direct {p0, p1}, Laxs;-><init>(Laxn;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 496
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 522
    :goto_0
    return-void

    .line 498
    :pswitch_0
    iget-object v0, p0, Laxs;->a:Laxn;

    invoke-static {v0}, Laxn;->b(Laxn;)V

    goto :goto_0

    .line 502
    :pswitch_1
    iget-object v0, p0, Laxs;->a:Laxn;

    invoke-static {v0}, Laxn;->c(Laxn;)V

    goto :goto_0

    .line 509
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Laxu;

    .line 510
    iget-object v1, p0, Laxs;->a:Laxn;

    iget-object v2, v0, Laxu;->a:Ljava/lang/String;

    iget-object v3, v0, Laxu;->b:Ljava/lang/String;

    iget v4, v0, Laxu;->d:I

    iget-object v0, v0, Laxu;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Laxn;->a(Laxn;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 514
    :pswitch_3
    iget-object v0, p0, Laxs;->a:Laxn;

    invoke-static {v0}, Laxn;->d(Laxn;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0207

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 518
    :pswitch_4
    iget-object v0, p0, Laxs;->a:Laxn;

    invoke-static {v0}, Laxn;->d(Laxn;)Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0209

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
