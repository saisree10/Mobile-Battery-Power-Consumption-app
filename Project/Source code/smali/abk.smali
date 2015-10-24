.class public Labk;
.super Landroid/os/Handler;
.source "PowerMgrService.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/PowerMgrService;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/PowerMgrService;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Labk;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/PowerMgrService;Labg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1}, Labk;-><init>(Lcom/dianxinos/powermanager/PowerMgrService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 142
    :pswitch_0
    iget-object v0, p0, Labk;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/PowerMgrService;->a()V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Labk;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrService;->b(Lcom/dianxinos/powermanager/PowerMgrService;)Laff;

    move-result-object v0

    invoke-virtual {v0}, Laff;->c()V

    .line 147
    iget-object v0, p0, Labk;->a:Lcom/dianxinos/powermanager/PowerMgrService;

    invoke-static {v0}, Lcom/dianxinos/powermanager/PowerMgrService;->c(Lcom/dianxinos/powermanager/PowerMgrService;)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
