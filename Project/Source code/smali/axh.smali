.class public Laxh;
.super Landroid/os/Handler;
.source "DownloadActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/update/DownloadActivity;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/update/DownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Laxh;->a:Lcom/dianxinos/powermanager/update/DownloadActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/update/DownloadActivity;Laxf;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Laxh;-><init>(Lcom/dianxinos/powermanager/update/DownloadActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 173
    :pswitch_0
    iget-object v0, p0, Laxh;->a:Lcom/dianxinos/powermanager/update/DownloadActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->finish()V

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Laxh;->a:Lcom/dianxinos/powermanager/update/DownloadActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/update/DownloadActivity;->b(Lcom/dianxinos/powermanager/update/DownloadActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
