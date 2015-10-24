.class public Laix;
.super Lajk;
.source "BluetoothOpt.java"


# static fields
.field public static a:I


# instance fields
.field private p:Landroid/bluetooth/BluetoothAdapter;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput v0, Laix;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lajk;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    .line 28
    const/4 v0, 0x1

    sput v0, Laix;->a:I

    .line 29
    iput-boolean p4, p0, Laix;->q:Z

    .line 30
    iget-boolean v0, p0, Laix;->q:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Laix;->j:I

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Laix;->j:I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const v5, 0x7f0a0322

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Laix;->p:Landroid/bluetooth/BluetoothAdapter;

    .line 40
    iget-object v0, p0, Laix;->p:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    sget-boolean v0, Lazw;->b:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Laix;->o:Z

    .line 41
    iget-boolean v0, p0, Laix;->o:Z

    if-nez v0, :cond_2

    .line 42
    iput v1, p0, Laix;->l:I

    .line 43
    iput-boolean v2, p0, Laix;->n:Z

    .line 44
    iput v2, p0, Laix;->j:I

    iput v2, p0, Laix;->k:I

    .line 88
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 40
    goto :goto_0

    .line 48
    :cond_2
    iget-boolean v0, p0, Laix;->q:Z

    if-eqz v0, :cond_6

    .line 49
    iput v2, p0, Laix;->k:I

    .line 50
    sget v0, Laix;->a:I

    if-ne v0, v1, :cond_4

    .line 51
    iget-object v0, p0, Laix;->p:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Laix;->p:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 52
    iput v3, p0, Laix;->l:I

    .line 53
    iget-object v0, p0, Laix;->c:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0320

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laix;->m:Ljava/lang/String;

    .line 55
    sput v3, Laix;->a:I

    .line 56
    iput-boolean v1, p0, Laix;->n:Z

    goto :goto_1

    .line 58
    :cond_3
    sput v4, Laix;->a:I

    .line 59
    iput-boolean v2, p0, Laix;->n:Z

    goto :goto_1

    .line 61
    :cond_4
    sget v0, Laix;->a:I

    if-ne v0, v3, :cond_5

    .line 62
    iget-object v0, p0, Laix;->p:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iput v1, p0, Laix;->l:I

    .line 64
    iget-object v0, p0, Laix;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laix;->m:Ljava/lang/String;

    goto :goto_1

    .line 67
    :cond_5
    iput-boolean v2, p0, Laix;->n:Z

    goto :goto_1

    .line 72
    :cond_6
    sget v0, Laix;->a:I

    if-ne v0, v3, :cond_7

    .line 73
    iput-boolean v2, p0, Laix;->n:Z

    goto :goto_1

    .line 75
    :cond_7
    iget-object v0, p0, Laix;->p:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    iput v4, p0, Laix;->l:I

    .line 77
    iget-object v0, p0, Laix;->c:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0321

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laix;->m:Ljava/lang/String;

    .line 83
    :goto_2
    iput-boolean v1, p0, Laix;->n:Z

    goto :goto_1

    .line 79
    :cond_8
    iput v1, p0, Laix;->l:I

    .line 80
    iget-object v0, p0, Laix;->c:Landroid/content/Context;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laix;->m:Ljava/lang/String;

    .line 81
    iget v0, p0, Laix;->j:I

    iput v0, p0, Laix;->k:I

    goto :goto_2
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 92
    iget-object v0, p0, Laix;->p:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 93
    iget-boolean v0, p0, Laix;->q:Z

    if-eqz v0, :cond_1

    .line 94
    iget-boolean v0, p0, Laix;->n:Z

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    iget-object v0, p0, Laix;->p:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 97
    iget-object v0, p0, Laix;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0322

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laix;->m:Ljava/lang/String;

    .line 98
    iget v0, p0, Laix;->j:I

    iput v0, p0, Laix;->k:I

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Laix;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 106
    :cond_1
    iget v0, p0, Laix;->l:I

    if-ne v0, v1, :cond_2

    .line 108
    :try_start_1
    iget-object v0, p0, Laix;->p:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 109
    iget-object v0, p0, Laix;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0322

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laix;->m:Ljava/lang/String;

    .line 110
    iget v0, p0, Laix;->j:I

    iput v0, p0, Laix;->k:I

    .line 111
    const/4 v0, 0x4

    iput v0, p0, Laix;->l:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 116
    :cond_2
    iget v0, p0, Laix;->l:I

    if-ne v0, v2, :cond_0

    .line 118
    :try_start_2
    iget-object v0, p0, Laix;->p:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 119
    iget-object v0, p0, Laix;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0321

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laix;->m:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Laix;->k:I

    .line 121
    const/4 v0, 0x3

    iput v0, p0, Laix;->l:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 122
    :catch_2
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Laix;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a031f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    sget v0, Laix;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 141
    :cond_0
    iget v0, p0, Laix;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 142
    iget-object v0, p0, Laix;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0349

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Laix;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0345

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    invoke-virtual {p0}, Laix;->e()V

    .line 151
    return-void
.end method
