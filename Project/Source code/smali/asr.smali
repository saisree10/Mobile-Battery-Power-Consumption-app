.class public Lasr;
.super Landroid/os/Handler;
.source "SmartSettingsActivity.java"


# instance fields
.field final synthetic a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lasr;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;Lasl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lasr;-><init>(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 370
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->h()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 371
    iget-object v0, p0, Lasr;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-static {v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->f(Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->f()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 379
    iget-object v0, p0, Lasr;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    iget-object v1, p0, Lasr;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0191

    invoke-virtual {v1, v2}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 387
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->g()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 388
    iget-object v0, p0, Lasr;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    invoke-virtual {v0}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getActivity()Ln;

    move-result-object v0

    iget-object v1, p0, Lasr;->a:Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;

    sget-object v2, Lly;->i:Lcom/dianxinos/dxbs/R$string;

    const v2, 0x7f0a0194

    invoke-virtual {v1, v2}, Lcom/dianxinos/powermanager/smart/SmartSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
