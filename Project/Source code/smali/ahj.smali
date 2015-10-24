.class public Lahj;
.super Lahp;
.source "BluetoothCommand.java"


# instance fields
.field private a:Landroid/bluetooth/BluetoothAdapter;

.field private h:I

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lahp;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lahk;

    invoke-direct {v0, p0}, Lahk;-><init>(Lahj;)V

    iput-object v0, p0, Lahj;->i:Landroid/content/BroadcastReceiver;

    .line 26
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lahj;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 27
    iget-object v0, p0, Lahj;->a:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    sget-boolean v0, Lazw;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lahj;->f:Z

    .line 28
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lahj;)I
    .locals 1
    .parameter

    .prologue
    .line 16
    iget v0, p0, Lahj;->h:I

    return v0
.end method


# virtual methods
.method public a(Lahq;)V
    .locals 3
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lahj;->f:Z

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 45
    :cond_0
    iput-object p1, p0, Lahj;->e:Lahq;

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lahj;->d:Landroid/content/Context;

    iget-object v2, p0, Lahj;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lahj;->f:Z

    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 35
    :cond_0
    if-eqz p1, :cond_1

    .line 36
    iget-object v0, p0, Lahj;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lahj;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 82
    iget-boolean v1, p0, Lahj;->f:Z

    if-nez v1, :cond_0

    .line 92
    :goto_0
    return v0

    .line 85
    :cond_0
    iget-object v1, p0, Lahj;->a:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    iput v1, p0, Lahj;->h:I

    .line 86
    iget v1, p0, Lahj;->h:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    iget v1, p0, Lahj;->h:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 88
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lahj;->g:Z

    .line 92
    :goto_1
    iget-boolean v0, p0, Lahj;->g:Z

    goto :goto_0

    .line 90
    :cond_2
    iput-boolean v0, p0, Lahj;->g:Z

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lahj;->d:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "BluetoothCommand "

    return-object v0
.end method
