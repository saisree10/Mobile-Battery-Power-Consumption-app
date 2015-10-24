.class public Laej;
.super Laem;
.source "CustomPurchaseObserver.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;

.field private e:Lcom/dianxinos/powermanager/billing/BillingService;

.field private f:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "CustomPurchaseObserver"

    sput-object v0, Laej;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;Lcom/dianxinos/powermanager/billing/BillingService;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p3}, Laem;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 30
    iput-object p1, p0, Laej;->f:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Laej;->c:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Laej;->e:Lcom/dianxinos/powermanager/billing/BillingService;

    .line 33
    iput-object p3, p0, Laej;->d:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Laej;->b:Z

    .line 50
    iget-object v0, p0, Laej;->e:Lcom/dianxinos/powermanager/billing/BillingService;

    invoke-virtual {v0, p1, p2}, Lcom/dianxinos/powermanager/billing/BillingService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Laej;->d:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Laej;->b:Z

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Laeh;Lakt;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 116
    sget-object v0, Lakt;->a:Lakt;

    if-ne p2, v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    sget-object v0, Lakt;->b:Lakt;

    if-ne p2, v0, :cond_1

    .line 121
    sget-object v0, Laej;->a:Ljava/lang/String;

    const-string v1, "user canceled purchase"

    invoke-static {v0, v1}, Laej;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iput-boolean v2, p0, Laej;->b:Z

    goto :goto_0

    .line 124
    :cond_1
    sget-object v0, Laej;->a:Ljava/lang/String;

    const-string v1, "purchase failed"

    invoke-static {v0, v1}, Laej;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iput-boolean v2, p0, Laej;->b:Z

    goto :goto_0
.end method

.method public a(Laei;Lakt;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 132
    sget-object v0, Lakt;->a:Lakt;

    if-ne p2, v0, :cond_0

    .line 133
    sget-object v0, Laej;->a:Ljava/lang/String;

    const-string v1, "completed RestoreTransactions request"

    invoke-static {v0, v1}, Laej;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    sget-object v0, Laej;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestoreTransactions error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laej;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Laks;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 75
    sget-object v0, Laej;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPurchaseStateChange() itemId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laej;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Laks;->a:Laks;

    if-ne p1, v0, :cond_1

    .line 78
    const-string v0, "dxpowermanagerpro"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Laej;->f:Landroid/app/Activity;

    invoke-static {v0}, Lazr;->a(Landroid/content/Context;)Lazr;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lazr;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {v0, v3}, Lazr;->b(Z)V

    .line 87
    iget-object v0, p0, Laej;->f:Landroid/app/Activity;

    sget-object v1, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v1, 0x7f0a01b2

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    :cond_0
    iget-object v0, p0, Laej;->d:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    :goto_0
    iput-boolean v3, p0, Laej;->b:Z

    .line 108
    return-void

    .line 95
    :cond_1
    sget-object v0, Laks;->c:Laks;

    if-eq p1, v0, :cond_2

    sget-object v0, Laks;->b:Laks;

    if-ne p1, v0, :cond_3

    .line 97
    :cond_2
    iget-object v0, p0, Laej;->f:Landroid/app/Activity;

    iget-object v1, p0, Laej;->f:Landroid/app/Activity;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a01b3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    :cond_3
    iget-object v0, p0, Laej;->f:Landroid/app/Activity;

    invoke-static {v0}, Larr;->a(Landroid/content/Context;)Larr;

    move-result-object v0

    invoke-virtual {v0}, Larr;->t()V

    .line 105
    iget-object v0, p0, Laej;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Laej;->a(ZI)V

    .line 59
    return-void
.end method

.method public a(ZI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 62
    sget-object v0, Laej;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laej;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Laej;->e:Lcom/dianxinos/powermanager/billing/BillingService;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/billing/BillingService;->b()Z

    .line 66
    iget-object v0, p0, Laej;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Laej;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Laej;->d:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Laej;->b:Z

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 41
    invoke-static {p0}, Laeo;->a(Laem;)V

    .line 42
    return-void
.end method
