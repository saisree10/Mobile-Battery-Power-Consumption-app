.class public Lajv;
.super Lajk;
.source "WifiOpt.java"


# static fields
.field public static a:I


# instance fields
.field private p:Z

.field private q:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    sput v0, Lajv;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lajk;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;)V

    .line 29
    iput-boolean p4, p0, Lajv;->p:Z

    .line 30
    const/4 v0, 0x1

    sput v0, Lajv;->a:I

    .line 31
    iget-boolean v0, p0, Lajv;->p:Z

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lajv;->j:I

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lajv;->j:I

    goto :goto_0
.end method

.method private h()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lajv;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 108
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 110
    :cond_0
    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const v6, 0x7f0a031e

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    sget-boolean v0, Lazw;->l:Z

    iput-boolean v0, p0, Lajv;->o:Z

    .line 41
    iget-boolean v0, p0, Lajv;->o:Z

    if-nez v0, :cond_1

    .line 42
    iput v3, p0, Lajv;->l:I

    .line 43
    iput-boolean v2, p0, Lajv;->n:Z

    .line 44
    iput v2, p0, Lajv;->j:I

    iput v2, p0, Lajv;->k:I

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lajv;->c:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lajv;->q:Landroid/net/wifi/WifiManager;

    .line 49
    iget-boolean v0, p0, Lajv;->p:Z

    if-eqz v0, :cond_7

    .line 50
    iput v2, p0, Lajv;->k:I

    .line 51
    iget-object v0, p0, Lajv;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    sget-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 60
    :goto_1
    sget v1, Lajv;->a:I

    if-ne v1, v3, :cond_5

    .line 61
    iget-object v1, p0, Lajv;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_2

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_4

    .line 68
    :cond_2
    iput v4, p0, Lajv;->l:I

    .line 69
    iget-object v0, p0, Lajv;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a031c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajv;->m:Ljava/lang/String;

    .line 70
    sput v4, Lajv;->a:I

    .line 71
    iput-boolean v3, p0, Lajv;->n:Z

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    goto :goto_1

    .line 74
    :cond_4
    sput v5, Lajv;->a:I

    .line 75
    iput-boolean v2, p0, Lajv;->n:Z

    goto :goto_0

    .line 77
    :cond_5
    sget v0, Lajv;->a:I

    if-ne v0, v4, :cond_6

    .line 78
    invoke-direct {p0}, Lajv;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iput v3, p0, Lajv;->l:I

    .line 80
    iget-object v0, p0, Lajv;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajv;->m:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_6
    iput-boolean v2, p0, Lajv;->n:Z

    goto :goto_0

    .line 88
    :cond_7
    sget v0, Lajv;->a:I

    if-ne v0, v4, :cond_8

    .line 89
    iput-boolean v2, p0, Lajv;->n:Z

    goto :goto_0

    .line 91
    :cond_8
    invoke-direct {p0}, Lajv;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 92
    iput v5, p0, Lajv;->l:I

    .line 93
    iget-object v0, p0, Lajv;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a031d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajv;->m:Ljava/lang/String;

    .line 99
    :goto_2
    iput-boolean v3, p0, Lajv;->n:Z

    goto/16 :goto_0

    .line 95
    :cond_9
    iput v3, p0, Lajv;->l:I

    .line 96
    iget-object v0, p0, Lajv;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajv;->m:Ljava/lang/String;

    .line 97
    iget v0, p0, Lajv;->j:I

    iput v0, p0, Lajv;->k:I

    goto :goto_2
.end method

.method public b()V
    .locals 6

    .prologue
    const v5, 0x7f0a031e

    const/4 v4, 0x4

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lajv;->q:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 119
    iget-boolean v0, p0, Lajv;->p:Z

    if-eqz v0, :cond_1

    .line 120
    iget-boolean v0, p0, Lajv;->n:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lajv;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 122
    iget-object v0, p0, Lajv;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajv;->m:Ljava/lang/String;

    .line 123
    iget v0, p0, Lajv;->j:I

    iput v0, p0, Lajv;->k:I

    .line 124
    iput v3, p0, Lajv;->l:I

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget v0, p0, Lajv;->l:I

    if-ne v0, v1, :cond_2

    .line 128
    iput v4, p0, Lajv;->l:I

    .line 130
    iget-object v0, p0, Lajv;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 131
    iget-object v0, p0, Lajv;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajv;->m:Ljava/lang/String;

    .line 132
    iget v0, p0, Lajv;->j:I

    iput v0, p0, Lajv;->k:I

    goto :goto_0

    .line 133
    :cond_2
    iget v0, p0, Lajv;->l:I

    if-ne v0, v4, :cond_0

    .line 134
    iput v1, p0, Lajv;->l:I

    .line 136
    iget-object v0, p0, Lajv;->q:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 137
    iget-object v0, p0, Lajv;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a031d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lajv;->m:Ljava/lang/String;

    .line 138
    iput v2, p0, Lajv;->k:I

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lajv;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a031b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    sget v0, Lajv;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    .line 154
    :cond_0
    iget v0, p0, Lajv;->l:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lajv;->c:Landroid/content/Context;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a0349

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lajv;->c:Landroid/content/Context;

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
    .line 163
    invoke-virtual {p0}, Lajv;->e()V

    .line 164
    return-void
.end method
