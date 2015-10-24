.class public Laca;
.super Landroid/os/Handler;
.source "ShortcutOnekeyActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Laca;->a:Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;Labz;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-direct {p0, p1}, Laca;-><init>(Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 180
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v0, p0, Laca;->a:Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->b(Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;)V

    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v0, p0, Laca;->a:Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->c(Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;)V

    .line 187
    iget-object v0, p0, Laca;->a:Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/ShortcutOnekeyActivity;->finish()V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
