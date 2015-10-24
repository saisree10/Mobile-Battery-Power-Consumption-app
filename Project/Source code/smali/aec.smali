.class public Laec;
.super Ljava/lang/Object;
.source "BillingHelper.java"

# interfaces
.implements Lakp;


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Lcom/dianxinos/powermanager/billing/BillingService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sput-object p1, Laec;->a:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/dianxinos/powermanager/billing/BillingService;

    invoke-direct {v0}, Lcom/dianxinos/powermanager/billing/BillingService;-><init>()V

    iput-object v0, p0, Laec;->b:Lcom/dianxinos/powermanager/billing/BillingService;

    .line 30
    iget-object v0, p0, Laec;->b:Lcom/dianxinos/powermanager/billing/BillingService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dianxinos/powermanager/billing/BillingService;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 115
    const-string v0, "%lang%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%region%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 117
    const-string v1, "%lang%"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 118
    const-string v2, "%region%"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 120
    :cond_1
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Laec;->b:Lcom/dianxinos/powermanager/billing/BillingService;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/billing/BillingService;->b()Z

    .line 54
    return-void
.end method

.method public a(Landroid/content/Context;Laej;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p2}, Laej;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    sget-object v0, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v0, 0x7f0a01b4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p2}, Laej;->b()V

    .line 46
    iget-object v0, p0, Laec;->b:Lcom/dianxinos/powermanager/billing/BillingService;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/billing/BillingService;->a()Z

    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x4

    invoke-virtual {p2, v1, v0}, Laej;->a(ZI)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0}, Laec;->a()V

    .line 70
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 88
    sget-object v0, Laec;->a:Landroid/content/Context;

    invoke-static {v0}, Laek;->a(Landroid/content/Context;)Laek;

    move-result-object v0

    .line 89
    const-string v1, "dxpowermanagerpro"

    invoke-virtual {v0, v1}, Laek;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Laec;->c()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Laec;->b:Lcom/dianxinos/powermanager/billing/BillingService;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Laec;->b:Lcom/dianxinos/powermanager/billing/BillingService;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/billing/BillingService;->c()V

    .line 107
    :cond_0
    return-void
.end method

.method public g()Lcom/dianxinos/powermanager/billing/BillingService;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Laec;->b:Lcom/dianxinos/powermanager/billing/BillingService;

    return-object v0
.end method
